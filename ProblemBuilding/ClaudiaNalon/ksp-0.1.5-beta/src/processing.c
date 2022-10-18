#include <stdio.h>
#include <pthread.h>
#include <math.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"


#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern pthread_mutex_t mutexprops;
extern int diamond_restricted_res;

extern void print_deleted_clauses (void);
extern void print_clauses (void);
extern void print_clause (tclause *c);
extern void delete_clause_prop (hml_pclauses **set,tclause *c);
extern void delete_clause_modal (hml_mclauses **set, tclause *c);
extern clauseslist *delete_clause_list(tclause *c, clauseslist *l);
extern void insert_clause_deleted (tclause *clause);

extern int clause_in_list(tclause *c, clauseslist *l);

extern void insert_clause_set (tclause **clause, int type, int set);
extern void delete_clause (tclause *clause);
extern void delete_clause_all(int number);
extern clauseslist *remove_clause_list (tclause *c, clauseslist *l);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);

extern tclause *get_clause (int clause);
extern literalslist *simplify_clause (literalslist *l);
extern void print_out (char *);

extern int print_chosen;

extern int modal_level_elimination (void);
extern int pure_literal_elimination (void);
extern int modal_level_ple (void);
extern int unit_resolution (hml_pclauses **);

void forward_subsumes (tclause *clause, hml_pclauses **set);
int forward_subsumed (tclause **clause, hml_pclauses *set);
void backward_subsumes (tclause *clause, hml_pclauses **set);
int backward_subsumed (tclause **clause, hml_pclauses *set);

extern void do_lres (int clause);
extern void do_gen3 (int clause);
extern void do_gen1 (int clause);
extern void do_ires (int clause);
extern void do_mod_ordires (int clause);

extern pthread_mutex_t mutexallclauses;

extern hml_pclauses *l_sos;
extern hml_pclauses *l_usable;
extern hml_pclauses *i_sos;
extern hml_pclauses *i_usable;

extern hml_mclauses *m_sos;
extern hml_mclauses *m_usable;

extern int print_generated;
extern int cycles;
extern int ires;
extern int global;
extern int modal_positive;
extern int modal_negative;
extern int strong_modal_positive;
extern int strong_modal_negative;
extern int literal_selection;
extern int numclause;
extern int satmle;
extern int mle;
extern int ple;
extern int ml_ple;
extern int unit;
extern int lhs_unit;
extern int forward_subsumption;
extern int backward_subsumption;
extern int sos_subsumption;
extern int order_level;
extern int clause_selection;
extern int maxproof;
extern int numproofs;
extern int numsat;
extern int numpropagateunique;
extern int mdepth;
extern int propagate_box;
extern int propagate_dia;
extern int interleave_ires;

void move_clause_modal(tclause *c, hml_mclauses **set_out, hml_mclauses **set_in) {

  hml_mclauses *hmlm = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  pthread_mutex_lock(&mutexprops);
  HASH_FIND(hml,*set_out,&(c->modal_level),sizeof(int),hmlm);
    if (hmlm != NULL) {
      HASH_FIND(hid,hmlm->id,&(c->agent),sizeof(int),hag);
      if (hag != NULL) {
	HASH_FIND(htype,hag->type,&(c->type),sizeof(int),htc);
	if (htc != NULL) {
	  HASH_FIND(hmax,htc->lit,&(c->max_literal),sizeof(int),hmaxlit);
	  if (hmaxlit != NULL) {
	    hmaxlit->list = remove_clause_list(c,hmaxlit->list);
	    if (hmaxlit->list == NULL) {
	      HASH_DELETE(hmax,htc->lit,hmaxlit);
	      free(hmaxlit);
	      hmaxlit = NULL;
	    }
	  }
	  if (htc->lit == NULL) {
	    HASH_DELETE(htype,hag->type,htc);
	    free(htc);
	    htc = NULL;
	  }
	}
	
	if (hag->type == NULL) {
	  HASH_DELETE(hid,hmlm->id,hag);
	  free(hag);
	  hag = NULL;
	}
      }
      if (hmlm->id == NULL) {
	HASH_DELETE(hml,*set_out,hmlm);
	free(hmlm);
	hmlm = NULL;
      }
    }
    
    HASH_FIND(hml,*set_in,&(c->modal_level),sizeof(int),hmlm);
    if (hmlm == NULL) {
      hml_mclauses *new1 = malloc(sizeof(*new1));
      new1->ml = c->modal_level;
      new1->id = NULL;
      HASH_ADD(hml,*set_in,ml,sizeof(int),new1);
      hmlm = new1;
    }
    HASH_FIND(hid,hmlm->id,&(c->agent),sizeof(int),hag);
    if (hag == NULL) {
      hagentclauses *new2 = malloc(sizeof(*new2));
      new2->id = c->agent;
      new2->type = NULL;
      HASH_ADD(hid,hmlm->id,id,sizeof(int),new2);
      hag = new2;
    }
    HASH_FIND(htype,hag->type,&(c->type),sizeof(int),htc);
    if (htc == NULL) {
      htypeclauses *new3 = malloc(sizeof(*new3));
      new3->type = c->type;
      new3->lit = NULL;
      HASH_ADD(htype,hag->type,type,sizeof(int),new3);
      htc = new3;
    }
    HASH_FIND(hmax,htc->lit,&(c->max_literal),sizeof(int),hmaxlit);
    if (hmaxlit == NULL) {
      hmaxlitclauses *new4 = malloc(sizeof(*new4));
      new4->max = c->max_literal;
      new4->list = NULL;
      HASH_ADD(hmax,htc->lit,max,sizeof(int),new4);
      hmaxlit = new4;
    }    
    clauseslist *new = malloc(sizeof(clauseslist));
    new->clause_number = c->number;
    new->next = hmaxlit->list;
    hmaxlit->list = new;
    pthread_mutex_unlock(&mutexprops);
}

void move_clause_propositional(tclause *c, hml_pclauses **set_out, hml_pclauses **set_in) {
  
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;
  
  pthread_mutex_lock(&mutexprops);
  HASH_FIND(hml,*set_out,&(c->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    HASH_FIND(hmax,hmlp->max,&(c->max_literal),sizeof(int),hmc);
    if (hmc != NULL) {
      HASH_FIND(hsize,hmc->size,&(c->size),sizeof(int),hsc);
      if (hsc != NULL) {
	hsc->list = remove_clause_list(c,hsc->list);
	if (hsc->list == NULL) {
	  HASH_DELETE(hsize,hmc->size,hsc);
	  free(hsc);
	  hsc = NULL;
	}
      }
      if (hmc->size == NULL) {
	HASH_DELETE(hmax,hmlp->max,hmc);
	free(hmc);
	hmc = NULL;
      }
    }
    if (hmlp->max == NULL) {
      HASH_DELETE(hml,*set_out,hmlp);
      free(hmlp);
      hmlp = NULL;
    }
  }

  HASH_FIND(hml,*set_in,&(c->modal_level),sizeof(int),hmlp);
  if (hmlp == NULL) {
    hml_pclauses *new1 = malloc(sizeof(*new1));
    new1->ml = c->modal_level;
    new1->list_selection = NULL;
    new1->last_selection = NULL;
    new1->max = NULL;
    HASH_ADD(hml,*set_in,ml,sizeof(int),new1);
    hmlp = new1;
  }
  HASH_FIND(hmax,hmlp->max,&(c->max_literal),sizeof(int),hmc);
  if (hmc == NULL) {
    hmaxclauses *new2 = malloc(sizeof(*new2));
    new2->max = c->max_literal;
    new2->size = NULL;
    HASH_ADD(hmax,hmlp->max,max,sizeof(int),new2);
    hmc = new2;
  }
  HASH_FIND(hsize,hmc->size,&(c->size),sizeof(int),hsc);
  if (hsc == NULL) {
    hsizeclauses *new3 = malloc(sizeof(*new3));
    new3->size = c->size;
    new3->list = NULL;
    HASH_ADD(hsize,hmc->size,size,sizeof(int),new3);
    hsc = new3;
  }

  clauseslist *new = malloc(sizeof(clauseslist));
  new->clause_number = c->number;
  new->next = hsc->list;
  hsc->list = new;
  pthread_mutex_unlock(&mutexprops);
}

int check_in_sos(tclause *clause, hml_pclauses **set) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  int in = 0;
  if (clause != NULL) {
    HASH_FIND(hml,(*set),&(clause->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      HASH_FIND(hmax,hmlp->max,&(clause->max_literal),sizeof(int),hmc);
      if (hmc != NULL) {
	HASH_FIND(hsize,hmc->size,&(clause->size),sizeof(int),hsc);
	if (hsc != NULL) {
	  clauseslist *aux = hsc->list;
	  while (!in && aux != NULL) {
	    if (aux->clause_number == clause->number) in = 1;
	    else aux = aux->next;
	  }
	}
      }
    }
  }
  return in;
}


int chosen (hml_pclauses **hmlp) {
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  pthread_mutex_lock(&mutexprops);
  if ((*hmlp) != NULL &&
      (*hmlp)->max != NULL &&
      (*hmlp)->max->size != NULL &&
      (*hmlp)->max->size->list != NULL) {
    int clause = (*hmlp)->max->size->list->clause_number;
    int size_clause = (*hmlp)->max->size->size;
    int max_lit_clause = (*hmlp)->max->max;
    if (clause_selection == SHORTEST) {
      for (hmc=(*hmlp)->max; hmc != NULL; hmc = hmc->hmax.next) {
	for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	  if (hsc->size < size_clause) {
	    size_clause = hsc->size;
	    clause = hsc->list->clause_number;
	  }
      }
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    else if (clause_selection == SMALLEST) {
      for (hmc=(*hmlp)->max; hmc != NULL; hmc = hmc->hmax.next) {
	if (hmc->max < max_lit_clause) {
	  max_lit_clause = hmc->max;
	}
      }
      HASH_FIND(hmax,(*hmlp)->max,&(max_lit_clause),sizeof(int),hmc);
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	if (hsc->size < size_clause) {
	  size_clause = hsc->size;
	  clause = hsc->list->clause_number;
	}
    
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    else if (clause_selection == GREATEST) {
      for (hmc=(*hmlp)->max; hmc != NULL; hmc = hmc->hmax.next) {
	if (hmc->max > max_lit_clause) {
	  max_lit_clause = hmc->max;
	}
      }
      HASH_FIND(hmax,(*hmlp)->max,&(max_lit_clause),sizeof(int),hmc);
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	if (hsc->size < size_clause) {
	  size_clause = hsc->size;
	  clause = hsc->list->clause_number;
	}
    
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    else if (clause_selection == NEWEST || clause_selection == OLDEST) {
      clauseslist *aux = (*hmlp)->list_selection;
      if (aux != NULL) {
	tclause *clause = get_clause(aux->clause_number);
	int in_sos = check_in_sos(clause,hmlp);
	while (aux!= NULL && (clause == NULL || !in_sos)) { // that means it is not in the sos, so it was deleted, retired, or has already been processed (i.e. it is in the usable)
	  clauseslist *aux2 = aux;
	  aux = aux->next;
	  free(aux2);
	  clause = get_clause(aux->clause_number);
	  in_sos = check_in_sos(clause,hmlp);
	}
	if (aux != NULL) {
	  (*hmlp)->list_selection = aux->next;
	  free(aux);
	}
	if ((*hmlp)->list_selection == NULL) {
	  if ((*hmlp)->last_selection != NULL) {
	    (*hmlp)->last_selection = NULL;
	  }
	}
	if (clause != NULL) {
	  pthread_mutex_unlock(&mutexprops);
	  return clause->number;
	}
      }
    }
  }
  pthread_mutex_unlock(&mutexprops);
  return 0;
}

int chosen_level (hml_pclauses **hmlp) {
  hmaxclauses *hmax = (*hmlp)->max;
  hmaxclauses *hmc = hmax;
  hsizeclauses *hsc = NULL; 

  pthread_mutex_lock(&mutexprops);
  if (hmc != NULL &&
      hmc->size != NULL &&
      hmc->size->list != NULL) {
    int clause = hmc->size->list->clause_number;
    int size_clause = hmc->size->size;
    int max_lit_clause = hmc->max;
    if (clause_selection == SHORTEST) {
	for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	  if (hsc->size < size_clause) {
	    size_clause = hsc->size;
	    clause = hsc->list->clause_number;
	  }
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    else if (clause_selection == SMALLEST) {
      for (hmc=hmax; hmc != NULL; hmc = hmc->hmax.next) {
	if (hmc->max < max_lit_clause) {
	  max_lit_clause = hmc->max;
	}
      }
      HASH_FIND(hmax,hmax,&(max_lit_clause),sizeof(int),hmc);
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	if (hsc->size < size_clause) {
	  size_clause = hsc->size;
	  clause = hsc->list->clause_number;
	}
    
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    else if (clause_selection == GREATEST) {
      for (hmc=hmax; hmc != NULL; hmc = hmc->hmax.next) {
	if (hmc->max > max_lit_clause) {
	  max_lit_clause = hmc->max;
	}
      }
      HASH_FIND(hmax,hmax,&(max_lit_clause),sizeof(int),hmc);
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next)
	if (hsc->size < size_clause) {
	  size_clause = hsc->size;
	  clause = hsc->list->clause_number;
	}
      
      pthread_mutex_unlock(&mutexprops);
      return clause;
    }
    /*    else if (clause_selection == NEWEST || clause_selection == OLDEST) {
      clauseslist *aux = (*hmlp)->list_selection;
      if (aux != NULL) {
	tclause *clause = get_clause(aux->clause_number);
	int in_sos = check_in_sos(clause);
	while (aux!= NULL && (clause == NULL || !in_sos)) { // that means it is not in the allclauses hash, so it was deleted
	  clauseslist *aux2 = aux;
	  aux = aux->next;
	  free(aux2);
	  clause = get_clause(aux->clause_number);
	  in_sos = check_in_sos(clause);
	}
	if (aux != NULL) {
	  (*hmlp)->list_selection = aux->next;
	  free(aux);
	}
	if ((*hmlp)->list_selection == NULL) {
	  if ((*hmlp)->last_selection != NULL) {
	    (*hmlp)->last_selection = NULL;
	  }
	}
	if (clause != NULL) {
	  pthread_mutex_unlock(&mutexprops);
	  return clause->number;
	}
      }
      } */
  }
  pthread_mutex_unlock(&mutexprops);
  return 0;  
}


void check_last_level (void) {
  // find the deepest active modal level in usable
  hml_pclauses *hmlp = l_usable;
  int ml = 0;
  
  for (hmlp = l_usable; hmlp != NULL; hmlp=hmlp->hml.next)
    if (hmlp->ml > ml) {
      ml = hmlp->ml;
    }
  HASH_FIND(hml,l_sos,&(ml),sizeof(int),hmlp);
  if (hmlp == NULL) {
    HASH_FIND(hml,l_usable,&(ml),sizeof(int),hmlp);
    if (hmlp != NULL) {
      hmaxclauses *hmc, *hmcaux;
      hsizeclauses *hsc, *hscaux;
      HASH_ITER(hmax,hmlp->max,hmc,hmcaux) {
	HASH_ITER(hsize,hmc->size,hsc,hscaux) {
	  clauseslist *l = hsc->list;
	  while (l != NULL) {
	    tclause *clause = get_clause(l->clause_number);
	    l = l->next;
	    justification *deleted = malloc(sizeof(justification));
	    deleted->rule = SAT;
	    deleted->parents = NULL;
	    deleted->literals = NULL;
	    clause->deleted = deleted;
	    hsc->list = delete_clause_list(clause,hsc->list);
	    pthread_mutex_lock (&mutexallclauses);
	    delete_clause_all(clause->number);
	    pthread_mutex_unlock (&mutexallclauses);
	    insert_clause_deleted(clause);
	    numsat++;
	  }
	  if (hsc->list == NULL) {
	    HASH_DELETE(hsize,hmc->size,hsc);
	    free(hsc);
	    hsc = NULL;
	  }
	}
	if (hmc->size == NULL) {
	  HASH_DELETE(hmax,hmlp->max,hmc);
	  free(hmc);
	  hmc = NULL;
	}
      }
      if (hmlp->max == NULL) {
	HASH_DELETE(hml,l_usable,hmlp);
	free(hmlp);
	hmlp = NULL;
      }
    }
    
    ml = ml - 1;
    
    hml_mclauses *aux = NULL;
    hagentclauses *hag = NULL, *auxhag = NULL;
    htypeclauses *htc = NULL, *auxhtc = NULL;
    hmaxlitclauses *hmaxlit = NULL, *auxmaxlit = NULL;
    
    HASH_FIND(hml,m_sos,&(ml),sizeof(int),aux);
    if (aux != NULL) {
      HASH_ITER(hid,aux->id,hag,auxhag) {
	HASH_ITER(htype,hag->type,htc,auxhtc) {
	  HASH_ITER(hmax,htc->lit,hmaxlit,auxmaxlit) {
	    clauseslist *l = hmaxlit->list;
	    while (l != NULL) {
	      tclause *clause = get_clause(l->clause_number);
	      l = l->next;
	      justification *deleted = malloc(sizeof(justification));
	      deleted->rule = SAT;
	      deleted->parents = NULL;
	      deleted->literals = NULL;
	      clause->deleted = deleted;
	      hmaxlit->list = delete_clause_list(clause,hmaxlit->list);
	      pthread_mutex_lock (&mutexallclauses);
	      delete_clause_all(clause->number);
	      pthread_mutex_unlock (&mutexallclauses);
	      insert_clause_deleted(clause);
	      numsat++;
	    }
	    if (hmaxlit->list == NULL) {
	      HASH_DELETE(hmax,htc->lit,hmaxlit);
	      free(hmaxlit);
	      hmaxlit = NULL;
	    }
	  }
	  if (htc->lit == NULL) {
	    HASH_DELETE(htype,hag->type,htc);
	    free(htc);
	    htc = NULL;
	  }
	}	
	if (hag->type == NULL) {
	  HASH_DELETE(hid,aux->id,hag);
	  free(hag);
	  hag = NULL;
	}
      }
      if (aux->id == NULL) {
	HASH_DELETE(hml,m_sos,aux);
	free(aux);
	aux = NULL;
      }
    }

    HASH_FIND(hml,m_usable,&(ml),sizeof(int),aux);
    if (aux != NULL) {
      HASH_ITER(hid,aux->id,hag,auxhag) {
	HASH_ITER(htype,hag->type,htc,auxhtc) {
	  HASH_ITER(hmax,htc->lit,hmaxlit,auxmaxlit) {
	    clauseslist *l = hmaxlit->list;
	    while (l != NULL) {
	      tclause *clause = get_clause(l->clause_number);
	      l = l->next;
	      justification *deleted = malloc(sizeof(justification));
	      deleted->rule = SAT;
	      deleted->parents = NULL;
	      deleted->literals = NULL;
	      clause->deleted = deleted;
	      hmaxlit->list = delete_clause_list(clause,hmaxlit->list);
	      pthread_mutex_lock (&mutexallclauses);
	      delete_clause_all(clause->number);
	      pthread_mutex_unlock (&mutexallclauses);
	      insert_clause_deleted(clause);
	      numsat++;
	    }
	    if (hmaxlit->list == NULL) {
	      HASH_DELETE(hmax,htc->lit,hmaxlit);
	      free(hmaxlit);
	      hmaxlit = NULL;
	    }
	  }
	  if (htc->lit == NULL) {
	    HASH_DELETE(htype,hag->type,htc);
	    free(htc);
	    htc = NULL;
	  }
	}	
	if (hag->type == NULL) {
	  HASH_DELETE(hid,aux->id,hag);
	  free(hag);
	  hag = NULL;
	}
      }
      if (aux->id == NULL) {
	HASH_DELETE(hml,m_usable,aux);
	free(aux);
	aux = NULL;
      }
    }
  }
}

int do_initial (int cycle) {
  
  while (i_sos != NULL && numproofs < maxproof)  {
    hml_pclauses *hmlp;
    cycle++;
    int try = 1;
    int old_lhs = lhs_unit;
    lhs_unit = OFF;
    
    while (try) {
      if (unit == ON) 
	try = unit_resolution(&i_sos);
      else  try = 0;
      if (ple == ON)
	pure_literal_elimination();
      if (ml_ple == ON)
	modal_level_ple();
    }

    lhs_unit = old_lhs;
    
    hmlp = i_sos;
    while (numproofs < maxproof && hmlp != NULL ) {
      if (hmlp != NULL) {
	int clause = chosen(&hmlp);
	hmlp = hmlp->hml.next;
	int subsumed = 0;
	tclause *c = get_clause(clause);
      
	if (forward_subsumption == ON) {
	  subsumed = forward_subsumed(&c,i_usable);
	  if (!subsumed)
	    forward_subsumes(c,&i_usable);
	}
	if (!subsumed) {
	  if (backward_subsumption == ON) {
	    backward_subsumes(c,&i_usable);
	    subsumed = backward_subsumed(&c,i_usable);
	  }
	  if (!subsumed) {
	    do_ires(clause);
	    move_clause_propositional(c,&i_sos,&i_usable);
	  }
	}
      }
    }
  }
  print_out("IRES");
  return cycle;
}

void propagate_unique_dia_ml (void) {

  hml_mclauses *aux = NULL;
  hagentclauses *hag = NULL;

  aux = m_sos;
  while (aux != NULL) {
    hag = aux->id;
    aux = aux->hml.next;
    while (hag != NULL) {
      htypeclauses *htcneg = NULL;
      if (hag->type->type == MPOSITIVE) {
	htcneg = hag->type->htype.next;
      }
      else {
	htcneg = hag->type;
      }

      hag = hag->hid.next;
      if (htcneg != NULL) {

	hmaxlitclauses *auxlit = htcneg->lit;

	int size = 0;
	while (auxlit != NULL) {
	  clauseslist *auxclauses = auxlit->list;
	  while (auxclauses != NULL) {
	    size++;
	    auxclauses = auxclauses->next;
	  }
	  auxlit = auxlit->hmax.next;
	}
	
	if (size == 1) { // || diamond_restricted_res == ON) {

	  int clause = htcneg->lit->list->clause_number;
	  tclause *c = get_clause(clause);

	  if (c->right->literal != CTRUE && !(c->propagated)) {
	    numpropagateunique++;
	    c->propagated = 1;
	    tclause *c1 = malloc(sizeof(tclause));
	    c1->number = numclause++;
	    c1->type = LITERAL;
	    c1->subtype = c->numdiamond;
	    c1->numdiamond = BOX;
	    c1->agent = 0;
	    if (!global)
	      c1->modal_level = c->modal_level + 1;
	    else c1->modal_level = 1;
	    c1->left = CTRUE;
	    c1->right = malloc(sizeof(literalslist));
	    c1->right->literal = c->right->literal;
	    c1->right->next = NULL;
	    justification *just1 = malloc(sizeof(justification));
	    just1->rule = PROPUNIQUEDIA;
	    just1->parents = malloc(sizeof(clauseslist));
	    just1->parents->clause_number = c->number;
	    just1->parents->next = NULL;
	    just1->literals = NULL;
	    c1->just = just1;
	    c1->deleted = NULL;
	    c1->size = size_clause(c1->right);
	    c1->max_literal = max_lit_clause(c1->right);
	    c1->min_literal = c1->right->literal;
	    c1->class = classify_clause(c1->right);
	    insert_clause_set(&c1,c1->type,SOS);
	  }
	}
      }
    }
  }
}


void propagate_unique_box_ml (void) {

  hml_mclauses *aux = NULL, *auxtmp = NULL;
  hagentclauses *hag = NULL, * hagtmp = NULL;

  HASH_ITER(hml,m_sos,aux,auxtmp) {
    HASH_ITER(hid,aux->id,hag,hagtmp) {
      htypeclauses *htcpos = NULL;
      
      if (hag->type->type == MPOSITIVE) {
	htcpos = hag->type;
      }
      else {
	htcpos = hag->type->htype.next;
      }

      if (htcpos != NULL) {
	hmaxlitclauses *auxlit = htcpos->lit;
	int size = 0;
	while (auxlit != NULL) {
	  clauseslist *auxclauses = auxlit->list;
	  while (auxclauses != NULL) {
	    size++;
	    auxclauses = auxclauses->next;
	  }
	  auxlit = auxlit->hmax.next;
	}
	    
	if (size == 1) {
	      
	  int clause = htcpos->lit->list->clause_number;
	  tclause *c = get_clause(clause);

	  if (c->right->literal != CFALSE) {
	    numpropagateunique++;
	    tclause *c1 = malloc(sizeof(tclause));
	    c1->number = numclause++;
	    c1->type = LITERAL;
	    c1->subtype = BOX;
	    c1->agent = 0;
	    if (!global)
	      c1->modal_level = c->modal_level + 1;
	    else c1->modal_level = 1;
	    c1->left = CTRUE;
	    c1->right = malloc(sizeof(literalslist));
	    c1->right->literal = c->right->literal;
	    c1->right->next = NULL;
	    justification *just1 = malloc(sizeof(justification));
	    just1->rule = PROPUNIQUEBOX;
	    just1->parents = malloc(sizeof(clauseslist));
	    just1->parents->clause_number = c->number;
	    just1->parents->next = NULL;
	    just1->literals = NULL;
	    c1->just = just1;
	    c1->deleted = NULL;
	    c1->size = size_clause(c1->right);
	    c1->max_literal = max_lit_clause(c1->right);
	    c1->min_literal = c1->right->literal;
	    c1->class = classify_clause(c1->right);
	    insert_clause_set(&c1,c1->type,SOS);
	  }
	}
      }
    }
  }
}

int ml_srt_lt(hml_pclauses *a, hml_pclauses *b) {
  return (a->ml < b->ml);
}

int ml_srt_gt(hml_pclauses *a, hml_pclauses *b) {
  return (a->ml > b->ml);
}

hml_pclauses *shuffle(hml_pclauses *levels) {
  hml_pclauses *fast = NULL;
  hml_pclauses *slow = NULL;

  //  printf("\n begin shuffle \n");
  slow = levels;
  if (levels != NULL)
    fast = levels->hml.next;
  while (fast != NULL) {
    fast = fast->hml.next;
    if (fast != NULL) {
      slow = slow->hml.next;
      fast = fast->hml.next;
    }
  }
  if (slow != NULL)
    fast = slow->hml.next;
  slow->hml.next = NULL;
  slow = fast;
  fast = levels;

  /*printf("\n splits (slow):");
  hml_pclauses *aux,*tmp;
  HASH_ITER(hml,slow,aux,tmp) {
    printf("\n %d", aux->ml);
  }
  printf("\n splits (fast):");
  HASH_ITER(hml,fast,aux,tmp) {
    printf("\n %d", aux->ml);
  }

  
  printf("\n end split \n");
  */
  /* merge */
  hml_pclauses *new = NULL;
  while (slow != NULL) {
    hml_pclauses *slownext = slow->hml.next;
    HASH_ADD(hml,new,ml,sizeof(int),slow);
    //printf("\n adding slow %d",slow->ml);
    slow = slownext;
    if (fast != NULL) {
      hml_pclauses *fastnext = fast->hml.next;
      HASH_ADD(hml,new,ml,sizeof(int),fast);
      //printf("\n adding fast %d",fast->ml);
      fast = fastnext;
    }
  }
  //  printf("end while");
  while (fast != NULL) {
    HASH_ADD(hml,new,ml,sizeof(int),fast);
    fast = fast->hml.next;
  }

  /*HASH_ITER(hml,new,aux,tmp) {
    printf("\n %d", aux->ml);
  }
  printf("\n end shuffle \n"); */
  return new;
}


int processing_by_level(int cycle) {
  cycles = cycle;

  while (l_sos != NULL && numproofs < maxproof)  {
    cycles++;

    int try = 1;
    while (numproofs < maxproof && try) {
      try = 0;
      int try2 = 0;
      if (numproofs < maxproof && mle == ON)
	try = modal_level_elimination();
      if (numproofs < maxproof && ple == ON) {
	try2 = pure_literal_elimination();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && ml_ple == ON) {
	try2 = modal_level_ple();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && unit == ON) {
	try2 = unit_resolution(&l_sos);
	try = MAX(try,try2);
      }
    }

    if (order_level == ASCENDING)
      HASH_SRT(hml,l_sos,ml_srt_lt);
    else if (order_level == DESCENDING)
      HASH_SRT(hml,l_sos,ml_srt_gt);
    else if (order_level == SHUFFLE) {
      l_sos = shuffle(l_sos);
    }
    
    if (satmle && (cycles % mdepth) == 0)
      check_last_level();
    
    /*
    printf("\n sos before entering level \n");
    hml_pclauses *auxsh,*tmpsh;
    HASH_ITER(hml,l_sos,auxsh,tmpsh) {
      printf("\n %d", auxsh->ml);
    }
    */

    hml_pclauses *hmlp, *tmpsh;
    HASH_ITER(hml,l_sos,hmlp,tmpsh) {
      /*      if (hmlp != NULL) {
	printf("\n Processing modal level %d",hmlp->ml);
	printf("\n");
      }
      */
      if (numproofs >= maxproof)
	break;
      else
	{
	  hmaxclauses *hmax, *tmphmax;
	  HASH_ITER(hmax,hmlp->max,hmax,tmphmax) {
	    //	    printf("\n Processing max %d",hmax->max);
	    int clause = chosen_level(&hmlp);
	    if (numproofs >= maxproof)
	      break;
	    else {
	      int subsumed = 0;
	      tclause *c = get_clause(clause);
	     //printf("\n Processing clause %d",c->number);
	     //print_clause(c);
	     /*printf("\n sos after getting clause \n");

	     HASH_ITER(hml,l_sos,auxsh,tmpsh) {
	       printf("\n %d", auxsh->ml);
	     } 
	     */
	      if (forward_subsumption == ON) {
		subsumed = forward_subsumed(&c,l_usable);
		if (!subsumed && sos_subsumption) {
		  int sub2 = forward_subsumed(&c,l_sos);
		  subsumed = MAX(subsumed,sub2);
		}
		if (!subsumed) {
		  forward_subsumes(c,&l_usable);
		  if (sos_subsumption) 
		    forward_subsumes(c,&l_sos);
		}
	      }
	      if (!subsumed) {
		if (backward_subsumption == ON) {
		  backward_subsumes(c,&l_usable);
		  if (sos_subsumption) {
		    backward_subsumes(c,&l_sos);
		  }
		  subsumed = backward_subsumed(&c,l_usable);
		  if (!subsumed && sos_subsumption) {
		    int sub2 =  backward_subsumed(&c,l_sos);
		    subsumed = MAX(subsumed,sub2);
		  }
		}
	      }
	      if (!subsumed) {
		do_lres(clause);
		if ((numproofs < maxproof) &&
		    (((strong_modal_positive || modal_positive) && c->class == NEGATIVEC) ||
		     ((strong_modal_negative || modal_negative) && c->class == POSITIVEC) ||
		     (!strong_modal_positive && !modal_positive && !modal_negative && !strong_modal_negative)))
		  {
		    do_gen3(clause);
		    do_gen1(clause);
		  }
		if (ires == ON && interleave_ires == ON && c->modal_level == 1)
		  {
		    do_mod_ordires(c->number);
		  } 
		move_clause_propositional(c,&l_sos,&l_usable);
	      }
	    }
	  }
	}
    }
  }
  print_out("LRES, GEN1, GEN3");
  
  if (numproofs < maxproof && ires) {
    cycles = do_initial(cycles);
  }
  
  return cycles;
}

int processing (int cycle) {
  
  cycles = cycle;
  while (l_sos != NULL && numproofs < maxproof)  {
    hml_pclauses *hmlp;
    cycles++;

    if (satmle && (cycles % mdepth) == 0)
      check_last_level();
    
    int try = 1;
    while (numproofs < maxproof && try) {
      try = 0;
      int try2 = 0;
      if (numproofs < maxproof && mle == ON)
	try = modal_level_elimination();
      if (numproofs < maxproof && ple == ON) {
	try2 = pure_literal_elimination();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && ml_ple == ON) {
	try2 = modal_level_ple();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && unit == ON) {
	try2 = unit_resolution(&l_sos);
	try = MAX(try,try2);
      }
    }

    if (order_level == ASCENDING)
      HASH_SRT(hml,l_sos,ml_srt_lt);
    else if (order_level == DESCENDING)
      HASH_SRT(hml,l_sos,ml_srt_gt);
    else if (order_level == SHUFFLE) {
      /*      printf("\n sos before shuffle \n");
      hml_pclauses *auxsh,*tmpsh;
      HASH_ITER(hml,l_sos,auxsh,tmpsh) {
	printf("\n %d", auxsh->ml);
      } 
      */
      l_sos = shuffle(l_sos);
      /*printf("\n sos after shuffle \n");
      HASH_ITER(hml,l_sos,auxsh,tmpsh) {
	printf("\n %d", auxsh->ml);
      } 
      */
    }
    hmlp = l_sos;
    while (numproofs < maxproof && hmlp != NULL) {
      int clause = chosen(&hmlp);
      
      hmlp = hmlp->hml.next;
      int subsumed = 0;
      tclause *c = get_clause(clause);
      
      if (forward_subsumption == ON) {
	subsumed = forward_subsumed(&c,l_usable);
	if (!subsumed && sos_subsumption) {
	  int sub2 = forward_subsumed(&c,l_sos);
	  subsumed = MAX(subsumed,sub2);
	}
	if (!subsumed) {
	  forward_subsumes(c,&l_usable);
	  if (sos_subsumption) 
	    forward_subsumes(c,&l_sos);
	}
      }
      if (!subsumed) {
	if (backward_subsumption == ON) {
	  backward_subsumes(c,&l_usable);
	  if (sos_subsumption) {
	    backward_subsumes(c,&l_sos);
	  }
	  subsumed = backward_subsumed(&c,l_usable);
	  if (!subsumed && sos_subsumption) {
	    int sub2 =  backward_subsumed(&c,l_sos);
	    subsumed = MAX(subsumed,sub2);
	  }
	}
      }
      if (!subsumed) {
	if (print_chosen == ON) {printf("\n Chosen on cycle %d: ", cycles); print_clause(c);}
	do_lres(clause);
	if ((numproofs < maxproof) &&
	    (((strong_modal_positive || modal_positive) && c->class == NEGATIVEC) ||
	     ((strong_modal_negative || modal_negative) && c->class == POSITIVEC) ||
	     (!strong_modal_positive && !modal_positive && !modal_negative && !strong_modal_negative)))
	  {
	    do_gen3(clause);
	    do_gen1(clause);
	  }
	if (ires == ON && interleave_ires == ON && c->modal_level == 1)
	  {
	    do_mod_ordires(c->number);
	  } 
	move_clause_propositional(c,&l_sos,&l_usable);
      }
    }    
  }
  
  print_out("LRES, GEN1, GEN3");

  if (numproofs < maxproof && ires) {
    cycles = do_initial(cycles);
  }
  
  return cycles;
}


