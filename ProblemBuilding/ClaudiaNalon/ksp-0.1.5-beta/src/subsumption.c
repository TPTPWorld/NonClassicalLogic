#include <stdio.h>
#include <pthread.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

extern tclause *get_clause (int clause);
extern void delete_clause(tclause *clause);
extern clauseslist *delete_clause_list(tclause *c, clauseslist *l);
extern void insert_clause_deleted(tclause *clause);

extern hclauses *allclauses;
extern hml_pclauses *i_usable;
extern hml_pclauses *i_sos;
extern hml_pclauses *l_usable;
extern hml_pclauses *l_sos;

extern int forward_subsumption;
extern int backward_subsumption;
extern int numfsubsumed;
extern int numbsubsumed;
extern int diamond_restricted_res;

extern pthread_mutex_t mutexnumfsubsumed; 
extern pthread_mutex_t mutexnumbsubsumed; 
extern pthread_mutex_t mutexallclauses;
extern pthread_mutex_t mutexdeletedclauses;

extern hml_pclauses *set;
void delete_clause(tclause *clause);

/*

  The basics. If |c1| \leq |c2| and c2 contains c1,
  then c1 subsumes c2. Literal clauses at the same
  level than initial might subsume initial.

*/

int contains (literalslist *l1, literalslist *l2) {
  while (l2 != NULL) {
    while (l1 != NULL && l1->literal != l2->literal)
      l1 = l1->next;
    if ((l1 == NULL) && (l2 != NULL))
      return 0;
    l2 = l2->next;
  }
  return 1;
}

/* c1 subsumes c2 if c2 contains c1 */

int subsumes (tclause *c1, tclause *c2) {
  int subsume = 0;
  if (c1 != NULL && c2 != NULL) {
    if (!diamond_restricted_res || (c1->subtype == c2->subtype && c1->numdiamond == c2->numdiamond))
      if (c1->modal_level == c2->modal_level)
	if (c1->size <= c2->size)
	  if (((c1->type == c2->type) && (c1->left == c2->left)) ||
	      (c1->type == LITERAL && c2->type == INITIAL))
	    if (contains(c2->right,c1->right))
	      subsume = 1;
  }
  return subsume;
}

/*

 If clause is active it is not subsumed by any clause of the same size,
 because include_clause_list doesn't allow that.
 This goes through clauses at the same level
 and that are smaller than the clause being checked.
 Forward subsumption examines only older clauses than the clause
 being checked.
 Backward subsumption examines only newer clauses that the clause
 being checked.
*/



/* This removes from set any clause subsumed by "clause" */

void forward_subsumes (tclause *clause, hml_pclauses **set) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  clauseslist *todelete = NULL;

  HASH_FIND(hml,(*set),&((clause)->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    hmc = hmlp->max;
    while (hmc != NULL) {
      int max1 = clause->max_literal, max2 = hmc->max;
      if ( max1 < 0 ) max1 = -max1;
      if ( max2 < 0 ) max2 = -max2;
      if ( max2 >= max1) { // if max lit of clause is smaller or equal of that being test against, then it might be contained in that clause
	hsc = hmc->size;
	while (hsc != NULL) {
	  if ((clause)->size <= hsc->size) {
	    clauseslist *haux = hsc->list;
	    while (haux != NULL) {
	      if (haux->clause_number > (clause)->number) {
		tclause *aux = get_clause(haux->clause_number);
		if (aux != NULL && aux->deleted == NULL && subsumes(clause,aux)) {
		  clauseslist *new = malloc(sizeof(clauseslist));
		  new->clause_number = aux->number;
		  new->next = todelete;
		  todelete = new;
		}
	      }
	      haux = haux->next;
	    }
	  }
	  hsc = hsc->hsize.next;
	}
      }
      hmc = hmc->hmax.next;
    }
  }

  // it needs to be done in this way, otherwise I might crash
  // the lists implementing the hash
  
  while (todelete != NULL) {
    
    tclause *aux = get_clause(todelete->clause_number);
    if (aux != NULL && aux->deleted == NULL) { 
      pthread_mutex_lock (&mutexnumfsubsumed );
      numfsubsumed +=1;
      pthread_mutex_unlock (&mutexnumfsubsumed );
      clauseslist *parent = malloc(sizeof(clauseslist));
      parent->clause_number = clause->number;
      parent->next = NULL;
      justification *deleted = malloc(sizeof(justification));
      deleted->rule = FORWARD_SUBSUMES;
      deleted->parents = parent;
      deleted->literals = NULL;
      aux->deleted = deleted;
      delete_clause(aux);
      pthread_mutex_lock (&mutexdeletedclauses);
      insert_clause_deleted(aux);
      pthread_mutex_unlock (&mutexdeletedclauses);
    }
    clauseslist *aux2 = todelete;
    todelete = todelete->next;
    free(aux2);
  }		
}

/* This deletes "clause" if it is subsumed by any clause in the set */

int forward_subsumed (tclause **clause, hml_pclauses *set) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  int subsumed = 0;

  HASH_FIND(hml,set,&((*clause)->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    hmc = hmlp->max;
    while (!subsumed && hmc != NULL) {
      int max1 = (*clause)->max_literal, max2 = hmc->max;
      if ( max1 < 0 ) max1 = -max1;
      if ( max2 < 0 ) max2 = -max2;
      if ( max1 >= max2) { // clause can only be subsumed if it contains the other clause, so max of the clause being tested must be greater or equal the max of the clause it is being compared to
	hsc = hmc->size;
	while (!subsumed && hsc != NULL) {
	  if ((*clause)->size >= hsc->size) {
	    clauseslist *haux = hsc->list;
	    while (!subsumed && haux != NULL) {
	      if (haux->clause_number < (*clause)->number) {
		tclause *aux = get_clause(haux->clause_number);
		if (aux != NULL && aux->deleted == NULL && subsumes(aux,*clause)) {
		  subsumed = 1;
		  pthread_mutex_lock (&mutexnumfsubsumed);
		  numfsubsumed += 1;
		  pthread_mutex_unlock (&mutexnumfsubsumed);
		  clauseslist *parent = malloc(sizeof(clauseslist));
		  parent->clause_number = aux->number;
		  parent->next = NULL;
		  justification *deleted = malloc(sizeof(justification));
		  deleted->rule = FORWARD_SUBSUMED;
		  deleted->parents = parent;
		  deleted->literals = NULL;
		  (*clause)->deleted = deleted;
		  delete_clause(*clause);
		  pthread_mutex_lock (&mutexdeletedclauses);
		  insert_clause_deleted(*clause);
		  pthread_mutex_unlock (&mutexdeletedclauses);
		}
	      }
	      if (haux != NULL) 
		haux = haux->next;
	    }
	  }
	  if (hsc != NULL) 
	    hsc = hsc->hsize.next;
	}
      }
      if (hmc != NULL) 
	hmc = hmc->hmax.next;
    }
  }
  return subsumed;
}


/* This removes from set any clause subsumed by "clause" */

void backward_subsumes (tclause *clause, hml_pclauses **set) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  clauseslist *todelete = NULL;

  HASH_FIND(hml,(*set),&((clause)->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    hmc = hmlp->max;
    while (hmc != NULL) { 
      int max1 = clause->max_literal, max2 = hmc->max;
      if ( max1 < 0 ) max1 = -max1;
      if ( max2 < 0 ) max2 = -max2;
      if ( max2 >= max1) { // clause in set must have a literal that is bigger than that in clause 
	hsc = hmc->size;
	while (hsc != NULL) {
	  if ((clause)->size <= hsc->size) {
	    clauseslist *haux = hsc->list;
	    while (haux != NULL) {
	      if (haux->clause_number < (clause)->number) {
		tclause *aux = get_clause(haux->clause_number);
		if (aux != NULL && aux->deleted == NULL && subsumes(clause,aux)) {
		  clauseslist *new = malloc(sizeof(clauseslist));
		  new->clause_number = aux->number;
		  new->next = todelete;
		  todelete = new;
		}
	      }
	      haux = haux->next;
	    }
	  }
	  hsc = hsc->hsize.next;
	}
      }
      hmc = hmc->hmax.next;
    }
  }

  // it needs to be done in this way, otherwise I might crash
  // the lists implementing the hash
  
  while (todelete != NULL) {
    
    tclause *aux = get_clause(todelete->clause_number);
    if (aux != NULL && aux->deleted == NULL) {
      pthread_mutex_lock (&mutexnumbsubsumed);
      numbsubsumed +=1;
      pthread_mutex_unlock (&mutexnumbsubsumed);
      clauseslist *parent = malloc(sizeof(clauseslist));
      parent->clause_number = clause->number;
      parent->next = NULL;
      justification *deleted = malloc(sizeof(justification));
      deleted->rule = BACKSUBSUMED;
      deleted->parents = parent;
      deleted->literals = NULL;
      aux->deleted = deleted;
      delete_clause(aux);
      pthread_mutex_lock (&mutexdeletedclauses);
      insert_clause_deleted(aux);
      pthread_mutex_unlock (&mutexdeletedclauses);
    }
    clauseslist *aux2 = todelete;
    todelete = todelete->next;
    free(aux2);
  }		
}


/* This deletes a clause if it is subsumed by any clause in the set */

int backward_subsumed (tclause **clause, hml_pclauses *set) {

  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;

  int subsumed = 0;
  HASH_FIND(hml,set,&((*clause)->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    hmc = hmlp->max;
    while (!subsumed && hmc != NULL) { 
      int max1 = (*clause)->max_literal, max2 = hmc->max;
      if ( max1 < 0 ) max1 = -max1;
      if ( max2 < 0 ) max2 = -max2;
      if ( max1 >= max2) {
	hsc = hmc->size;
	while (!subsumed && hsc != NULL) {
	  if ((*clause)->size >= hsc->size) {
	    clauseslist *haux = hsc->list;
	    while (!subsumed && haux != NULL) {
	      if (haux->clause_number > (*clause)->number) {
		tclause *aux = get_clause(haux->clause_number);
		if ((*clause) != NULL && (*clause)->deleted == NULL && subsumes(aux,*clause)) {
		  subsumed = 1;
		  pthread_mutex_lock (&mutexnumfsubsumed);
		  numfsubsumed += 1;
		  pthread_mutex_unlock (&mutexnumfsubsumed);
		  clauseslist *parent = malloc(sizeof(clauseslist));
		  parent->clause_number = aux->number;
		  parent->next = NULL;
		  justification *deleted = malloc(sizeof(justification));
		  deleted->rule = BACKSUBSUMED;
		  deleted->parents = parent;
		  deleted->literals = NULL;
		  (*clause)->deleted = deleted;
		  delete_clause(*clause);
		  pthread_mutex_lock (&mutexdeletedclauses);
		  insert_clause_deleted(*clause);
		  pthread_mutex_unlock (&mutexdeletedclauses);
		}
	      }
	      if (haux != NULL) 
		haux = haux->next;
	    }
	  }
	  if (hsc != NULL) 
	    hsc = hsc->hsize.next;
	}
      }
      if (hmc != NULL) 
	hmc = hmc->hmax.next;
    }
  }
  return subsumed;
}

void self_subsumption (void) {
  if (forward_subsumption == ON || backward_subsumption == ON) {
    hclauses *aux = allclauses;   
    while (aux != NULL) {
      tclause *clause = get_clause(aux->id);
      aux = aux->hid.next;
      if (aux != NULL && clause->deleted == NULL) {
	if (clause->type == INITIAL) {
	  forward_subsumed(&clause,i_usable);
	  if (clause->deleted == NULL)
	    forward_subsumed(&clause,l_usable);
	  if (clause->deleted == NULL)
	    forward_subsumed(&clause,i_sos);
	  if (clause->deleted == NULL)
	    forward_subsumed(&clause,l_sos);
	  if (clause->deleted == NULL) {
	    backward_subsumes(clause,&i_usable);
	    backward_subsumes(clause,&l_usable);
	    backward_subsumes(clause,&i_sos);
	    backward_subsumes(clause,&l_sos);
	  }
	}
	else if (clause->type == LITERAL) {
	  forward_subsumed(&clause,l_usable);
	  if (clause->deleted == NULL)
	    forward_subsumed(&clause,l_sos);
	  if (clause->deleted == NULL) {
	    backward_subsumes(clause,&l_usable);
	    backward_subsumes(clause,&l_sos);
	  }
	}
      }
    }
  }
}
	
