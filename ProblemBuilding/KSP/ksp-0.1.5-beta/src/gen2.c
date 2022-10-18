#include <stdio.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);

extern int numclause;
extern int numfsubsumed;
extern int numbsubsumed;
extern int numtautologies;
extern int diamond_restricted_res;

tclause *resolve_clauses_gen2(tclause *c1, tclause *c2, tclause *c3) {
  tclause *resolvent = NULL;
  int num_subtype = 0;
  if (c1->subtype > BOX)
    num_subtype++;
  if (c2->subtype > BOX)
    num_subtype++;
  if (c3->subtype > BOX)
    num_subtype++;
  if (!diamond_restricted_res || num_subtype <= 1) {
    if (c2->right->literal == -c3->right->literal) {
      int subtype = BOX;
      if (c1->subtype > BOX)
        subtype = c1->subtype;
      else if (c2->subtype > BOX)
        subtype = c2->subtype;
      else if (c3->subtype > BOX)
        subtype = c3->subtype;
    resolvent = malloc(sizeof(tclause));
    resolvent->number = numclause++;
    resolvent->type = LITERAL;
    resolvent->subtype = subtype;
    resolvent->numdiamond = BOX;
    //resolvent->subtype = BOX;
    resolvent->modal_level = c1->modal_level;
    resolvent->agent = 0;
    resolvent->left = CTRUE;
    literalslist *l = malloc(sizeof(literalslist));
    l->literal = -c1->left;
    l->next = malloc(sizeof(literalslist));
    l->next->literal = -c2->left;
    l->next->next = malloc(sizeof(literalslist));
    l->next->next->literal = -c3->left;
    l->next->next->next = NULL;
    resolvent->right = simplify_clause(l);
    resolvent->size = size_clause(resolvent->right);
    resolvent->max_literal = max_lit_clause(resolvent->right);
    resolvent->min_literal = resolvent->right->literal;
    resolvent->class = classify_clause(resolvent->right);
    
    clauseslist *parent = malloc(sizeof(clauseslist));
    parent->clause_number = c1->number;
    parent->next = malloc(sizeof(clauseslist));
    parent->next->clause_number = c2->number;
    parent->next->next = malloc(sizeof(clauseslist));
    parent->next->next->clause_number = c3->number;
    parent->next->next->next = NULL;
    literalslist *literals = malloc(sizeof(literalslist));
    literals->literal = c2->right->literal;
    literals->next = NULL;
    struct justification *just = malloc(sizeof(justification));
    just->rule = GEN2;
    just->parents = parent;
    just->literals = literals;
    resolvent->just = just;
    resolvent->deleted = NULL;
    }
  }
  return resolvent;
}

void resolve_sets_gen2 (clauseslist *pos1, clauseslist *pos2, hmaxlitclauses *neg){
 clauseslist *auxpos1, *auxpos2;
 hmaxlitclauses *auxneg;
 /* For the clauses where []~p occurs */
 for (auxpos1 = pos1; auxpos1 != NULL; auxpos1 = auxpos1->next)
   /* For the clauses where []p occurs */
   for (auxpos2 = pos2; auxpos2 != NULL; auxpos2 = auxpos2->next) {
     tclause *c1, *c2;
     c1 = get_clause(auxpos1->clause_number);
     c2 = get_clause(auxpos2->clause_number);
     /* Iterates over all negative modal clauses for each max literal*/     
     for (auxneg = neg; auxneg != NULL; auxneg = auxneg->hmax.next) {
       clauseslist *neg = NULL;
       /* Iterates over all lists of clauses for each max literal */
	for (neg = auxneg->list; neg != NULL; neg = neg->next) {
	  tclause *c3 = get_clause(neg->clause_number);
	  tclause *resolvent = resolve_clauses_gen2(c3,c1,c2);
	  if (resolvent != NULL) insert_clause_set(&resolvent,LITERAL,SOS);
	}
      }
   }
}


void do_gen2 (hml_mclauses *set) {
  hml_mclauses *aux = set;
  hagentclauses *hag = NULL;
  
  for (aux=set; aux != NULL; aux=aux->hml.next) {
    for (hag=aux->id; hag != NULL; hag=hag->hid.next) {
      if (hag->type != NULL) {
	htypeclauses *htc_pos = hag->type;
	htypeclauses *htc_neg = htc_pos->htype.next;
	if (htc_pos != NULL && htc_neg != NULL) {
	  if (htc_pos->type != MPOSITIVE) {
	    htc_neg = hag->type;
	    htc_pos = htc_neg->htype.next;
	  }
	  hmaxlitclauses *pos1 = NULL;
	  /* Iterates ove the set of positive modal clauses */
	  for (pos1 = htc_pos->lit; pos1 != NULL; pos1 = pos1->hmax.next) {
	    /* Only look for clauses where the max literal is negative: ~p */
	    if (pos1->max < 0) {
	      hmaxlitclauses *pos2 = NULL;
	      int max = -(pos1->max);
	      HASH_FIND(hmax,htc_pos->lit,&max,sizeof(int),pos2);
	      /* Find the set of positive clauses with the complement: p */
	      if (pos2 != NULL) {
		resolve_sets_gen2(pos1->list,pos2->list,htc_neg->lit);
	      }
	    }
	  }
	}
      }
    }
  }
}
