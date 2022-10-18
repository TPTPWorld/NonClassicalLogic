#include <pthread.h>
#include <stdio.h>
#include "prover.h"
#include "uthash.h"
#include "tree.h"
#include "symbol_table.h"
#include "clauses.h"

extern int newtemp;
extern int classify_clause (literalslist *l);
extern void print_clause(tclause *clause);

#define ABS(X) ((X < 0) ? (-X) : (X))
#define ABS_LESS(X,Y) ((ABS(X) < ABS(Y)) ? 1 : 0)

extern int improved_snf_plus;

extern int ml_prover;
extern int modal_positive;
extern int strong_modal_positive;
extern int numclause;

extern hml_mclauses *m_usable;
extern hml_mclauses *m_sos;
extern hml_pclauses *l_sos;

extern int numprops;

extern void print_sos (void);
extern void delete_clause_all (int number);
extern tclause *get_clause (int clause);
extern prop_node *find_prop(int p);
extern int rename_formula(tnode *formula, int type, int set, int subtype, int modal_level);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern void insert_clause_modal (tclause **clause, hml_mclauses **set);
extern void insert_clause_prop (tclause **clause, hml_pclauses **set);
extern void insert_clause_deleted (tclause *clause);
extern clauseslist *delete_clause_list(tclause *c, clauseslist *l);
extern prop_node *insert_pnew_node (int id, int type);

int numdeleted = 0;
int num_improved = 0;

typedef struct clauseslistsnfplus {
  tclause *clause;
  struct clauseslistsnfplus *next;
} clauseslistsnfplus;


/* Scans the modal formulae doing the rewriting and renaming when needed */


//returns 1 if and only if the literal occurs in the propositional set of clauses and it is minimal in all such clauses it occurs.

int check_minimal(tclause *clause, int modal_level) {
  int literal = clause->right->literal;
  prop_node *p = NULL;
  hml_clauses *clauses = NULL;
  modal_level = modal_level + 1;
  
  p = find_prop(literal);
  HASH_FIND(hml,p->clauses,&(modal_level),sizeof(int),clauses);

  //  printf("\n Clause: ");print_clause(clause);
  
  int minimal = 1;
  int numliteral = 0;
  
  if (clauses != NULL) {
    clausesid *clauseslist = clauses->positive;
    while (minimal && clauseslist != NULL) {
      tclause *newclause = get_clause(clauseslist->id);
      //  printf("\n Newclause:");print_clause(newclause);
      if (newclause->type == LITERAL) {
	if (newclause->min_literal == -literal)
	  numliteral++;
	else {
	  if (ABS_LESS(newclause->min_literal,literal)) {
	    //    printf("\n newclause->minliteral: %d, literal: %d",ABS(newclause->min_literal), ABS(literal));
	    minimal = 0;
	  }
	}
      }
      else if ((newclause->type == MPOSITIVE || newclause->type == MNEGATIVE) &&
	       newclause->left == literal)
	minimal = 0;
      clauseslist = clauseslist->hid.next;
    }
    clauseslist = clauses->negative;
    while (minimal && clauseslist != NULL) {
      tclause *newclause = get_clause(clauseslist->id);
      //  printf("\n Newclause:");print_clause(newclause);
      if (newclause->type == LITERAL) {
	if (newclause->min_literal == -literal)
	  numliteral++;
	else {
	  if (ABS_LESS(newclause->min_literal,literal)) {
	    //    printf("\n newclause->minliteral: %d, literal: %d",ABS(newclause->min_literal), ABS(literal));
	    minimal = 0;
	  }
	}
      }
      else if ((newclause->type == MPOSITIVE || newclause->type == MNEGATIVE) &&
	       newclause->left == literal)
	minimal = 0;
      clauseslist = clauseslist->hid.next;
    }
  }
 
  //  printf("\n Minimal: %d, Numliteral:%d",minimal,numliteral);
  return (numliteral && minimal);
}

void free_clauses_set_m_snf_plus (hml_mclauses **set) {
  hml_mclauses *aux, *auxtmp;
  hagentclauses *hag, *hagtmp;
  htypeclauses *htc, *htctmp;
  hmaxlitclauses *hmaxlit, *hmaxlittmp;

  aux = *set;

  HASH_ITER(hml,*set,aux,auxtmp) {
    HASH_ITER(hid,aux->id,hag,hagtmp) {
      HASH_ITER(htype,hag->type,htc,htctmp) {
	HASH_ITER(hmax,htc->lit,hmaxlit,hmaxlittmp) {
	  if ((hmaxlit->max != CTRUE && hmaxlit->max != CFALSE) && (strong_modal_positive || (modal_positive && hmaxlit->max < 0))) {
	    clauseslist *list = hmaxlit->list;
	    while (list != NULL) {
	      tclause *clause = get_clause(list->clause_number);
	      list = list->next;
	      if (clause->deleted != NULL) { 
		hmaxlit->list = delete_clause_list(clause,hmaxlit->list);
		delete_clause_all(clause->number);
		numdeleted++;
		//delete_clause(clause);
		insert_clause_deleted(clause);
		//delete_clause_all(clause->number); // I have removed this so that clauses are kept in allclauses and can be outputed in the proof.
	      }
	    }
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
    if (aux == NULL) {
      HASH_DELETE(hml,*set,aux);
      free(aux);
      aux = NULL;
    }
  }
}



void snf_plus_by_set (hml_mclauses **modal_set) {

  hml_mclauses *aux;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  clauseslistsnfplus *newclauses = NULL;
  
  for (aux=*modal_set; aux != NULL; aux=aux->hml.next)
      for (hag=aux->id; hag != NULL; hag=hag->hid.next)
	for (htc=hag->type; htc != NULL; htc=htc->htype.next)
	  for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
	    if ((hmaxlit->max != CTRUE && hmaxlit->max != CFALSE) && (strong_modal_positive || (modal_positive && hmaxlit->max < 0))) {
	      clauseslist *l = hmaxlit->list;
	      while (l != NULL) {
		tclause *clause = get_clause(l->clause_number);

		int minimal = 0;
		if (improved_snf_plus && hmaxlit->max > 0) {
		  minimal = check_minimal(clause,clause->modal_level);
		}

		if (minimal)
		  num_improved++;
		else
		  {
		  int ml;
		  if (ml_prover) {
		    ml = clause->modal_level + 1;
		  }
		  else ml = clause->modal_level;
		
		  //int subtype = clause->subtype;
		  prop_node *p = NULL;
		  int id_plus;
		  if (clause->max_literal > 0) {
		    p = find_prop(clause->max_literal);
		    if (p->renposby == 0)
		      { prop_node *q = insert_pnew_node(newtemp++,HIGH);
			p->renposby = q->id;
		      }
		    id_plus = p->renposby;
		  }
		  else {
		    p = find_prop(-(clause->max_literal));
		    if (p->rennegby == 0)
		      { prop_node *q = insert_pnew_node(newtemp++,HIGH);
			p->rennegby = q->id;
		      }
		    id_plus = p->rennegby;
		  }
		      

		  //		  int id_plus = rename_formula(new,HIGH,set,clause->numdiamond,ml);
		  tclause *newclause = malloc(sizeof(tclause));
		  newclause->number = numclause++;
		  newclause->type = clause->type;
		  newclause->subtype = clause->subtype;
		  newclause->numdiamond = clause->numdiamond;
		  newclause->size = clause->size;
		  newclause->modal_level = clause->modal_level;
		  newclause->max_literal = id_plus;
		  newclause->min_literal = id_plus;
		  newclause->agent = clause->agent;
		  newclause->class = clause->class;
		  newclause->left = clause->left;
		  newclause->propagated = 0;
		  newclause->right = malloc(sizeof(literalslist));
		  newclause->right->literal = id_plus;
		  newclause->right->next = NULL;
		  newclause->just = malloc(sizeof(justification));
		  newclause->just->rule = SNF_PLUS;
		  clauseslist *parent = malloc(sizeof(clauseslist));
		  parent->clause_number = clause->number;
		  parent->next = NULL;	  
		  newclause->just->parents = parent;
		  newclause->just->literals = NULL;
		  newclause->deleted = NULL;

		  clauseslist *parent_deleted = malloc(sizeof(clauseslist));
		  parent_deleted->clause_number = newclause->number;
		  parent_deleted->next = NULL;
		  
		  literalslist *literals = malloc(sizeof(literalslist));
		  literals->literal = clause->right->literal;
		  literals->next = NULL;

		  justification *deleted = malloc(sizeof(justification));
		  deleted->rule = SNF_PLUS;
		  deleted->parents = parent_deleted;
		  deleted->literals = literals;

		  clause->deleted = deleted;

		  clauseslistsnfplus *auxclauses = malloc(sizeof(clauseslistsnfplus));
		  auxclauses->clause = newclause;
		  auxclauses->next = newclauses;
		  newclauses = auxclauses;


		  tclause *literal = malloc(sizeof(tclause));
		  literal->number = numclause++;
		  literal->type = LITERAL;
		  literal->subtype = clause->subtype;
		  literal->numdiamond = clause->numdiamond;
		  literal->size = 2;
		  literal->modal_level = ml;
		  literal->max_literal = clause->max_literal;
		  literal->min_literal = -id_plus;
		  literal->agent = 0;
		  literal->left = CTRUE;
		  literal->propagated = 0;
		  literal->right = malloc(sizeof(literalslist));
		  literal->right->literal = -id_plus;
		  literal->right->next = malloc(sizeof(literalslist));
		  literal->right->next->literal = clause->max_literal;
		  literal->right->next->next = NULL;
		  literal->class = classify_clause(literal->right);
		  literal->just = malloc(sizeof(justification));
		  literal->just->rule = SNF_PLUS;
		  clauseslist *parentl = malloc(sizeof(clauseslist));
		  parentl->clause_number = clause->number;
		  parentl->next = NULL;	  
		  literal->just->parents = parentl;
		  literal->just->literals = NULL;
		  literal->deleted = NULL;
		  insert_clause_prop(&literal,&l_sos);
		  }
		l = l->next;	
	      }
	    }
	  }
  
  free_clauses_set_m_snf_plus(&(*modal_set));

  while (newclauses != NULL) {
    insert_clause_modal(&(newclauses->clause),&(*modal_set));
    clauseslistsnfplus *auxclauses = newclauses->next;
    free(newclauses);
    newclauses = auxclauses;
  }

}

void snf_plus(void) {
  snf_plus_by_set(&m_usable);
  snf_plus_by_set(&m_sos);
  //  printf("\n Num_improved: %d\n", num_improved);
}
