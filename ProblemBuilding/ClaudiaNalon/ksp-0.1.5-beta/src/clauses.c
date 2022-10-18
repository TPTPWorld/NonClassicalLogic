#include <stdio.h>
#include <pthread.h>
#include <string.h>
#include <stdlib.h>
#include "prover.h"
#include "uthash.h"
#include "tree.h"
#include "symbol_table.h"
#include "clauses.h"

extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern literalslist *simplify_clause (literalslist *l);

extern tclause *get_clause (int clause);
extern int subsumes (tclause *c1, tclause *c2); 
extern int is_literal (tnode *t);
extern void insert_clause_p_node (prop_node *p, int modal_level,int polarity, int idclause);
extern void delete_clause_p_nodes (int modal_level, int idclause);
extern void delete_clause_p_node (prop_node *p, int type, int modal_level, int idclause);
extern void print_clause(tclause *clause);
extern prop_node *find_prop (int id);
extern int compare_disj(literalslist *l1, literalslist *l2);
extern tnode *free_tnode(tnode *t);
extern void print_short(void);
extern void print_very_short(void);

extern int cycles;
extern int verbose;
extern int kill_at_proof;
extern int global;
extern int ml_prover;
extern int nummle;
extern int mle;
extern int numclause;
extern int numlevels;
extern int numfsubsumed;
extern int numtautologies;
extern int numproofs;
extern int print_levels;
extern int print_numclauses;
extern int print_generated;
extern int print_deleted;
extern int print_proof;
extern int print_proof_size;
extern int print_proof_max;
extern int print_kept;
extern int clause_selection;
extern int full_check_repeated;
extern int diamond_restricted_res;
extern int numprops, numinitialclauses;
extern int snfnumprops, snfnumclauses, snfpostppprops, snfpostppclauses;

hclauses *allclauses = NULL;
hclauses *deletedclauses = NULL;
hclauses *proofs = NULL;

extern pthread_mutex_t mutexnumtautologies;
extern pthread_mutex_t mutexnumfsubsumed; 
extern pthread_mutex_t mutexpnodes;
extern pthread_mutex_t mutexallclauses;
extern pthread_mutex_t mutexdeletedclauses;
extern pthread_mutex_t mutexproofs;

extern pthread_mutex_t mutexprops;

extern void move_clause_propositional(tclause *clause,hml_pclauses **usable,hml_pclauses **l_sos);

hml_pclauses *i_usable = NULL;
hml_pclauses *i_sos = NULL;
hml_pclauses *l_usable = NULL;
hml_pclauses *l_sos = NULL;

hml_mclauses *m_usable = NULL;
hml_mclauses *m_sos = NULL;

void insert_clause_deleted (tclause *clause);
void insert_clause_all (tclause *clause);
void delete_clause_all (int number);
void insert_clause_proofs (tclause *clause);
void print_all_proof(tclause *proof);
void print_kept_clauses(void);

int same(tclause *c1, tclause *c2) {
  int same = 1;
  // Note that we know they are already the same size, max_literal, agent, etc.

  if (diamond_restricted_res && (c1->subtype != c2->subtype || c1->numdiamond != c2->numdiamond))
    same = 0;
  else if (c1->left != c2->left) same = 0;
  else {
    literalslist *r1 = c1->right;
    literalslist *r2 = c2->right;

    while (same && r1 != NULL && r2 != NULL) {
      if (r1->literal != r2->literal)
	same = 0;
      else {
	r1 = r1->next;
	r2 = r2->next;
      }
    }
  }
  return same;
}

int classify_clause(literalslist *l) {
  int neg = 0;
  int pos = 0;

  while (l != NULL) {
    if (l->literal < 0)
      neg++;
    else pos++;
    l = l->next;
  }
  if (neg > 0 && pos == 0)
    return NEGATIVEC;
  else if (neg == 0 && pos > 0)
    return POSITIVEC;
  else return MIXEDC;
    
}

int clause_in_list(tclause *c, clauseslist *l) {
  while (l != NULL) {
    tclause* clause = get_clause(l->clause_number);
    if (clause == NULL) {
      clause = l->clause_pointer;
    }
    
    if (same(c,clause))
      return l->clause_number;
    else l = l->next;
  }
  return 0;
}

clauseslist *remove_clause_list(tclause *c, clauseslist *l) {

  clauseslist *aux = l;
  clauseslist *previous = NULL;

  if (l == NULL) return l;
  while (aux != NULL && aux->clause_number != c->number) {
    previous = aux;
    aux = aux->next;
  }
  if (aux == NULL) return l; // clause is not in the list
  if (aux == l) { // clause is in the beginning of the list
    aux = l;
    l = l->next;
    free(aux);
    aux = NULL;
  }
  if (previous != NULL) {
    previous->next = aux->next;
    free(aux);
    aux = NULL;
  };
  return l;
}

clauseslist *delete_clause_list(tclause *c, clauseslist *l) {

  clauseslist *aux = l;
  clauseslist *previous = NULL;

  if (l == NULL) return l;
  while (aux != NULL && aux->clause_number != c->number) {
    previous = aux;
    aux = aux->next;
  }
  if (aux == NULL) return l; // clause is not in the list
  if (aux == l) { // clause is in the beginning of the list
    aux = l;
    l = l->next;
    free(aux);
    aux = NULL;
  }
  if (previous != NULL) {
    previous->next = aux->next;
    free(aux);
    aux = NULL;
  };  
  // update literal count
  if (c->type == MPOSITIVE || c->type == MNEGATIVE) {
    int id = c->left;
    if (c->left != CSTART && c->left != CTRUE && c->left != CFALSE) {
      if (id > 0) {
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_negative--;
	delete_clause_p_node (p,NEGATIVEP,c->modal_level,c->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
      else {
	id = -id;
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_positive--;
	delete_clause_p_node (p,POSITIVEP,c->modal_level,c->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
    }
  }
    
  literalslist *auxl = c->right;
  int id;
  while (auxl != NULL) {
    id = auxl->literal;
    if (id != CSTART && id != CTRUE && id != CFALSE) {
      if (id > 0) {
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_positive--;
	if (ml_prover && (c->type == MPOSITIVE || c->type == MNEGATIVE))
	  delete_clause_p_node (p,POSITIVEP,c->modal_level+1,c->number);
	else
	  delete_clause_p_node (p,POSITIVEP,c->modal_level,c->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
      else {
	id = -id;
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_negative--;
	if (ml_prover && (c->type == MPOSITIVE || c->type == MNEGATIVE))
	  delete_clause_p_node (p,NEGATIVEP,c->modal_level+1,c->number);
	else
	  delete_clause_p_node (p,NEGATIVEP,c->modal_level,c->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
    }
    auxl = auxl->next;
  }
  return l;
}

// repetition was checked before

clauseslist *insert_clause_list(tclause **c, clauseslist *l) {

  tclause *aux = *c;

  if (aux->number < 0) {
    printf("\n Error: exceeded clause numbers.");
    exit(0);
  }
  clauseslist *new = malloc(sizeof(clauseslist));
  new->clause_number = aux->number;
  new->next = l;
  l = new;

  pthread_mutex_lock (&mutexallclauses);
  insert_clause_all(aux);
  pthread_mutex_unlock (&mutexallclauses);

  // Update the literals count
  if (aux->type == MPOSITIVE || aux->type == MNEGATIVE) {
    int id = aux->left;
    if (id != CSTART && id != CTRUE && id != CFALSE) {
      if (id > 0) {
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_negative++;
	insert_clause_p_node(p,aux->modal_level,NEGATIVEP,aux->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
      else {
	id = -id;
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_positive++;
	insert_clause_p_node(p,aux->modal_level,POSITIVEP,aux->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
    }
  }
  
  literalslist *aux2 = aux->right;
  int id;
  while (aux2 != NULL) {
    id = aux2->literal;
    if (id != CSTART && id != CTRUE && id != CFALSE) {
      if (id > 0) {
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_positive++;
	if (ml_prover && (aux->type == MPOSITIVE || aux->type == MNEGATIVE))
	  insert_clause_p_node(p,aux->modal_level+1,POSITIVEP,aux->number);
	else
	  insert_clause_p_node(p,aux->modal_level,POSITIVEP,aux->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
      else {
	id = -id;
	pthread_mutex_lock (&mutexpnodes);
	prop_node *p = find_prop(id);
	//p->occur_negative++;
	if (ml_prover && (aux->type == MPOSITIVE || aux->type == MNEGATIVE))
	  insert_clause_p_node(p,aux->modal_level+1,NEGATIVEP,aux->number);
	else
	  insert_clause_p_node(p,aux->modal_level,NEGATIVEP,aux->number);
	pthread_mutex_unlock (&mutexpnodes);
      }
    }
    aux2 = aux2->next;
  }
  return l;
}


void insert_clause_selection (tclause *clause, hml_pclauses **set) {
  if (clause_selection == NEWEST) {
    clauseslist *new = malloc(sizeof(clauseslist));
    new->clause_number = clause->number;
    new->next = (*set)->list_selection;
    (*set)->list_selection = new;
  }
  else if (clause_selection == OLDEST) {
    clauseslist *new = malloc(sizeof(clauseslist));
    new->clause_number = clause->number;
    new->next = NULL;
    if ((*set)->last_selection != NULL)
      (*set)->last_selection->next = new;
    else (*set)->list_selection = new;
    (*set)->last_selection = new;
  }
}

void insert_clause_set (tclause **clause, int type, int set);

void simplify_diamonds (tclause *c) {
  int ml = c->modal_level-1;
  int type = MNEGATIVE;

  hml_mclauses *hml = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL, *hmaxlitaux = NULL;
  
  HASH_FIND(hml,m_sos,&ml,sizeof(int),hml);
  if (hml != NULL) {
    for (hag = hml->id; hag != NULL; hag = hag->hid.next) {
      HASH_FIND(htype,hag->type,&type,sizeof(int),htc);
      if (htc != NULL) {
	HASH_ITER(hmax,htc->lit,hmaxlit,hmaxlitaux) {
	  clauseslist *aux = hmaxlit->list;
	  while (aux != NULL) {
	    tclause *clause = get_clause(aux->clause_number);
	    aux = aux->next;
	    justification *deleted = malloc(sizeof(justification));
	    deleted->rule = SIMP;
	    deleted->parents = malloc(sizeof(clauseslist));
	    deleted->parents->clause_number = clause->number;
            deleted->parents->clause_pointer = clause;
	    deleted->parents->next = malloc(sizeof(clauseslist));
	    deleted->parents->next->clause_number = c->number;
            deleted->parents->next->clause_pointer = c;
	    deleted->parents->next->next = NULL;
	    deleted->literals = NULL;
	    clause->deleted = deleted;
	    hmaxlit->list = delete_clause_list(clause,hmaxlit->list);
	    pthread_mutex_lock (&mutexallclauses);
	    delete_clause_all(clause->number);
	    pthread_mutex_unlock (&mutexallclauses);
	    insert_clause_deleted(clause);

	    tclause *c1 = malloc(sizeof(tclause));
	    c1->number = numclause++;
	    c1->type = LITERAL;
	    c1->agent = 0;
	    c1->modal_level = clause->modal_level;
	    c1->left = CTRUE;
	    c1->right = malloc(sizeof(literalslist));
	    c1->right->literal = -clause->left;
	    c1->right->next = NULL;
	    justification *just1 = malloc(sizeof(justification));
	    just1->rule = SIMP;
	    just1->parents = malloc(sizeof(clauseslist));
	    just1->parents->clause_number = clause->number;
            just1->parents->clause_pointer = clause;
	    just1->parents->next = malloc(sizeof(clauseslist));
	    just1->parents->next->clause_number = c->number;
	    just1->parents->next->clause_pointer = c;
	    just1->parents->next->next = NULL;
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

int check_repeated_prop (tclause *clause, hml_pclauses *set) {
  if (clause->type == MNEGATIVE || clause->type == MPOSITIVE) return 0;
  int repeated = 0;
  hml_pclauses *hml = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;
  
  HASH_FIND(hml,set,&(clause->modal_level),sizeof(int),hml);
  if (hml != NULL) {
    HASH_FIND(hmax,hml->max,&(clause->max_literal),sizeof(int),hmc);
    if (hmc != NULL) {
      HASH_FIND(hsize,hmc->size,&(clause->size),sizeof(int),hsc);
      if (hsc != NULL) {
	repeated = clause_in_list(clause,hsc->list);
	if (repeated == clause->number) repeated = 0;
      }
    }
  }
  return repeated;
}

void insert_clause_prop (tclause **clause, hml_pclauses **set) {
  tclause *aux = *clause;
  if (aux->modal_level > numlevels) numlevels = aux->modal_level;
  if (aux->right->literal == CFALSE) {
    if (global || aux->modal_level == 1) {
      if (print_generated) print_clause(aux);
      pthread_mutex_lock(&mutexproofs);
      numproofs++;
      insert_clause_proofs(aux);
      pthread_mutex_unlock(&mutexproofs);
      if (print_proof || print_proof_max || print_proof_size) {
	print_all_proof(aux);
      }
      if (kill_at_proof) {
	if (print_numclauses == ON) printf("\n Number of clauses: %d", numclause - 1);
	if (print_levels == ON) printf("\n Number of levels: %d",numlevels);
	if (verbose == 1) print_very_short();
	if (verbose == 2) {print_short(); print_very_short();}
	if (print_kept == ON) print_kept_clauses();
	printf("\n Unsatisfiable.\n");
	exit(0);
      }
    }
    else {
      hml_pclauses *hml = NULL;
      hmaxclauses *hmc = NULL;
      hsizeclauses *hsc = NULL;

      HASH_FIND(hml,*set,&(aux->modal_level),sizeof(int),hml);
      if (hml == NULL) {
	hml_pclauses *new1 = malloc(sizeof(*new1));
	new1->ml = aux->modal_level;
	new1->max = NULL;
	new1->list_selection = NULL;
	new1->last_selection = NULL;
	HASH_ADD(hml,*set,ml,sizeof(int),new1);
	hml = new1;
      }
    
      HASH_FIND(hmax,hml->max,&(aux->max_literal),sizeof(int),hmc);
      if (hmc == NULL) {
	hmaxclauses *new2 = malloc(sizeof(*new2));
	new2->max = aux->max_literal;
	new2->size = NULL;
	HASH_ADD(hmax,hml->max,max,sizeof(int),new2);
	hmc = new2;
      }
      HASH_FIND(hsize,hmc->size,&(aux->size),sizeof(int),hsc);
      if (hsc == NULL) {
	hsizeclauses *new3 = malloc(sizeof(*new3));
	new3->size = aux->size;
	new3->list = NULL;
	HASH_ADD(hsize,hmc->size,size,sizeof(int),new3);
	hsc = new3;
      }
      hsc->list = insert_clause_list(&aux,hsc->list);
      simplify_diamonds(aux);
    }
  }
  else if (aux->right->literal == CTRUE) {
    if (print_generated) print_clause(aux);
    pthread_mutex_lock(&mutexnumtautologies);
    numtautologies++;
    pthread_mutex_unlock(&mutexnumtautologies);
    justification *deleted = malloc(sizeof(justification));
    deleted->rule = TAUTOLOGY;
    deleted->parents = NULL;
    deleted->literals = NULL;
    aux->deleted = deleted;
    pthread_mutex_lock(&mutexdeletedclauses);
    insert_clause_deleted(aux);
    pthread_mutex_unlock(&mutexdeletedclauses);
  }
  else {
    int repeated = check_repeated_prop(aux,*set);
    if (!repeated && full_check_repeated) {
      hml_pclauses *hml = NULL;
      if (*set == l_sos) {
	hml = l_usable;
      }
      else if (*set == l_usable) {
	hml = l_sos;
      }
      else if (*set == i_sos) {
	hml = i_usable;
      }
      else if (*set == i_usable) {
	hml = i_sos;
      }
      repeated = check_repeated_prop(aux,hml);
    }

    if (!repeated) {
      hml_pclauses *hml = NULL;
      hmaxclauses *hmc = NULL;
      hsizeclauses *hsc = NULL;

      pthread_mutex_lock(&mutexprops);
      HASH_FIND(hml,*set,&(aux->modal_level),sizeof(int),hml);
      if (hml == NULL) {
	hml_pclauses *new1 = malloc(sizeof(*new1));
	new1->ml = aux->modal_level;
	new1->max = NULL;
	new1->list_selection = NULL;
	new1->last_selection = NULL;
	HASH_ADD(hml,*set,ml,sizeof(int),new1);
	hml = new1;
      }
    
      HASH_FIND(hmax,hml->max,&(aux->max_literal),sizeof(int),hmc);
      if (hmc == NULL) {
	hmaxclauses *new2 = malloc(sizeof(*new2));
	new2->max = aux->max_literal;
	new2->size = NULL;
	HASH_ADD(hmax,hml->max,max,sizeof(int),new2);
	hmc = new2;
      }
      HASH_FIND(hsize,hmc->size,&(aux->size),sizeof(int),hsc);
      if (hsc == NULL) {
	hsizeclauses *new3 = malloc(sizeof(*new3));
	new3->size = aux->size;
	new3->list = NULL;
	HASH_ADD(hsize,hmc->size,size,sizeof(int),new3);
	hsc = new3;
      }

      if (*set == l_sos || *set == i_sos)
	insert_clause_selection(aux,&hml);
      hsc->list = insert_clause_list(&aux,hsc->list);
    }
    else {
      pthread_mutex_lock (&mutexnumfsubsumed);
      numfsubsumed++;
      pthread_mutex_unlock (&mutexnumfsubsumed);
      clauseslist *parent = malloc(sizeof(clauseslist));
      parent->clause_number = repeated;
      parent->clause_pointer = get_clause(repeated);
      parent->next = NULL;
      justification *deleted = malloc(sizeof(justification));
      deleted->rule = REPEATED;
      deleted->parents = parent;
      deleted->literals = NULL;
      aux->deleted = deleted;
      pthread_mutex_lock (&mutexallclauses);
      delete_clause_all(aux->number);
      pthread_mutex_unlock (&mutexallclauses);
      pthread_mutex_lock (&mutexdeletedclauses);
      insert_clause_deleted(aux);
      pthread_mutex_unlock (&mutexdeletedclauses);
    }
    pthread_mutex_unlock(&mutexprops);
  }
}



void delete_clause_prop(hml_pclauses **set,tclause *c) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  if (c != NULL && *set != NULL) {
    pthread_mutex_lock(&mutexprops);
    HASH_FIND(hml,*set,&(c->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      HASH_FIND(hmax,hmlp->max,&(c->max_literal),sizeof(int),hmc);
      if (hmc != NULL) {
	HASH_FIND(hsize,hmc->size,&(c->size),sizeof(int),hsc);
	if (hsc != NULL) {
	  hsc->list = delete_clause_list(c,hsc->list);
	  pthread_mutex_lock (&mutexallclauses);
	  delete_clause_all(c->number);
	  pthread_mutex_unlock (&mutexallclauses);
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
	HASH_DELETE(hml,*set,hmlp);
	free(hmlp);
	hmlp = NULL;
      }
    }
    pthread_mutex_unlock(&mutexprops);
  }
}

int check_repeated_modal (tclause *clause, hml_mclauses *set) {
  if (clause->type == LITERAL || clause->type == INITIAL) return 0;
  int repeated = 0;
  hml_mclauses *hml = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  HASH_FIND(hml,set,&(clause->modal_level),sizeof(int),hml);
  if (hml != NULL) {
    HASH_FIND(hid,hml->id,&(clause->agent),sizeof(int),hag);
    if (hag != NULL) {
      HASH_FIND(htype,hag->type,&(clause->type),sizeof(int),htc);
      if (htc != NULL) {
	HASH_FIND(hmax,htc->lit,&(clause->max_literal),sizeof(int),hmaxlit);
	if (hmaxlit != NULL) {
	  repeated = clause_in_list(clause,hmaxlit->list);
	  if (repeated == clause->number) repeated = 0;
	}
      }
    }
  }
  return repeated;
}

void insert_clause_modal (tclause **clause, hml_mclauses **set) {
  hml_mclauses *hml = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;
  tclause *aux = *clause;
  if (aux->modal_level > numlevels) numlevels = aux->modal_level;
  if ((aux->type == MPOSITIVE && aux->right->literal == CTRUE) || aux->left == CFALSE) {
    if (print_generated) print_clause(aux);
    pthread_mutex_lock(&mutexnumtautologies);
    numtautologies++;
    pthread_mutex_unlock(&mutexnumtautologies);
    justification *deleted = malloc(sizeof(justification));
    deleted->rule = TAUTOLOGY;
    deleted->parents = NULL;
    deleted->literals = NULL;
    aux->deleted = deleted;
    pthread_mutex_lock(&mutexdeletedclauses);
    insert_clause_deleted(aux);
    pthread_mutex_unlock(&mutexdeletedclauses);
  }
  else {
    int repeated = check_repeated_modal(aux,*set);
    if (!repeated && full_check_repeated) {
      hml_mclauses *hml;
      if (*set == m_sos) {
	hml = m_usable;
      }
      else if (*set == m_usable) {
	hml = m_sos;
      }
      repeated = check_repeated_modal(aux,hml);
    }

    if (!repeated) {      
      HASH_FIND(hml,*set,&(aux->modal_level),sizeof(int),hml);
      if (hml == NULL) {
	hml_mclauses *new1 = malloc(sizeof(*new1));
	new1->ml = aux->modal_level;
	new1->id = NULL;
	HASH_ADD(hml,*set,ml,sizeof(int),new1);
	hml = new1;
      }
      HASH_FIND(hid,hml->id,&(aux->agent),sizeof(int),hag);
      if (hag == NULL) {
	hagentclauses *new2 = malloc(sizeof(*new2));
	new2->id = aux->agent;
	new2->type = NULL;
	HASH_ADD(hid,hml->id,id,sizeof(int),new2);
	hag = new2;
      }
      HASH_FIND(htype,hag->type,&(aux->type),sizeof(int),htc);
      if (htc == NULL) {
	htypeclauses *new3 = malloc(sizeof(*new3));
	new3->type = aux->type;
	new3->lit = NULL;
	HASH_ADD(htype,hag->type,type,sizeof(int),new3);
	htc = new3;
      }
      HASH_FIND(hmax,htc->lit,&(aux->max_literal),sizeof(int),hmaxlit);
      if (hmaxlit == NULL) {
	hmaxlitclauses *new4 = malloc(sizeof(*new4));
	new4->max = aux->max_literal;
	new4->list = NULL;
	HASH_ADD(hmax,htc->lit,max,sizeof(int),new4);
	hmaxlit = new4;
      }
      hmaxlit->list = insert_clause_list(&(aux),hmaxlit->list);
    }
    else {
      pthread_mutex_lock (&mutexnumfsubsumed);
      numfsubsumed++;
      pthread_mutex_unlock (&mutexnumfsubsumed);
      clauseslist *parent = malloc(sizeof(clauseslist));
      parent->clause_number = repeated;
      parent->clause_pointer = get_clause(repeated);
      parent->next = NULL;
      justification *deleted = malloc(sizeof(justification));
      deleted->rule = REPEATED;
      deleted->parents = parent;
      deleted->literals = NULL;
      aux->deleted = deleted;
      pthread_mutex_lock (&mutexallclauses);
      delete_clause_all(aux->number);
      pthread_mutex_unlock (&mutexallclauses);
      pthread_mutex_lock (&mutexdeletedclauses);
      insert_clause_deleted(aux);
      pthread_mutex_unlock (&mutexdeletedclauses);
    }
  }
}

void delete_clause_modal(hml_mclauses **set, tclause *c) {
  hml_mclauses *hmlm = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  HASH_FIND(hml,*set,&(c->modal_level),sizeof(int),hmlm);
    if (hmlm != NULL) {
      HASH_FIND(hid,hmlm->id,&(c->agent),sizeof(int),hag);
      if (hag != NULL) {
	HASH_FIND(htype,hag->type,&(c->type),sizeof(int),htc);
	if (htc != NULL) {
	  HASH_FIND(hmax,htc->lit,&(c->max_literal),sizeof(int),hmaxlit);
	  if (hmaxlit != NULL) {
	    hmaxlit->list = delete_clause_list(c,hmaxlit->list);
	    pthread_mutex_lock (&mutexallclauses);
	    delete_clause_all(c->number);
	    pthread_mutex_unlock (&mutexallclauses);
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
	HASH_DELETE(hml,*set,hmlm);
	free(hmlm);
	hmlm = NULL;
      }
    }
}

void insert_clause_set (tclause **clause, int type, int set) {
  tclause *aux = *clause;
  if (type == INITIAL)
    if (set == USABLE)
      insert_clause_prop(&aux,&i_usable);
    else insert_clause_prop(&aux,&i_sos);
  else if (type == LITERAL)
    if (set == USABLE)
      insert_clause_prop(&aux,&l_usable);
    else insert_clause_prop(&aux,&l_sos);
  else if (set == USABLE)
    insert_clause_modal(&aux,&m_usable);
  else insert_clause_modal(&aux,&m_sos);
}


void insert_clause_proofs (tclause *clause) {
  hclauses *c;  
  HASH_FIND(hid,proofs,&(clause->number),sizeof(int),c);
  if (c == NULL) {
    hclauses *new = malloc(sizeof(*new));
    new->id = clause->number;
    new->clause = clause;
    HASH_ADD(hid,proofs,id,sizeof(int),new);
  }
}


void insert_clause_all(tclause *clause) {
  hclauses *c;
  if (clause->number < 0)
    printf("\n There are clauses with negative numbers.");
  HASH_FIND(hid,allclauses,&(clause->number),sizeof(int),c);
  if (c == NULL) {
    hclauses *new = malloc(sizeof(*new));
    new->id = clause->number;
    new->clause = clause;
    HASH_ADD(hid,allclauses,id,sizeof(int),new);
    if (print_generated) print_clause(clause);
  }
  else printf("\n There are clauses with repeated numbers.");
}

void delete_clause_all(int number) {
  hclauses *c;
  HASH_FIND(hid,allclauses,&(number),sizeof(int),c);
  if (c != NULL) {
    HASH_DELETE(hid,allclauses,c);
    free(c);
    c = NULL;
  }
}


tclause *get_clause_x (int clause) {
  hclauses *c;
  
  pthread_mutex_lock (&mutexallclauses);
  HASH_FIND(hid,allclauses,&(clause),sizeof(int),c);
  pthread_mutex_unlock (&mutexallclauses);
  if (c != NULL)
    return c->clause;
  else {
    pthread_mutex_lock (&mutexdeletedclauses);
    HASH_FIND(hid,deletedclauses,&(clause),sizeof(int),c);
    pthread_mutex_unlock (&mutexdeletedclauses);
    if (c != NULL)
      return c->clause;
    else {
      pthread_mutex_lock (&mutexproofs);
      HASH_FIND(hid,proofs,&(clause),sizeof(int),c);
      pthread_mutex_unlock (&mutexproofs);
      if (c != NULL)
	return c->clause;
    }
  }
  return NULL;
}

tclause *get_clause (int clause) {
  hclauses *c;
  pthread_mutex_lock (&mutexallclauses);
  HASH_FIND(hid,allclauses,&(clause),sizeof(int),c);
  pthread_mutex_unlock (&mutexallclauses);
  if (c != NULL)
    return c->clause;
  return NULL;
}


void print_dimacs (literalslist *literals) {
  while (literals != NULL) {
    printf("%d ",literals->literal);
    literals = literals->next;
  }
  printf("0\n");
}

void print_dimacs_pclauses (hml_pclauses *set) {
  hml_pclauses *aux = set;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;  
 
  for (aux=set; aux != NULL; aux=aux->hml.next) {
    printf("\n Modal Level: %d \n",aux->ml);
    for (hmc=aux->max; hmc != NULL; hmc=hmc->hmax.next)
      for (hsc=hmc->size; hsc != NULL; hsc=hsc->hsize.next) {
	clauseslist *l = hsc->list;
	while (l != NULL) {
	  tclause *clause = get_clause(l->clause_number);
	  print_dimacs(clause->right);
	  l = l->next;
	}
      }
  }
}

void print_pclauses (hml_pclauses *set) {
  hml_pclauses *aux = set;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;  
 
  for (aux=set; aux != NULL; aux=aux->hml.next)
    for (hmc=aux->max; hmc != NULL; hmc=hmc->hmax.next)
      for (hsc=hmc->size; hsc != NULL; hsc=hsc->hsize.next) {
	clauseslist *l = hsc->list;
	while (l != NULL) {
	  tclause *clause = get_clause(l->clause_number);
	  print_clause(clause);
	  l = l->next;
	}
      }
}

void print_mclauses (hml_mclauses *set) {
  hml_mclauses *aux = set;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;
  
  for (aux=set; aux != NULL; aux=aux->hml.next)
      for (hag=aux->id; hag != NULL; hag=hag->hid.next)
	for (htc=hag->type; htc != NULL; htc=htc->htype.next)
	  for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
	    clauseslist *l = hmaxlit->list;
	    while (l != NULL) {
	      tclause *clause = get_clause(l->clause_number);
	      print_clause(clause);
	      l = l->next;
	    }
	  }
}

void print_usable (void) {
  if (i_usable != NULL) {
    printf("\n\n Usable: Initial Clauses\n");
    print_pclauses(i_usable);
  }
  if (l_usable != NULL) {
    printf("\n\n Usable: Literal Clauses\n");
    print_pclauses(l_usable);
  }
  if (m_usable != NULL) {
    printf("\n\n Usable: Modal Clauses\n");
    print_mclauses(m_usable);
  }
}

void print_sos (void) {
  if (i_sos != NULL) {
    printf("\n\n SoS: Initial Clauses\n");
    print_pclauses(i_sos);
  }
  if (l_sos != NULL) {
    printf("\n\n SoS: Literal Clauses\n");
    print_pclauses(l_sos);
  }
  if (m_sos != NULL) {
    printf("\n\n SoS: Modal Clauses\n");
    print_mclauses(m_sos);
  }
}


void remove_repeated_clauses(clauseslist **clauses) {
  clauseslist *aux = *clauses;
  while (aux->next != NULL) {
    if (aux->clause_number == aux->next->clause_number) {
      clauseslist *aux2 = aux->next;
      aux->next = aux2->next;
      free(aux2);
    }
    else aux = aux->next;
  }
}


int compare_clauses(clauseslist *left, clauseslist *right) {
  tclause *c1 = get_clause_x(left->clause_number);
  tclause *c2 = get_clause_x(right->clause_number);

  if (c1->modal_level < c2->modal_level)
    return 1;
  else if (c1->modal_level == c2->modal_level) {
    if (c1->number <= c2->number)
      return 1;
    else return 0;
  }
  else return 0;
}

void split_clauses(clauseslist *l, clauseslist **left, clauseslist **right) {
  clauseslist *fast;
  clauseslist *slow;

  if (l == NULL || l->next == NULL) {
    *left = l;
    *right = NULL;
  }
  else {
    slow = l;
    fast = l->next;
    while (fast != NULL) {
      fast = fast->next;
      if (fast != NULL) {
	slow = slow->next;
	fast = fast->next;
      }
    }
    *left = l;
    *right = slow->next;
    slow->next = NULL;
  }
}

clauseslist *sorted_merge_clauses(clauseslist *left, clauseslist *right) {
  if(!left) return right;
  if(!right) return left;

  clauseslist *result = NULL, *last = NULL;
  if(compare_clauses(left, right)) {
    last = result = left;
    left = left->next;
  }
  else {
    last = result = right;
    right = right->next;
  }
  // last is not null
  last->next = NULL;

  while(left && right) {
    if(compare_clauses(left, right)) {
      last->next = left;
      left = left->next;
    }
    else {
      last->next = right;
      right = right->next;
    }
    last = last->next;
    last->next = NULL;
  }
  last->next = left ?: right;
  return result;
}

void sort_clauses(clauseslist **l) {
  clauseslist *head = *l;
  clauseslist *left;
  clauseslist *right;
  
  if (head == NULL || head->next == NULL)
    return;
  else {
    split_clauses(head,&left,&right);
    sort_clauses(&left);
    sort_clauses(&right);
    *l = sorted_merge_clauses(left,right);
  }
}


int construct_proof(tclause *proof, int max, clauseslist **lproof) {

  if (proof != NULL) {
    clauseslist *aux = *lproof;
    while (aux) {
      if (aux->clause_number == proof->number) {
	return max;
      }
      aux = aux->next;
    }
    if (proof->modal_level > max) max = proof->modal_level;    
    clauseslist *first = NULL;
    first = malloc(sizeof(clauseslist));
    first->clause_number = proof->number;
    first->clause_pointer = proof;
    first->next = *lproof;
    *lproof = first;

    if (proof->just != NULL) {
      clauseslist *parents = proof->just->parents;
      while (parents != NULL) {
	tclause *clause = get_clause_x(parents->clause_number);
	max = construct_proof(clause, max, lproof);
	parents = parents->next;
      }
    }
  }
  return max;
}

void print_all_proof(tclause *proof) {
  clauseslist *clauses = NULL;
  int max_level = construct_proof(proof, proof->modal_level,&clauses);
  sort_clauses(&clauses);
  clauseslist *aux = clauses;
  int proof_size = 0;
  if (print_proof == ON) {
    	printf("\n*****************");
	printf("\n FOUND PROOF %d", numproofs);
	printf("\n*****************");
  }
  while (aux != NULL) {
    proof_size++;
    tclause *c = get_clause_x(aux->clause_number);
    if (print_proof == ON) print_clause(c);
    clauseslist *tmp = aux;
    aux = aux->next;
    free(tmp);
  }
  if (print_proof_size == ON) {
    printf("Proof size: %d\n", proof_size);
  }
  if (print_proof_max == ON) {
    printf("Proof max level: %d\n", max_level);
  }
}

void print_deleted_clauses (void) {
  hclauses *c;
  for (c = deletedclauses; c!=NULL; c = c->hid.next)
    print_clause(c->clause);
}

void print_all (void) {
  hclauses *c;
  for (c = allclauses; c!=NULL; c = c->hid.next)
    print_clause(c->clause);
}

void print_proofs (void) {
  hclauses *c;
  for (c = proofs; c!=NULL; c = c->hid.next)
    print_clause(c->clause);
}


void print_kept_clauses (void) {
  print_usable();
  print_sos();
  printf("\n");
}

void print_clauses (void) {
  if (numclause > 1) {
    print_kept_clauses();
    printf("\n Deleted clauses: \n");
    print_deleted_clauses();
    printf("\n\n Proofs found:");
    print_proofs();
  }
}


clauseslist *delete_clauses_list (clauseslist *l) {
  while (l != NULL) {
    clauseslist *aux = l;
    l = l->next;
    free(aux);
    aux = NULL;
  }
  return l;
}


literal_list *free_literal_list(literal_list *dis) {
  literal_list *aux;
  while (dis != NULL) {
    if (dis->literal != NULL)
      free_tnode(dis->literal);
    aux = dis;
    dis = dis->next;
    free(aux);
  }
  return dis;
}

literalslist *free_disjunction(literalslist *dis) {
  while (dis != NULL) {
    literalslist *aux = dis;
    dis = dis->next;
    if (aux != NULL) 
      free(aux);
    aux = NULL;
  }
  return dis;
}

justification *free_justification (justification *just) {
  if (just != NULL) {
    just->parents = delete_clauses_list(just->parents);
    just->literals = free_disjunction(just->literals);
    free(just);
    just = NULL;
  }
  return just;
}

void insert_clause_deleted(tclause *clause) {
  if (clause != NULL) {
    if (print_deleted) {
      printf("\n Deleted:");
      print_clause(clause);
    }
    if (clause->just->rule == REPEATED  || clause->just->rule == TAUTOLOGY) {
      free_disjunction(clause->right);
      free_justification(clause->just);
      free_justification(clause->deleted);
      free(clause);
      clause = NULL;
    }
    else {
      hclauses *c; 
      HASH_FIND(hid,deletedclauses,&(clause->number),sizeof(int),c);
      if (c == NULL) {
	hclauses *new = malloc(sizeof(*new));
	new->id = clause->number;
	new->clause = clause;
	HASH_ADD(hid,deletedclauses,id,sizeof(int),new);
      }
    }
  }
}

void free_clauses_set_p(hml_pclauses **set) {
  hml_pclauses *aux = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;  
 
  aux = *set;
  while (aux != NULL) {
    hmc = aux->max;
    while (hmc != NULL) {
      hsc = hmc->size;
      while (hsc != NULL) {
	hsc->list = delete_clauses_list(hsc->list);
      if (hsc->list == NULL) {
	HASH_DELETE(hsize,hmc->size,hsc);
	free(hsc);
	hsc = NULL;
      }
      else hsc=hsc->hsize.next;
      }
      if (hmc->size == NULL) {
	HASH_DELETE(hmax,aux->max,hmc);
	free(hmc);
	hmc = NULL;
      }
      else hmc=hmc->hmax.next;
    }
    if (aux->max == NULL) {
      HASH_DELETE(hml,*set,aux);
      delete_clauses_list(aux->list_selection);
      free(aux);
      aux = NULL;
    }
    else aux=aux->hml.next;
  }
  HASH_CLEAR(hml,*set);
  free(*set);
  *set=NULL;
}


void free_clauses_set_m (hml_mclauses **set) {
  hml_mclauses *aux = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  aux = *set;

  while (aux != NULL) {
    hag = aux->id;
    while (hag != NULL) {
      htc = hag->type;
      while (htc != NULL) {
	hmaxlit = htc->lit;
	while (hmaxlit != NULL) {
	  hmaxlit->list = delete_clauses_list(hmaxlit->list);
	  if (hmaxlit->list == NULL) {
	    HASH_DELETE(hmax,htc->lit,hmaxlit);
	    free(hmaxlit);
	    hmaxlit = NULL;
	  }
	  else hmaxlit=hmaxlit->hmax.next;
	}
	if (htc->lit == NULL) {
	  HASH_DELETE(htype,hag->type,htc);
	  free(htc);
	  htc = NULL;
	}
	else htc=htc->htype.next;
      }
      if (hag->type == NULL) {
	HASH_DELETE(hid,aux->id,hag);
	free(hag);
	hag = NULL;
      }
      else hag=hag->hid.next;
    }
    if (aux->id == NULL) {
      HASH_DELETE(hml,*set,aux);
      free(aux);
      aux = NULL;
    }
    else aux=aux->hml.next;
  }
  HASH_CLEAR(hml,*set);
  free(*set);
  *set = NULL;
}


hclauses *free_clauses_list (hclauses *clause) {
  if (clause != NULL) {
    tclause *c = clause->clause;
    if (c != NULL) {
      c->right = free_disjunction(c->right);
      c->just = free_justification(c->just);
      c->deleted = free_justification(c->deleted);
      free(c);
      c = NULL;
    }
    free(clause);
    clause = NULL;
  }
  return NULL;
}

void free_clauses_all (void) {

  hclauses *aux, *tmp;
  
  HASH_ITER(hid,allclauses,aux,tmp) {
    HASH_DELETE(hid,allclauses,aux);
    aux = free_clauses_list(aux);
  }
  free(allclauses);
}

void free_clauses_deleted (void) {

  hclauses *aux, *tmp;
  
  HASH_ITER(hid,deletedclauses,aux,tmp) {
    HASH_DELETE(hid,deletedclauses,aux);
    aux = free_clauses_list(aux);
  }
  free(deletedclauses);
}

void free_clauses_proof (void) {

  hclauses *aux, *tmp;
  
  HASH_ITER(hid,proofs,aux,tmp) {
    HASH_DELETE(hid,proofs,aux);
    aux = free_clauses_list(aux);
  }
  free(proofs);
}

void free_clauses (void) {
  free_clauses_set_p(&i_usable);
  free_clauses_set_p(&i_sos);
  free_clauses_set_p(&l_usable);
  free_clauses_set_p(&l_sos);
  free_clauses_set_m(&m_usable);
  free_clauses_set_m(&m_sos);
  free_clauses_all();
  free_clauses_deleted();
  free_clauses_proof();
}


void count_diamonds (void) {
  hml_mclauses *aux = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  int counter;
  for (aux=m_sos; aux != NULL; aux=aux->hml.next) {
    printf("\n Modal Level: %d", aux->ml);
    for (hag=aux->id; hag != NULL; hag=hag->hid.next) {
      counter = 0;
      for (htc=hag->type; htc != NULL; htc=htc->htype.next) {
	if (htc->type == MNEGATIVE) {
	  for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
	    clauseslist *l = hmaxlit->list;
	    while (l != NULL) {
	      counter++;
	      l = l->next;
	    }
	  }
	  printf("\n Number of Diamonds: %d", counter);
	}
      }
    }
  }
  printf("\n");
}
