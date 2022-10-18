#include <stdio.h>
#include <pthread.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);

extern literalslist *free_disjunction(literalslist *dis);
extern justification *free_justification (justification *just);

extern int ml_prover;
extern int global;
extern int numagents;
extern int numclause;
extern int diamond_restricted_res;

extern hml_mclauses *m_sos;
extern pthread_mutex_t mutexnumclause;

typedef struct listsclauseslist {
  clauseslist *clauses;
  struct listsclauseslist *next;
} listsclauseslist;


void print_candidates(listsclauseslist *aux) {
  while(aux != NULL) {
    clauseslist *aux2 = aux->clauses;
    if (aux2 == NULL)
      printf(" nulo ");
    while (aux2 != NULL) {
      printf(" %d ",aux2->clause_number);
      aux2 = aux2->next;
    }
    printf("\n");
    aux = aux->next;
  }
}

clauseslist *copy(clauseslist *list1) {
  clauseslist *first = NULL;
  while(list1 != NULL) {
    clauseslist *newclause = malloc(sizeof(clauseslist));
    newclause->clause_number = list1->clause_number;
    newclause->next = first;
    first = newclause;
    list1 = list1->next;
  }
  return first;
}

listsclauseslist *combine (listsclauseslist *list1, listsclauseslist *list2) {
  listsclauseslist *newfirst = NULL;
  if (list2 == NULL) {
    clauseslist *aux = list1->clauses;
    while (aux != NULL) {
      listsclauseslist *newlist = malloc(sizeof(listsclauseslist));
      clauseslist *newclause = malloc(sizeof(clauseslist));
      newclause->clause_number = aux->clause_number;
      newclause->next = NULL;
      newlist->clauses = newclause;
      newlist->next = newfirst;
      newfirst = newlist;
      aux = aux->next;
    }
  }
  else {
    while (list2 != NULL) {
      clauseslist *aux = list1->clauses;
      while (aux != NULL) {
	listsclauseslist *newlist = malloc(sizeof(listsclauseslist));
	clauseslist *newclause = malloc(sizeof(clauseslist));
	newclause->clause_number = aux->clause_number;
	newclause->next = copy(list2->clauses);
	newlist->clauses = newclause;
	newlist->next = newfirst;
	newfirst = newlist;
	aux = aux->next;
      }
      list2 = list2->next;
    }
  }
  return newfirst;
}

listsclauseslist *build_resolvents_gen(listsclauseslist *candidates) {
  listsclauseslist *newcandidates = NULL;
  if (candidates == NULL)
    return NULL;
  else {
    newcandidates = build_resolvents_gen(candidates->next);
    newcandidates = combine(candidates,newcandidates);
  }
  return newcandidates;
}

void try_gen3(tclause *chosen, tclause *neg, listsclauseslist *resolvents) {

  listsclauseslist *aux = resolvents;
  while (aux != NULL) {
    tclause *resolvent = malloc(sizeof(tclause));
    resolvent->deleted = NULL;
    resolvent->just = NULL;
    resolvent->right = NULL;
    //resolvent->literals = NULL;

    justification *just = malloc(sizeof(justification));
    just->rule = GEN3;
    clauseslist *parents = malloc(sizeof(clauseslist));
    parents->clause_number = chosen->number;
    parents->next = malloc(sizeof(clauseslist));
    parents->next->clause_number = neg->number;
    parents->next->next = NULL;
    literalslist *literals = malloc(sizeof(literalslist));
    literals->literal = neg->right->literal;
    literals->next = NULL;
      
    literalslist *right = malloc(sizeof(literalslist));
    right->literal = -neg->left;
    right->next = NULL;

    clauseslist *auxres = aux->clauses;

    int num_subtype = 0;
    int num_diamond = 0;
    int subtype = BOX;
    while (auxres != NULL) {
      tclause *pos = get_clause(auxres->clause_number);

      if (pos->subtype > BOX) {
	if (!num_diamond) {
	  num_diamond = pos->subtype;
	  num_subtype = 1;
	}
	else if (pos->subtype != num_diamond)
	  num_subtype++;
      }
	//subtype = DIAMOND;
      
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

    if (!diamond_restricted_res || num_subtype <= 1) {
      pthread_mutex_lock (&mutexnumclause);
      resolvent->number = numclause++;
      pthread_mutex_unlock (&mutexnumclause);
      
    resolvent->type = LITERAL;
    resolvent->subtype = subtype;
    resolvent->numdiamond = BOX;
    //resolvent->subtype = BOX;
    resolvent->agent = 0;
    if (!ml_prover)
      resolvent->modal_level = 1;
    else resolvent->modal_level = chosen->modal_level - 1;
    resolvent->left = CTRUE;
    resolvent->right = simplify_clause(right);
    resolvent->size = size_clause(resolvent->right);
    resolvent->max_literal = max_lit_clause(resolvent->right);
    resolvent->min_literal = resolvent->right->literal;
    resolvent->class = classify_clause(resolvent->right);

    just->parents = parents;
    just->literals = literals;
    
    resolvent->just = just;

    insert_clause_set(&resolvent,resolvent->type,SOS);
    }
    else {
      resolvent->right = free_disjunction(resolvent->right);
      resolvent->just = free_justification(resolvent->just);
      resolvent->deleted = free_justification(resolvent->deleted);
      free(resolvent);
      resolvent = NULL;
    }

    aux = aux->next;
  }
}


clauseslist *build_modal_negative(hml_mclauses *set,int agent,int modal_level) {
  hml_mclauses *hmlm = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;
  int type = MNEGATIVE;

  clauseslist *first = NULL;
  
  HASH_FIND(hml,set,&modal_level,sizeof(int),hmlm);
  if (hmlm == NULL)
    return NULL;
  else {
     HASH_FIND(hid,hmlm->id,&agent,sizeof(int),hag);
     if (hag == NULL)
       return NULL;
     else {
       HASH_FIND(htype,hag->type,&type,sizeof(int),htc);
       if (htc == NULL)
	 return NULL;
       else {
	 for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
	   clauseslist *aux = hmaxlit->list;
	   while (aux != NULL) {
	     clauseslist *new = malloc(sizeof(clauseslist));
	     new->clause_number = aux->clause_number;
	     new->next = first;
	     first = new;
	     aux = aux->next;
	   }
	 }
       }
     }
  }
  return first;
}

clauseslist *build_modal_candidates(hml_mclauses *set,int agent,int modal_level,int type, int literal) {
  hml_mclauses *hmlm = NULL;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  HASH_FIND(hml,set,&modal_level,sizeof(int),hmlm);
  if (hmlm == NULL)
    return NULL;
  else {
     HASH_FIND(hid,hmlm->id,&agent,sizeof(int),hag);
     if (hag == NULL)
       return NULL;
     else {
       HASH_FIND(htype,hag->type,&type,sizeof(int),htc);
       if (htc == NULL)
	 return NULL;
       else {
	 HASH_FIND(hmax,htc->lit,&literal,sizeof(int),hmaxlit);
	 if (hmaxlit == NULL)
	   return NULL;
	 else return hmaxlit->list;
       }
     }
  }
}

void do_gen3(int clause) {
  tclause *chosen = get_clause(clause);

  if (chosen != NULL) {
    listsclauseslist *first = NULL;

    hml_mclauses *hmlm = NULL;
    hagentclauses *hag = NULL, *hagaux;
    htypeclauses *htc = NULL;
    hmaxlitclauses *hmaxlit = NULL;
  
    int modal_level;
    int type = MNEGATIVE;
  
    if (global == ON)
      modal_level = 1;
    else modal_level = chosen->modal_level-1;


    HASH_FIND(hml,m_sos,&modal_level,sizeof(int),hmlm);
    if (hmlm != NULL) {
      HASH_ITER(hid,hmlm->id,hag,hagaux) {
	int try = 1;
	literalslist *aux_pos = chosen->right;
	clauseslist *candidates = NULL;
	int size_candidates = 0;
	while (try && aux_pos != NULL) {
	  candidates = build_modal_candidates(m_sos,hag->id,modal_level,MPOSITIVE,-aux_pos->literal);
	  if (candidates == NULL) try = 0;
	  else {
	    listsclauseslist *new = malloc(sizeof(listsclauseslist));
	    new->clauses = candidates;
	    new->next = first;
	    first = new;
	    size_candidates++;
	  }
	  aux_pos = aux_pos->next;
	}
	if (try && size_candidates == chosen->size) {
	  HASH_FIND(htype,hag->type,&type,sizeof(int),htc);
	  if (htc != NULL) {
	    listsclauseslist *resolvents = build_resolvents_gen(first);
	    for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
	      clauseslist *aux_neg = hmaxlit->list;
	      while (aux_neg != NULL) {
		tclause *negative_clause = get_clause(aux_neg->clause_number);
		try_gen3(chosen,negative_clause,resolvents);
		aux_neg = aux_neg->next;
	      }
	    }
	    listsclauseslist *aux_res = resolvents;
	    while (aux_res != NULL) {
	      clauseslist *auxclauses = aux_res->clauses;
	      while (auxclauses != NULL) {
		clauseslist *tmpclauses = auxclauses;
		auxclauses = auxclauses->next;
		free(tmpclauses);
	      }
	      aux_res = aux_res->next;
	      free(resolvents);
	      resolvents = aux_res;
	    }
	  }
	}
	listsclauseslist *auxlist = first;
	while (auxlist != NULL) {
	  auxlist = auxlist->next;
	  free(first);
	  first = auxlist;
	}
      }
    }
  }
}
