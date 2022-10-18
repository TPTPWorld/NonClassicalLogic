#include <stdio.h>
#include <pthread.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

typedef struct listsclauseslist {
  clauseslist *clauses;
  struct listsclauseslist *next;
} listsclauseslist;

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);
extern clauseslist *build_modal_candidates(hml_mclauses *set,int agent,int modal_level,int type, int literal);
extern listsclauseslist *build_resolvents_gen (listsclauseslist *candidates);
extern clauseslist *delete_clauses_list (clauseslist *l);

extern void print_candidates(listsclauseslist *aux);

extern int ml_prover;
extern int global;

extern int numagents;
extern int numclause;
extern int diamond_restricted_res;

extern hml_mclauses *m_sos;
extern pthread_mutex_t mutexnumclause;

listsclauseslist *check_resolvents_gen1(tclause *chosen, listsclauseslist *resolvents) {
  listsclauseslist *first = NULL;
  
  while (resolvents != NULL) {

    int num_subtype_diamond = 0;
    int num_diamond = 0;
    
    clauseslist *aux = resolvents->clauses;
    int sizeclause = 0;
    int negative = 0;
    while (aux != NULL) {
      tclause *clause = get_clause(aux->clause_number);
      if (clause->type == MNEGATIVE)
	negative++;
      if (clause->subtype > BOX) {
	if (!num_diamond) {
	  num_diamond = clause->subtype;
	  num_subtype_diamond = 1;
	}
	if (clause->subtype != num_diamond)
	  num_subtype_diamond++;
      }
      sizeclause++;
      aux = aux->next;
    }
    if (num_diamond == 0) num_diamond = 1;
    if (sizeclause == chosen->size && negative == 1 && (!diamond_restricted_res || num_subtype_diamond <= 1)) { // It must be the same size as chosen (note this was not simplified yet); it must have just one negative clause;
      listsclauseslist *new = malloc(sizeof(listsclauseslist));
      new->clauses = resolvents->clauses;
      new->next = first;
      first = new;
    }
    else delete_clauses_list(resolvents->clauses);
    
    listsclauseslist *auxres = resolvents;
    resolvents = resolvents->next;
    free(auxres);
  }
  return first;
}

void try_gen1(tclause *chosen, listsclauseslist *negative, listsclauseslist *positive) {

  /*
  extern void print_clause(tclause *clause);
  printf("\n Chosen:"); print_clause(chosen); printf("\n");

  printf("\n\n TRY GEN1: negative clauses\n");
  print_candidates(negative);

  printf("\n\n TRY GEN1: positive clauses:\n");
  print_candidates(positive);
  */
  
  while (negative != NULL) {
    
    tclause *c1 = get_clause(negative->clauses->clause_number);
    listsclauseslist *aux = positive;

    int size_candidates = 0;
    listsclauseslist *candidates = NULL;
    while (aux != NULL) {
      tclause *c2 = get_clause(aux->clauses->clause_number);
      if ((c2->max_literal != c1->max_literal) && (c2->max_literal != -c1->max_literal)){
	listsclauseslist *new = malloc(sizeof(listsclauseslist));
	new->clauses = aux->clauses;
	new->next = candidates;
	candidates = new;
	size_candidates++;
      }
      aux=aux->next;
    }
    if (size_candidates == chosen->size - 1) {

      listsclauseslist *new = malloc(sizeof(listsclauseslist));
      new->clauses = negative->clauses;
      new->next = candidates;
      candidates = new;

      /*  
      printf("\n %p", candidates->next);
      printf("\n\n TRY GEN1: candidates (1)\n");
      print_candidates(candidates);
      */
      
      listsclauseslist *resolvents = build_resolvents_gen(candidates);
      /*      printf("\n\n TRY GEN1: candidates (2)\n");
      print_candidates(candidates);

      printf("\n\n TRY GEN1: resolvents\n");
      print_candidates(resolvents); */

      resolvents = check_resolvents_gen1(chosen,resolvents); // check this
      /*
      printf("\n\n TRY GEN1: 3\n");
      print_candidates(resolvents);
      */
  
      while (resolvents != NULL) {
	tclause *resolvent = malloc(sizeof(tclause));
	justification *just = malloc(sizeof(justification));
	just->rule = GEN1;
	clauseslist *parents = malloc(sizeof(clauseslist));
	parents->clause_number = chosen->number;
	parents->next = NULL;
	literalslist *literals = NULL; // not including the literals from the literal clause in the justification
	literalslist *right = NULL;

	clauseslist *auxres = resolvents->clauses;

	int subtype = BOX;
	//int numdiamondres = chosen->numdiamond;

	while (auxres != NULL) {
	  tclause *pos = get_clause(auxres->clause_number);
	  if (pos->subtype > BOX) {
	    subtype = pos->subtype; // it has already been checked, so there at most one diamond clause
	    //numdiamondres = pos->numdiamond;
	  }
	  clauseslist *newparent = malloc(sizeof(clauseslist));
	  newparent->clause_number = pos->number;
	  newparent->next = parents;
	  parents = newparent;
	  literalslist *newliteral = malloc(sizeof(literalslist));
	  newliteral->literal = pos->right->literal;
	  newliteral->next = literals;
	  literals = newliteral;
	  literalslist *newright = malloc(sizeof(literalslist));
	  newright->literal = -pos->left;
	  newright->next = right;
	  right = newright;
	  auxres = auxres->next;
	}
	if (right == NULL) {
	  right = malloc(sizeof(literalslist));
	  right->literal = CFALSE;
	  right->next = NULL;
	  resolvent->right = right;
	}
	else resolvent->right = simplify_clause(right);
	just->parents = parents;
	just->literals = literals;
	resolvent->deleted = NULL;
	resolvent->just = just;
	
	pthread_mutex_lock (&mutexnumclause);
	resolvent->number = numclause++;
	pthread_mutex_unlock (&mutexnumclause);
      
	resolvent->type = LITERAL;
	resolvent->subtype = subtype;
	//      resolvent->numdiamond = numdiamondres;
	//resolvent->subtype = BOX;
	resolvent->numdiamond = BOX;
      
	resolvent->agent = 0;
	if (global == ON)
	  resolvent->modal_level = 1;
	else resolvent->modal_level = chosen->modal_level - 1;
	resolvent->left = CTRUE;
	resolvent->size = size_clause(resolvent->right);
	resolvent->max_literal = max_lit_clause(resolvent->right);
	resolvent->min_literal = resolvent->right->literal;
	resolvent->class = classify_clause(resolvent->right);

	insert_clause_set(&resolvent,resolvent->type,SOS);
      
	listsclauseslist *tmpres = resolvents;
	resolvents = resolvents->next;
	delete_clauses_list(tmpres->clauses);
	free(tmpres);
      }
    }
    
    listsclauseslist *auxdel = candidates;
    while (auxdel != NULL) {
      auxdel = auxdel->next;
      free(candidates);
      candidates = auxdel;
    }
    negative = negative->next;
  }
}


void do_gen1(int clause) {
  tclause *chosen = get_clause(clause);
  if (chosen != NULL) {
    literalslist *aux;
    listsclauseslist *first_neg = NULL;
    listsclauseslist *first_pos = NULL;
    int agent;
    int modal_level;

    if (global == ON)
      modal_level = 1;
    else modal_level = chosen->modal_level - 1;
  
    for (agent = 1; agent < numagents; agent++) {
      aux = chosen->right;
      while (aux != NULL) {
	clauseslist *negcandidates = build_modal_candidates(m_sos,agent,modal_level,MNEGATIVE,-aux->literal);
	if (negcandidates != NULL) {
	  listsclauseslist *newneg = malloc(sizeof(listsclauseslist));
	  newneg->clauses = negcandidates;
	  newneg->next = first_neg;
	  first_neg = newneg;
	}
	aux = aux->next;
      }

      int size = 0;
    
      if (first_neg != NULL) {
	aux = chosen->right;
	while (aux != NULL) {
	  clauseslist *poscandidates = build_modal_candidates(m_sos,agent,modal_level,MPOSITIVE,-aux->literal);
	  if (poscandidates != NULL) {
	    size++;
	    listsclauseslist *newpos = malloc(sizeof(listsclauseslist));
	    newpos->clauses = poscandidates;
	    newpos->next = first_pos;
	    first_pos = newpos;
	  }
	  aux = aux->next;	
	}
      }
      
      if (size >= chosen->size - 1) {
	try_gen1(chosen,first_neg,first_pos);
      }
    

      listsclauseslist *aux2 = first_neg;
      while (aux2 != NULL) {
	aux2 = aux2->next;
	free(first_neg);
	first_neg = aux2;
      }
      aux2 = first_pos;
      while (aux2 != NULL) {
	aux2 = aux2->next;
	free(first_pos);
	first_pos = aux2;
      }  
      first_neg = NULL;
      first_pos = NULL;
    }
  }
}

