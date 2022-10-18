#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "prover.h"
#include "uthash.h"
#include "symbol_table.h"
#include "tree.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))
#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))

extern agent_node *find_agent (int id);

extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);

extern int is_literal (tnode *t);
extern int is_diamond (tnode *t);
extern int is_box (tnode *t);
extern tnode *simplify_s4(tnode *s);
extern tnode *simplify_s5(tnode *s);

extern int formulasize;

int counting = 0;

int is_modal_term(tnode *s) {
  if (s != NULL) {
    if (is_literal(s)) return 1;
    if (is_box(s)) return is_modal_term(s->left);
    if (is_diamond(s)) return is_modal_term(s->left);
  }
  return 0;
}

tnode *get_antiprenex(tnode *s) {

  if (s == NULL)
    return NULL;
  else switch (s->type) {
    case SETC:
      {
	s->right = get_antiprenex(s->right);
	if (s->right != NULL)
	  s->mdepth = MAX(s->left->mdepth,s->right->mdepth);
	else s->mdepth = s->left->mdepth;
	return s;
      }
      break;
    case SETF:
      {
	s->left = get_antiprenex(s->left);
	s->right = get_antiprenex(s->right);
	if (s->right != NULL)
	  s->mdepth = MAX(s->left->mdepth,s->right->mdepth);
	else s->mdepth = s->left->mdepth;
	return s;
      }
      break;
    case CONSTANT:
    case PROP:
      return s;
      break;
    case BOX:
      {
	if (is_modal_term(s)) {
	  agent_node *a = find_agent(s->id);
	  if ((a->axioms & FIVE) == FIVE && (a->axioms & FOUR))
	    return simplify_s5(s);
	  if ((a->axioms & T) && (a->axioms & FOUR))
	    return simplify_s4(s);
	  return s;
	}
	else if (s->left->type == DISJUNCTION) {
	  s->left = get_antiprenex(s->left);
	  return s;
	}
	else if (s->left->type == CONJUNCTION) {
	  formulalist *aux = s->left->list;
	  int md = 0;
	  formulasize = formulasize - 1;
	  while (aux != NULL) {
	    formulasize = formulasize + 1;
	    aux->formula = create_tnode(BOX,s->id,aux->formula->mdepth+1,aux->formula,NULL,NULL);
	    if (aux->formula->mdepth > md)
	      md = aux->formula->mdepth;
	    aux = aux->next;
	  }
	  s->type = CONJUNCTION;
	  s->mdepth = md;
	  s->list = s->left->list;
	  s->left = NULL;
	  return get_antiprenex(s);
	}
	else if (is_box(s->left) || is_diamond(s->left)) {
	  s->left = get_antiprenex(s->left);
	  if (s->left->type == CONJUNCTION)
	  return get_antiprenex(s);
	  else return s;
	}
	printf("\n It shouldn't be here (box).\n");
	return s;
      }
      break;
    case DIAMOND:
      {
	if (is_modal_term(s)) {
	  agent_node *a = find_agent(s->id);
	  if ((a->axioms & FIVE) == FIVE && (a->axioms & FOUR))
	    return simplify_s5(s);
	  if ((a->axioms & T) && (a->axioms & FOUR))
	    return simplify_s4(s);

	  return s;
	}
	else if (s->left->type == CONJUNCTION) {
	  s->left = get_antiprenex(s->left);
	  return s;
	}
	else if (s->left->type == DISJUNCTION) {
	  formulalist *aux = s->left->list;
	  int md = 0;
	  formulasize = formulasize - 1;
	  while (aux != NULL) {
	    formulasize = formulasize + 1;
	    aux->formula = create_tnode(DIAMOND,s->id,aux->formula->mdepth+1,aux->formula,NULL,NULL);
	    aux->formula->numdiamond = s->numdiamond;
	    if (aux->formula->mdepth > md)
	      md = aux->formula->mdepth;
	    aux = aux->next;
	  }
	  s->type = DISJUNCTION;
	  s->mdepth = md;
	  s->list = s->left->list;
	  s->left = NULL;
	  return get_antiprenex(s);
	}
	else if (is_box(s->left) || is_diamond(s->left)) {
	  s->left = get_antiprenex(s->left);
	  if (s->left->type == DISJUNCTION)
	    return get_antiprenex(s);
	  else return s;
	}
	printf("\n It shouldn't be here (diamond).\n");
	return s;
      }
      break;
    case NEGATION:
      {
	if (is_literal(s)) return s;
	return s;
      }
      break;
    case CONJUNCTION:
      {
	formulalist *aux = s->list;
	int max = 0;
	while (aux != NULL) {
	  aux->formula = get_antiprenex(aux->formula);
	  if (aux->formula->type == CONJUNCTION) {
	    formulalist *aux2 = aux->formula->list;
	    formulalist *aux3 = aux->formula->list;
	    while (aux3->next != NULL) {
	      aux3 = aux3->next;
	    }
	    aux3->next = aux->next;
	    aux->formula = aux2->formula;
	    aux->formula->mdepth = aux2->mdepth;
	    aux->next = aux2->next;
	    free(aux2);
	    aux = aux3;
	  }
	  if (aux->formula->mdepth > max)
	    max = aux->formula->mdepth;
	  aux = aux->next;
	}
	s->mdepth = max;
	return s;
      }
      break;
    case DISJUNCTION:
      {
	formulalist *aux = s->list;
	int max = 0;
	while (aux != NULL) {
	  aux->formula = get_antiprenex(aux->formula);
	  if (aux->formula->type == DISJUNCTION) {
	    formulalist *aux2 = aux->formula->list;
	    formulalist *aux3 = aux->formula->list;
	    while (aux3->next != NULL) {
	      aux3 = aux3->next;
	    }
	    aux3->next = aux->next;
	    aux->formula = aux2->formula;
	    aux->formula->mdepth = aux2->mdepth;
	    aux->next = aux2->next;
	    free(aux2);
	    aux = aux3;
	  }
	  if (aux->formula->mdepth > max)
	    max = aux->formula->mdepth;
	  aux = aux->next;
	}
	s->mdepth = max;
	return s;
      }
      break;
    default:
      return s;
      printf("We have a problem, Houston. In antiprenex. \n");
    }
}
