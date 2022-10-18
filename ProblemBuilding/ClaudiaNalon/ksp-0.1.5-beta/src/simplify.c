#include <stdlib.h>
#include "prover.h"
#include "tree.h"
#include "symbol_table.h"

extern int is_literal (tnode *t);
extern int clausesize;

int compare_literal(int id1, int id2) {
  if (id1 < 0)
    id1 = -id1;
  if (id2 < 0)
    id2 = -id2;
  return (id1 <= id2);
}


void split_clause(literalslist *l, literalslist **left, literalslist **right) {
  literalslist *fast;
  literalslist *slow;

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

literalslist *sorted_merge_clause(literalslist *left, literalslist *right) {
  literalslist *result = NULL;
  if (left == NULL)
    return right;
  else if (right == NULL)
    return left;
  else if (compare_literal(left->literal,right->literal)){
    result = left;
    result->next = sorted_merge_clause(left->next,right);
  }
  else {
    result = right;
    result->next = sorted_merge_clause(left,right->next);
  }
  return result;
}

void sort_clause(literalslist **l) {
  literalslist *head = *l;
  literalslist *left;
  literalslist *right;
  
  if (head == NULL || head->next == NULL)
    return;
  else {
    split_clause(head,&left,&right);
    sort_clause(&left);
    sort_clause(&right);
    *l = sorted_merge_clause(left,right);
  }
}


literalslist *remove_repeated_clause(literalslist *l) {
  literalslist *tmp1, *tmp2;

  while (l->literal == CFALSE && l->next != NULL) { // false occurs at the beginning of a "real" disjunction, so it only needs to be removed
    tmp1 = l;
    l = l->next;
    free(tmp1);
    clausesize = clausesize - 2; // the symbol and the disjunction
  }
  if (l->next == NULL) return l;
  tmp1 = l;
  tmp2 = tmp1->next;
  while (tmp2 != NULL) {
    if ((tmp2->literal == tmp1->literal) ||
	(tmp2->literal == CFALSE)) {
      if (tmp2->literal != CFALSE && tmp2->literal < 0)
	clausesize = clausesize - 1; // for the negation symbol
      tmp1->next = tmp2->next;
      free(tmp2);
      tmp2 = tmp1->next;
      clausesize = clausesize - 2; // the symbol and the disjunction;
    }
    else {
      tmp1 = tmp2;
      tmp2 = tmp1->next;
    }
  }
  return l;
}

literalslist *simplify_tautology_clause(literalslist *l){ 
  literalslist *tmp;
  tmp = l;
  while (tmp != NULL && tmp->next != NULL) {
    if ((tmp->literal == -tmp->next->literal) ||
	(tmp->literal == CTRUE)) {
      if (l->literal < 0)
	clausesize = clausesize - 1;
      l->literal = CTRUE;
      tmp = l->next;
      l->next = NULL;
      while (tmp != NULL) {
	if (tmp->literal != CTRUE && tmp->literal < 0)
	  clausesize = clausesize - 1; // for the negation symbol
	clausesize = clausesize - 2; // the symbol and the disjunction;
	literalslist *aux;
	aux = tmp->next;
	free(tmp);
	tmp = aux;
	
      }
      return l;
    }
    else tmp = tmp->next;
  }
  return l;
}

literalslist *simplify_clause(literalslist *l) {
  sort_clause(&l);
  l = remove_repeated_clause(l);
  l = simplify_tautology_clause(l);
  return l;
}


literalslist *simplify_disjunction (literal_list *l) {

  literalslist *first = NULL;

  while (l != NULL) {
    literalslist *lit = malloc(sizeof(literal_list));
    lit->literal = is_literal(l->literal);
    lit->next = first;
    first = lit;
    l = l->next;
  }

  return simplify_clause(first);
}
