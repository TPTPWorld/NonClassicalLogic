#include <stdio.h>
#include <pthread.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);

extern void print_clause (tclause *c);
extern void print_parents (clauseslist *parents);

extern hml_pclauses *l_usable;

extern int numclause;
extern int literal_selection;
extern int diamond_restricted_res;

extern pthread_mutex_t mutexnumclause;

void resolve(int literal, tclause *c1, tclause *c2) {
  if (c1 != NULL && c2 != NULL) {
    //if (1) {
    if (!diamond_restricted_res || c1->subtype == BOX || c2->subtype == BOX || c1->subtype == c2->subtype) {
      literalslist *aux;

    tclause *resolvent = malloc(sizeof(tclause));

    pthread_mutex_lock (&mutexnumclause);
    resolvent->number = numclause++;
    pthread_mutex_unlock (&mutexnumclause);

    literalslist *right = NULL;
    for (aux = c1->right; aux != NULL; aux=aux->next) {
      if (aux->literal != literal) {
	literalslist *new = malloc(sizeof(literalslist));
	new->literal = aux->literal;
	new->next = right;
	right = new;
      }
    }
    for (aux = c2->right; aux != NULL; aux=aux->next) {
      if (aux->literal != -literal) {
	literalslist *new = malloc(sizeof(literalslist));
	new->literal = aux->literal;
	new->next = right;
	right = new;
      }
    }
    if (right == NULL) {
      right = malloc(sizeof(literalslist));
      right->literal = CFALSE;
      right->next = NULL;
      resolvent->right = right;
    }
    else resolvent->right = simplify_clause(right);
    resolvent->size = size_clause(resolvent->right);
    resolvent->max_literal = max_lit_clause(resolvent->right);
    resolvent->min_literal = resolvent->right->literal;
    resolvent->class = classify_clause(resolvent->right);
    resolvent->modal_level = c1->modal_level;
    resolvent->agent = 0;

    clauseslist *parent = malloc(sizeof(clauseslist));
    parent->clause_number = c1->number;
    parent->next = malloc(sizeof(clauseslist));
    parent->next->clause_number = c2->number;
    parent->next->next = NULL;
    literalslist *literals = malloc(sizeof(literalslist));
    literals->literal = literal;
    literals->next = NULL;
    parent->next->next = NULL;

    justification *just = malloc(sizeof(justification));

    if (c1->type == INITIAL && c2->type == INITIAL) {
      resolvent->type = INITIAL;
      just->rule = IRES2;
      resolvent->left = CSTART;
    }
    else if (c1->type == LITERAL && c2->type == LITERAL) {
      resolvent->type = LITERAL;
      just->rule = LRES;
      resolvent->left = CTRUE;
    }
    else {
      resolvent->type = INITIAL;
      just->rule = IRES1;
      resolvent->left = CSTART;
    }

    resolvent->subtype = MAX(c1->subtype,c2->subtype);
    resolvent->numdiamond = BOX;
  
    just->parents = parent;
    just->literals = literals;
    resolvent->just = just;
    resolvent->deleted = NULL;
    insert_clause_set(&resolvent,resolvent->type,SOS);
    }
  }
}
  
void do_res(int literal, tclause *chosen, clauseslist *candidates) {
  while (candidates != NULL) {
    tclause *candidate = get_clause(candidates->clause_number);
    if (candidate->modal_level > chosen->modal_level)
      resolve(-literal,candidate,chosen);
    else resolve(literal,chosen,candidate);
    candidates = candidates->next;
  }
}

clauseslist *build_candidates_selection_2(int literal, clauseslist *list) {
 clauseslist *first = NULL;
  while (list != NULL) {
    tclause *clause = get_clause(list->clause_number);
    if (clause != NULL) {
      literalslist *aux;
      aux = clause->right;
      int negative = 0;
      while (aux != NULL && !negative && aux->literal != literal) {
	if (aux->literal < 0)
	  negative = 1;
	aux = aux->next;
      }
      if (!negative) {
	clauseslist *new = malloc(sizeof(clauseslist));
	new->clause_number = clause->number;
	new->next = first;
	first = new;
      }
    }
    list = list->next;
  }
  return first;
}

clauseslist *build_candidates_selection_1(int literal, clauseslist *list) {
  clauseslist *first = NULL;
  while (list != NULL) {
    tclause *clause = get_clause(list->clause_number);

    if (clause != NULL) {
      literalslist *aux;
      aux = clause->right;
      int found = 0;
      int nothing_is_selected = 1;
      while (!found && aux != NULL) {
	if (aux->literal == literal) {
	  found = 1;
	} 
	else if (aux->literal < 0)
	  nothing_is_selected = 0;
	aux = aux->next;
      }
      if (found && (literal < 0 || (nothing_is_selected && literal == clause->max_literal))) {
	clauseslist *new = malloc(sizeof(clauseslist));
	new->clause_number = clause->number;
	new->next = first;
	first = new;
      }
    }
    list = list->next;
  }
  return first;
}

clauseslist *build_candidates_negpos(int type, int class, int literal, clauseslist *list) {
  clauseslist *first = NULL;
  
  while (list != NULL) {
    tclause *clause = get_clause(list->clause_number);
    if (clause != NULL) {
      if ((class == type && class != clause->class) ||
	  (class != type && type == clause->class)) {
	literalslist *aux;
	aux = clause->right;
	int found = 0;
	while (!found && aux != NULL) {
	  if (aux->literal == literal)
	    found = 1;
	  aux = aux->next;
	}
	if (found) {
	  clauseslist *new = malloc(sizeof(clauseslist));
	  new->clause_number = clause->number;
	  new->next = first;
	  first = new;
	}
      }
    }
    list = list->next;
  }
  return first;
}


clauseslist *build_candidates_newnegordpos(clauseslist *list) {
  clauseslist *first = NULL;

  while (list != NULL) {
    tclause *clause = get_clause(list->clause_number);
    if (clause != NULL) {
      if (clause->class == NEGATIVEC) {
	clauseslist *new = malloc(sizeof(clauseslist));
	new->clause_number = clause->number;
	new->next = first;
	first = new;
      }
    }
    list = list->next;
  }
  return first;
}

clauseslist *build_candidates(int literal, clauseslist *list) {
  clauseslist *first = NULL;
  while (list != NULL) {
    tclause *clause = get_clause(list->clause_number);

    if (clause != NULL) {    
      literalslist *aux;
      aux = clause->right;
      int found = 0;
      while (!found && aux != NULL) {
	if (aux->literal == literal)
	  found = 1;
	aux = aux->next;
      }
      if (found) {
	clauseslist *new = malloc(sizeof(clauseslist));
	new->clause_number = clause->number;
	new->next = first;
	first = new;
      }
    }
    list = list->next;
  }
  return first;
}

clauseslist *free_candidates(clauseslist *c) {
  clauseslist *aux = c;
  while (aux != NULL) {
    aux = aux->next;
    free(c);
    c = aux;
  }
  return NULL;
}

void do_satlres (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {
    clauseslist *candidates;  
  
    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      literalslist *aux;
      for (aux = chosen->right; aux != NULL; aux = aux->next) {
	int lit = -aux->literal;
	int maxlit1 = MAX(lit,aux->literal);
	for (hmc = hmlp->max; hmc != NULL; hmc=hmc->hmax.next) {
	  int maxlit2 = MAX(hmc->max,-hmc->max);
	  if (maxlit2 >= maxlit1) {
	    for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	      candidates = build_candidates(lit,hsc->list);
	      do_res(aux->literal,chosen,candidates);
	      candidates = free_candidates(candidates);	       
	    }
	  }
	}
      }
    }
  }
}


void do_poslres (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {

    clauseslist *candidates;

    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      literalslist *aux;
      for (aux = chosen->right; aux != NULL; aux = aux->next) {
  	int lit = -aux->literal;
	int maxlit1 = MAX(lit,aux->literal);
	for (hmc = hmlp->max; hmc != NULL; hmc=hmc->hmax.next) {
	  int maxlit2 = MAX(hmc->max,-hmc->max);
	  if (maxlit2 >= maxlit1) {
	    for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	      candidates = build_candidates_negpos(POSITIVEC,chosen->class,lit,hsc->list);
	      do_res(aux->literal,chosen,candidates);
	      candidates = free_candidates(candidates);
	    }
	  }
	}
      }
    }
  }
}



void do_neglres (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {

    clauseslist *candidates;

    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      literalslist *aux;
      for (aux = chosen->right; aux != NULL; aux = aux->next) {
  	int lit = -aux->literal;
	int maxlit1 = MAX(lit,aux->literal);
	for (hmc = hmlp->max; hmc != NULL; hmc=hmc->hmax.next) {
	  int maxlit2 = MAX(hmc->max,-hmc->max);
	  if (maxlit2 >= maxlit1) {
	    for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	      candidates = build_candidates_negpos(NEGATIVEC,chosen->class,lit,hsc->list);
	      do_res(aux->literal,chosen,candidates);
	      candidates = free_candidates(candidates);
	    }
	  }
	}
      }
    }
  }
}

void do_ordlres (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {
    int maxlit = -chosen->max_literal;
    clauseslist *candidates;

    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      HASH_FIND(hmax,hmlp->max,&maxlit,sizeof(int),hmc);
      if (hmc != NULL)
	for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	  candidates = hsc->list;
	  do_res(chosen->max_literal,chosen,candidates);
	}
    }
  }
}

void do_newnegordlres (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);
  
  if (chosen != NULL) {
    if (chosen->class == NEGATIVEC)
      do_ordlres(clause);
    else if (chosen->max_literal > 0) { //otherwise it can't be resolved with a negative clause
      
      clauseslist *candidates;

      HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
      if (hmlp != NULL) {
	int lit = -chosen->max_literal;
	HASH_FIND(hmax,hmlp->max,&lit,sizeof(int),hmc);
	if (hmc != NULL) {
	  for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	    candidates = build_candidates_newnegordpos(hsc->list);
	    do_res(-lit,chosen,candidates);
	    candidates = free_candidates(candidates);
	  }
	}
      }
    }
  }
}

/* Ordered + negative resolution: if the clause is negative, do negative resolution; otherwise, do ordered resolution */

/* This is obviously complete, as it is generating all clauses from ordered resolution + clauses generated by negative resolution when the clause is negative
*/

void do_ordneglres (int clause) {

  tclause *chosen = get_clause(clause);

  if (chosen->class == NEGATIVEC && chosen->just != NULL && (chosen->just->rule == GEN1 ||  chosen->just->rule == GEN3))
    do_neglres(clause); // select all literals, because they are all negative
  else do_ordlres(clause); // select the maximal literal
}

/* Select negative literals */

void do_selectlres_1(int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {

    clauseslist *candidates;

    int lit = -chosen->max_literal;
    int maxlit1 = MAX(lit,chosen->max_literal);
  
    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      for (hmc = hmlp->max; hmc != NULL; hmc=hmc->hmax.next) {
	int maxlit2 = MAX(hmc->max,-hmc->max);
	if (maxlit2 >= maxlit1) {
	  for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	    candidates = build_candidates_selection_1(lit,hsc->list);
	    do_res(chosen->max_literal,chosen,candidates);
	    candidates = free_candidates(candidates);
	  }
	}
      }
    }
  }
}

void do_selectlres_2(literalslist *list, int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {
    clauseslist *candidates;

    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      for (hmc = hmlp->max; hmc != NULL; hmc=hmc->hmax.next) {
	literalslist *aux = list;
	while (aux != NULL) { // max literal of candidate = -literal of chosen
	  if (hmc->max == -aux->literal) {
	    for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) { 
	      candidates = build_candidates_selection_2(-aux->literal,hsc->list);
	      do_res(aux->literal,chosen,candidates);
	      candidates = free_candidates(candidates);
	    }
	  }
	  aux = aux->next;
	}
      }
    }
  }
}


/*

For negative ordered resolution with selection function S:C -> negative literals in C

D | l 

D' | ~l
-------
D | D'

- l is maximal with respect to D
- D is positive
- either:
-- ~l is selected in (D' | ~l): it is a negative literal; or 
-- if nothing is selected in D', then ~l is maximal with respect to D'

*/

void do_ordselectlres (int clause) {

  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {

    literalslist *aux = chosen->right;
    int negative = 0;

    while (!negative && aux != NULL) {
      if (aux->literal != chosen->max_literal && aux->literal < 0)
	negative = 1;
      else aux = aux->next;
    }
    if (!negative) {
      do_selectlres_1(clause);
    }
    else {   /* Taking D' | ~l as chosen */
      literalslist *selection = NULL;
      aux = chosen->right;
      while (aux != NULL) {
	if (aux->literal < 0 || aux->literal == chosen->max_literal) {
	  literalslist *new = malloc(sizeof(literalslist));
	  new->literal = aux->literal;
	  new->next = selection;
	  selection = new;
	}
	aux = aux->next;
      }
      if (selection == NULL) {
	selection = malloc(sizeof(literalslist));
	selection->literal = chosen->max_literal;
	selection->next = NULL;
      }
      do_selectlres_2(selection,clause);
    }
  }
}

void do_lres(int clause) {
  //  do_newnegordlres(clause);
  if (literal_selection == ORDERED)
    do_ordlres(clause);
  else if (literal_selection == NEGATIVE)
    do_neglres(clause);
  else if (literal_selection == POSITIVE)
    do_poslres(clause);
  else if (literal_selection == NEGORDERED)
    do_ordneglres(clause);
  else if (literal_selection == ORDSELECT)
    do_ordselectlres(clause);
  else do_satlres(clause);
}
