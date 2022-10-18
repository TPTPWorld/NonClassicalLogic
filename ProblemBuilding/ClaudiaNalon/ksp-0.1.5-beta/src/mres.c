#include <stdio.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist * l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);
extern void delete_clause (tclause *clause);
extern void insert_clause_deleted (tclause *clause);
extern clauseslist *build_modal_negative(hml_mclauses *set,int agent,int modal_level);
extern void move_clause_modal(tclause *c, hml_mclauses **set_out, hml_mclauses **set_in);

extern int numclause;
extern int numfsubsumed;
extern int numbsubsumed;
extern int numtautologies;

extern int strong_modal_positive;
extern int modal_positive;
extern int modal_negative;
extern int mres;
extern int diamond_restricted_res;

extern hml_mclauses *m_sos;
extern hml_mclauses *m_usable;

tclause *resolve_clauses_mres(tclause *c1, tclause *c2) {
  tclause *resolvent = NULL;
  if (!diamond_restricted_res || c1->subtype == BOX || c2->subtype == BOX || (c1->subtype == c2->subtype)) {
    if (c1->right->literal == -c2->right->literal) {
      resolvent = malloc(sizeof(tclause));
      resolvent->number = numclause++;

      resolvent->type = LITERAL;
      resolvent->subtype = MAX(c1->subtype,c2->subtype);
      //resolvent->subtype = BOX;
      resolvent->numdiamond = BOX;
      resolvent->modal_level = c1->modal_level;
      resolvent->agent = 0;
      resolvent->left = CTRUE;
      literalslist *l = malloc(sizeof(literalslist));
      l->literal = -c1->left;
      l->next = malloc(sizeof(literalslist));
      l->next->literal = -c2->left;
      l->next->next = NULL;
      resolvent->right = simplify_clause(l);
      resolvent->size = size_clause(resolvent->right);
      resolvent->max_literal = max_lit_clause(resolvent->right);
      resolvent->min_literal = resolvent->right->literal;
      resolvent->class = classify_clause(resolvent->right);

      clauseslist *parent = malloc(sizeof(clauseslist));
      parent->clause_number = c1->number;
      parent->next = malloc(sizeof(clauseslist));
      parent->next->clause_number = c2->number;
      parent->next->next = NULL;
      literalslist *literals = malloc(sizeof(literalslist));
      literals->literal = c1->right->literal;
      literals->next = NULL;
      parent->next->next = NULL;
      struct justification *just = malloc(sizeof(justification));
      just->rule = MRES;
      just->parents = parent;
      just->literals = literals;
      resolvent->just = just;
      resolvent->deleted = NULL;
    }
  }
  return resolvent;
}

void resolve_sets_mres (hmaxlitclauses *negative, hmaxlitclauses *positive) {
  hmaxlitclauses *neg, *pos;
  clauseslist *neglist, *poslist;

  for (neg = negative; neg != NULL; neg = neg->hmax.next) {
    for(neglist = neg->list; neglist != NULL; neglist = neglist->next) {
      tclause *aux_neg = get_clause(neglist->clause_number);
      int id = -aux_neg->max_literal;
      HASH_FIND(hmax,positive,&id,sizeof(int),pos);
      if (pos != NULL) {
	poslist = pos->list;
	while (poslist != NULL) {
	  tclause *aux_pos = get_clause(poslist->clause_number);
	  tclause* resolvent = resolve_clauses_mres(aux_neg,aux_pos);
	  if (resolvent != NULL) {
	    insert_clause_set(&resolvent,resolvent->type,SOS);
	  }
	  poslist = poslist->next;
	}
      }
    }
  }
}


tclause *resolve_box_false(tclause *c1, tclause *c2) {
  tclause *resolvent = NULL;
  if (!diamond_restricted_res || c1->subtype == BOX || c2->subtype == BOX || (c1->subtype == c2->subtype)) {

    resolvent = malloc(sizeof(tclause));
    resolvent->number = numclause++;

    resolvent->type = LITERAL;

    resolvent->subtype = MAX(c1->subtype,c2->subtype);
    //resolvent->subtype = BOX;
    resolvent->numdiamond = BOX;

    resolvent->modal_level = c1->modal_level;
    resolvent->agent = 0;
    resolvent->left = CTRUE;
    literalslist *l = malloc(sizeof(literalslist));
    l->literal = -c1->left;
    l->next = malloc(sizeof(literalslist));
    l->next->literal = -c2->left;
    l->next->next = NULL;
    resolvent->right = simplify_clause(l);
    resolvent->size = size_clause(resolvent->right);
    resolvent->max_literal = max_lit_clause(resolvent->right);
    resolvent->min_literal = resolvent->right->literal;
    resolvent->class = classify_clause(resolvent->right);

    clauseslist *parent = malloc(sizeof(clauseslist));
    parent->clause_number = c1->number;
    parent->next = malloc(sizeof(clauseslist));
    parent->next->clause_number = c2->number;
    parent->next->next = NULL;
    literalslist *literals = malloc(sizeof(literalslist));
    literals->literal = c1->right->literal;
    literals->next = NULL;
    parent->next->next = NULL;
    struct justification *just = malloc(sizeof(justification));
    just->rule = MRES;
    just->parents = parent;
    just->literals = literals;
    resolvent->just = just;
    resolvent->deleted = NULL;
  }
  return resolvent;
}

void resolve_clauses_box_false(clauseslist *negative, clauseslist *positive) {
  while (positive != NULL) {
    tclause *c1 = get_clause(positive->clause_number);
    positive = positive->next;
    clauseslist *aux = negative;
    while (aux != NULL) {
      tclause *c2 = get_clause(aux->clause_number);
      tclause *resolvent = resolve_box_false(c2,c1);
      if (resolvent != NULL) 
	insert_clause_set(&resolvent,resolvent->type,SOS);
      //      clauseslist *tmp = aux;
      aux = aux->next;
      //      free(tmp);
    }

    numbsubsumed += 1;
    clauseslist *parent2 = malloc(sizeof(clauseslist));
    parent2->clause_number = c1->number;
    parent2->next = NULL;
    justification *deleted = malloc(sizeof(justification));
    deleted->rule = BOXFALSE;
    deleted->parents = parent2;
    deleted->literals = NULL;
    c1->deleted = deleted;
    delete_clause(c1);
    insert_clause_deleted(c1);
  }
  clauseslist *aux = negative;
    while (aux != NULL) {
      clauseslist *tmp = aux;
      aux = aux->next;
      free(tmp);
    }
}

void do_box_false(hml_mclauses *set) {
  hml_mclauses *aux = set;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;
  
  int pos = MPOSITIVE;
  int cte_false = CFALSE;
  for (aux=set; aux != NULL; aux=aux->hml.next) {
    //    printf("\n ML: %d", aux->ml);
    for (hag=aux->id; hag != NULL; hag=hag->hid.next) {
      //      printf("\n Agent: %d", hag->id);
      HASH_FIND(htype,hag->type,&(pos),sizeof(int),htc);
      if (htc != NULL) {
	//printf("\n Type: %d", htc->type);
	HASH_FIND(hmax,htc->lit,&(cte_false),sizeof(int),hmaxlit);
	if (hmaxlit != NULL) {
	  //	printf("\n Literal: %d", hmaxlit->max);
	  clauseslist *positive = hmaxlit->list;
	  clauseslist *negative = build_modal_negative(set,hag->id,aux->ml);
	  if (positive != NULL && negative != NULL)
	    resolve_clauses_box_false(negative,positive);
	}
      }
    }
  }
}

void do_mres (hml_mclauses *set) {
  hml_mclauses *aux = set;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;

  if (set != NULL) 
    do_box_false(set);

  if (mres || (!strong_modal_positive && !modal_positive && !modal_negative)) {
    for (aux=set; aux != NULL; aux=aux->hml.next) {
      for (hag=aux->id; hag != NULL; hag=hag->hid.next) {
	hmaxlitclauses *positive = NULL, *negative = NULL;
	htc=hag->type;
	if (htc->type == MPOSITIVE) {
	  positive = htc->lit;
	  htc = htc->htype.next;
	  if (htc != NULL)
	    negative = htc->lit;
	}
	else {
	  negative = htc->lit;
	  htc = htc->htype.next;
	  if (htc != NULL)
	    positive = htc->lit;
	}
	if (positive != NULL && negative != NULL)
	  resolve_sets_mres(negative,positive);
      }
    }
  }
}
