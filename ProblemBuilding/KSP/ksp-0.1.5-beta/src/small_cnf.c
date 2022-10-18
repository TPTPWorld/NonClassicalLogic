#include <stdio.h>
#include "uthash.h"
#include "tree.h"
#include "prover.h"

extern void print_tree(tnode *);
extern void print_list(formulalist *);
extern tnode *get_cnf(tnode *t);
extern formulalist *distribute(formulalist * l);

tnode *calculate_afactor(tnode *formula, tnode *subformula);
tnode *calculate_pfactor(tnode *t);
tnode *recalculate_pfactor(tnode *t);

/* A renaming is just a list of formulae */

formulalist *R = NULL;

/* x is the polarity of a formula, y is the pfunction */
/* This is always going to return y, because formulae are in NNF */

int if_pos(int x, int y) {
  if (x >= 0) return y;
  else return 0;
}

formulalist *insert_formula_renaming(tnode *formula, formulalist *r) {
  formulalist *new = malloc(sizeof(formulalist));
  new->formula = formula;
  new->next = r;
  r = new;
  return r;
}

int nbel(tnode *formula) {
  return 1;
}

/* everything is of positive polarity */

int pol(tnode *sub, tnode *formula) {
  return 1;
}

int afactor(int a, tnode *formula, tnode *subformula) {

  int a_sub = 0;
  formula->afactor = a;
  
  switch (formula->type) {
  case SETC:
  case SETF:
  case PROP:
  case CONSTANT:
  case NEGATION:
  case CONJUNCTION:
    {
      a_sub = a;
      
    }	
    break;
  case BOX:
  case DIAMOND:
    {
      a_sub = 1;
    }
  case DISJUNCTION:
    {
      formulalist *aux = formula->list;
      int product = a;
      while (aux != NULL) {
	product = product * aux->formula->pfunction;
	aux = aux->next;
      }
      if (formula->pfunction != 0) {
	  product = product/formula->pfunction;
      }
      a_sub = product;
    }
    break;
  default: printf("\n We have a problem: in afactor. Formula->type = %d", formula->type);
  }
  subformula->afactor = a_sub;
  return a_sub;  
}

formulalist *direct_subformulae(formulalist *l, tnode *t) {
  
  if (t != NULL) {
    if (t->type != CONSTANT && t->type != PROP && t->type != NEGATION) { // we are not renaming literals, obviously
      if (t->left != NULL) {
	formulalist *new = malloc(sizeof(formulalist));
	new->formula = t->left;
	new->next = l;
	l = new;
      }
      if (t->right != NULL) {
	formulalist *new = malloc(sizeof(formulalist));
	new->formula = t->right;
	new->next = l;
	l = new;
      }
      formulalist *aux = t->list;
      while (aux != NULL) {
	formulalist *new = malloc(sizeof(formulalist));
	new->formula = aux->formula;
	new->next = l;
	l = new;
	aux = aux->next;
      }
    }
  }
  return l;
}

void r_rec(tnode *formula, int a, int b, int s) {
  if (formula->pfunction != 1) {
    if (a * formula->pfunction >= a + formula->pfunction) {
      R = insert_formula_renaming(formula,R);
      r_rec(formula,1,0,1);
      formula->pfunction = 1;
    }
    else {
      formulalist *sub = direct_subformulae(NULL,formula);
      while (sub != NULL) {
	int a_sub = afactor(a,formula,sub->formula);
	r_rec(sub->formula,a_sub,0,1);
	sub = sub->next;
      }
      formula = recalculate_pfactor(formula);
    }
  }
}


tnode *recalculate_pfactor(tnode *t) {
  if (t == NULL)
    return t;

  t->pfunction = 0;
  switch (t->type) {
  case SETC:
  case SETF:
    {
      if (t->right != NULL)
	t->pfunction = t->right->pfunction;
      t->pfunction = t->pfunction + t->left->pfunction;
    }	
    break;
  case PROP:
  case CONSTANT:
    {
      t->pfunction = 1;
      t->npfunction = 1;
      t->rfunction = 0;
    }
    break;
  case NEGATION:
    {
      t->pfunction = t->left->npfunction;
      t->npfunction = t->left->pfunction;
      t->rfunction = t->left->rfunction;
    }
    break;
  case CONJUNCTION:
    {
      formulalist *aux = t->list;
      while (aux != NULL) {
	t->pfunction = t->pfunction + aux->formula->pfunction;
	t->npfunction = t->npfunction * aux->formula->npfunction;
	t->rfunction = t->rfunction + aux->formula->rfunction + 1;
	aux = aux->next;
      }
    }
    break;
  case DISJUNCTION:
    {
      formulalist *aux = t->list;
      t->pfunction = 1;
      while (aux != NULL) {
	t->pfunction = t->pfunction * aux->formula->pfunction;
	t->npfunction = t->npfunction + aux->formula->npfunction;
	t->rfunction = t->rfunction + aux->formula->rfunction;
	aux = aux->next;
      }
    }
    break;
  case BOX:
  case DIAMOND:
    {
      t->pfunction = 1;
      t->npfunction = 1;
      t->rfunction = 0;
    }
    break;
  default: printf("\n We have a problem: in Small CNF.");
  }
  return t;
}


tnode *calculate_pfactor(tnode *t) {
  if (t == NULL)
    return t;

  if (t->distribute == 0) {
    t->pfunction = 1;
    t->npfunction = 1;
  }
  
  switch (t->type) {
  case SETC:
  case SETF:
    {
      t->left = calculate_pfactor(t->left);
      t->right = calculate_pfactor(t->right);
      if (t->right != NULL)
	t->pfunction = t->right->pfunction;
      t->pfunction = t->pfunction + t->left->pfunction;
    }	
    break;
  case PROP:
  case CONSTANT:
    {
      t->pfunction = 1;
      t->npfunction = 1;
      t->rfunction = 0;
    }
    break;
  case NEGATION:
    {
      t->left = calculate_pfactor(t->left);
      t->pfunction = t->left->npfunction;
      t->npfunction = t->left->pfunction;
      t->rfunction = t->left->rfunction;
    }
    break;
  case CONJUNCTION:
    {
      formulalist *aux = t->list;
      while (aux != NULL) {
	aux->formula = calculate_pfactor(aux->formula);
	t->pfunction = t->pfunction + aux->formula->pfunction;
	t->npfunction = t->npfunction * aux->formula->npfunction;
	t->rfunction = t->rfunction + aux->formula->rfunction + 1;
	aux = aux->next;
      }
    }
    break;
  case DISJUNCTION:
    {
      formulalist *aux = t->list;
      t->pfunction = 1;
      while (aux != NULL) {
	aux->formula = calculate_pfactor(aux->formula);
	t->pfunction = t->pfunction * aux->formula->pfunction;
	t->npfunction = t->npfunction + aux->formula->npfunction;
	t->rfunction = t->rfunction + aux->formula->rfunction;
	aux = aux->next;
      }
    }
    break;
  case BOX:
  case DIAMOND:
    {
      t->pfunction = 1; 
      t->rfunction = 0;
      t->left = calculate_pfactor(t->left);
    }
    break;
  default: printf("\n We have a problem: in Small CNF.");
  }
  return t;
}

tnode *get_small_cnf(tnode *s) {
  s = calculate_pfactor(s);
  r_rec(s,1,0,1);
  while (R != NULL) {
    R->formula->distribute = 0;
    formulalist *aux = R;
    R = R->next;
    free(aux);
  }
  s = get_cnf(s);
  return s;
}
