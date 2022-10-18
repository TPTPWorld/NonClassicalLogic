#include <stdlib.h>
#include <stdio.h>
#include "prover.h"
#include "tree.h"
#include "symbol_table.h"

extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern void copy_node(tnode *t1, tnode *t2);
extern tnode *copy_tree(tnode *s);
extern tnode *free_tree(tnode *s);
extern void *print_tree(tnode *s);

extern formulalist *tree_to_list(int type, tnode *left, tnode *right);
extern unsigned int hash_tree (tnode *t);
extern unsigned int hash_list (formulalist *l);
extern void sort_formulalist(int type,formulalist **l);
extern formulalist *flatten(int type, formulalist *l);
extern formulalist *free_formulalist(formulalist *l);

extern prop_node *insert_hml_props(int type, int ml, prop_node *p, tnode *node);
extern prop_node *insert_p_position(prop_node *p, tnode *position);
extern prop_node *find_prop (int id);
extern tnode *update_parent(tnode *);

extern int formulasize;
extern int linearise;
extern int early_ple;
extern int early_mlple;
extern int bnf;
extern int bnfsimp;

int numdiamond = BOX + 1;

extern  void print_ren_hash (void);

tnode *remove_size_one_list(tnode *s) {
  
  tnode *parent = s->parent;
  formulalist *list = s->list;
  copy_node(s,list->formula);
  s = update_parent(s);
  s->parent = parent;
  if (list->formula->type == CONSTANT || list->formula->type == PROP) {
   list->formula = free_tree(list->formula);
  }
  else free(list->formula);
  free(list);
  list = NULL;
  if (s->type == CONSTANT) {
    prop_node *p = find_prop(s->id);
    p = insert_p_position(p,s);
  }
  else if (s->type == PROP) {
    prop_node *p = find_prop(s->id);
    if (s->polarity > 0) {
      p->occur_positive++;
      p = insert_hml_props(POSITIVEP,s->mlevel,p,s);
    }
    else {
      p->occur_negative++;
      p = insert_hml_props(NEGATIVEP,s->mlevel,p,s);
    }
  }
  return s;
}

formulalist *flatten_by_type(int type, formulalist *s) {

  formulalist *aux = s;
  while (aux != NULL) {
    if (aux->formula->type == type) {
		//	flag = 1;
      formulalist *aux2 = aux->formula->list;
      formulalist *aux3 = aux->formula->list;
      while (aux3->next != NULL) {
	aux3->parent = s->parent;
	aux3 = aux3->next;
      }
      aux3->next = aux->next;
      aux->formula = aux2->formula;
      aux->next = aux2->next;
      free(aux2);
      aux = aux3; // moves to the end of the list in formula then goes to the next
    }
    aux = aux->next;
  }
  return s;
}

extern tnode *root;

tnode *get_nnf(tnode *s, int modal_level, int polarity, int stat) {
  if (s == NULL)
    return NULL;
  s->polarity = polarity;
  s->mlevel = modal_level;
  switch (s->type) {
    case SETC:
      {
	s->right = get_nnf(s->right,modal_level,polarity,stat);
	return s;
      }
      break;
    case SETF: 
      {
	s->left = get_nnf(s->left,modal_level,polarity,stat);
	s->right = get_nnf(s->right,modal_level,polarity,stat);
	return s;
      }
      break;
    case CONSTANT:
      {
	prop_node *p = find_prop(s->id);
	p = insert_p_position(p,s);
	return s;
      }
      break;
    case PROP:
      {
	s->mlevel = modal_level;
	s->polarity = polarity;
	prop_node *p = find_prop(s->id);
	if (p == NULL) {printf("\nNNF_BNF: propositional symbol not found: s->id:%d\n",s->id); exit(0);}
	if (!linearise && !early_ple && !early_mlple) {
	  if (polarity > 0) {
	    p->occur_positive++;
	    p = insert_hml_props(POSITIVE,modal_level,p,s);
	  }
	  else {
	    p->occur_negative++;
	    p = insert_hml_props(NEGATIVE,modal_level,p,s);
	  }
	}
      return s;
      }
      break;
    case BOX:
      {
	s->left = get_nnf(s->left,modal_level+1,polarity,stat);
	s->value_number = hash_tree(s);
	s->numdiamond = BOX;
	return s;
      }
      break;
    case DIAMOND:
      {
	if (bnfsimp == ON) {
	  tnode *neg = create_tnode(NEGATION,NEGATION,s->left->mdepth,s->left,NULL,NULL);
	  tnode *box = create_tnode(BOX,s->id,s->mdepth,neg,NULL,NULL);
	  neg->parent = box;
	  box->parent = s;
	  s->type = NEGATION;
	  s->id = NEGATION;
	  s->left = box;
	  s->left = get_nnf(s->left,modal_level,-polarity,stat);
	  s->value_number = hash_tree(s);
	  formulasize = formulasize + 2;
	  return s;
	}
	else {
	  s->left = get_nnf(s->left,modal_level+1,polarity,stat);
	  s->value_number = hash_tree(s);
	  s->numdiamond = numdiamond++;
	}
	return s;
      }
      break;
    case NEGATION:
      {
	if (s->left != NULL) {
	  if (s->left->type == NEGATION) { // simplifies double negations
	    tnode *parent = s->parent;
	    tnode *new = s->left->left;
	    // I usually do things in place, but this doesn't change positions of propositions and constants, so I don't need to update tables
	    free(s->left);
	    free(s);
	    s = new;
	    s->parent = parent;
	    if (stat) 
	      formulasize = formulasize - 2;
	    s = get_nnf(s,modal_level,polarity,1);
	    s = update_parent(s);
	  }
	  else if (s->left->type == CONSTANT) {
	    s->type = CONSTANT;
	    if (s->left->id == CTRUE)
	      s->id = CFALSE;
	    else s->id = CTRUE;
	    s->left = free_tree(s->left);
	    s->mlevel = modal_level;
	    s->polarity = polarity;
	    s->value_number = hash_tree(s);
	    prop_node *p = find_prop(s->id);
	    p = insert_p_position(p,s);
	    if (stat) 
	      formulasize = formulasize - 1;
	  }
	  else if (s->left->type == BOX) {
	    if (bnfsimp == ON) {
	      s->left = get_nnf(s->left,modal_level,-polarity,stat);
	      s->left->parent = s;
	      s->value_number = hash_tree(s);
	    }
	    else {
	      s->type = DIAMOND;
	      s->id = s->left->id;
	      s->left->numdiamond = numdiamond++;
	      s->left->type = NEGATION;
	      s->left->id = NEGATION;
	      s->left->mlevel = s->left->mlevel + 1;
	      s->value_number = hash_tree(s);
	      s = get_nnf(s,modal_level,polarity,stat);
	      s->left->parent = s;
	    }
	  }
	  else if (s->left->type == DIAMOND) {
	      s->type = BOX;
	      s->id = s->left->id;
	      s->left->numdiamond = BOX;
	      s->left->type = NEGATION;
	      s->left->id = NEGATION;
	      s->left->mlevel = s->left->mlevel + 1;
	      s->value_number = hash_tree(s);
	      s = get_nnf(s,modal_level,polarity,stat);
	      s->left->parent = s;
	  }
	  else if (s->left->type == IMPLICATION) { // neg (p then q) = p and neg q
	    s->type = CONJUNCTION;
	    s->id = CONJUNCTION;
	    tnode *right = create_tnode(NEGATION,NEGATION,s->mdepth,s->left->right,NULL,NULL);
	    tnode *aux = s->left;
	    s->left = get_nnf(s->left->left,modal_level,polarity,stat);
	    s->left->parent = s;
	    free(aux);
	    right = get_nnf(right,modal_level,polarity,stat);
	    s->list = tree_to_list(CONJUNCTION,s->left,right);
	    s->left = NULL;
	    s->right = NULL;
	    s = update_parent(s);
	    //s = get_nnf(s,modal_level,polarity,stat);

	    s->value_number = hash_tree(s);
	    if (stat) 
	      formulasize = formulasize + 1;
	  }
	  else if (s->left->type == DISJUNCTION) { // neg (p or q) = neg p or neg q
	    s->type = CONJUNCTION;
	    s->id = CONJUNCTION;
	    formulalist *aux = s->left->list;
	    if (stat) 
	      formulasize = formulasize -1;
	    aux->parent = s;
	    while (aux != NULL) {
	      // here
	      aux->formula = create_tnode(NEGATION,NEGATION,s->mdepth,aux->formula,NULL,NULL);
	      //	      aux->formula = get_nnf(aux->formula,modal_level,polarity,stat);
	      aux->formula->parent = s;
	      if (stat) 
		formulasize = formulasize + 1;
	      aux = aux->next;
	    }
	    s->list = s->left->list;
	    free(s->left);
	    s->left = NULL;
	    s = get_nnf(s,modal_level,polarity,stat);
	    s->list = flatten_by_type(CONJUNCTION,s->list);
	    if (s->list != NULL) {
	      sort_formulalist(CONJUNCTION,&(s->list));
	      s->list->value_number = hash_list(s->list);
	      s->value_number = hash_tree(s);
	    }
	  }
	  else if (s->left->type == CONJUNCTION) { // neg (p and q) = neg p and neg q
	    s->type = DISJUNCTION;
	    s->id = DISJUNCTION;
	    formulalist *aux = s->left->list;
	    if (stat) 
	      formulasize = formulasize - 1;
	    while (aux != NULL) {
	      aux->formula = create_tnode(NEGATION,NEGATION,s->mdepth,aux->formula,NULL,NULL);
	      aux->formula->parent = s;
	      //	      aux->formula = get_nnf(aux->formula,modal_level,polarity,stat);
	      if (stat) 
		formulasize = formulasize + 1;
	      aux = aux->next;
	    }
	    s->list = s->left->list;
	    free(s->left);
	    s->left = NULL;
	    s = get_nnf(s,modal_level,polarity,stat);
	    s->list = flatten_by_type(DISJUNCTION,s->list);
	    if (s->list != NULL) {
	      sort_formulalist(DISJUNCTION,&(s->list));
	      s->list->value_number = hash_list(s->list);
	      s->value_number = hash_tree(s);
	    }
	  }
	  else s->left = get_nnf(s->left,modal_level,-polarity,stat);
	}
	return s;
      }
      break;
    case CONJUNCTION:
      {
	formulalist *aux = s->list;
	while (aux != NULL) {
	  aux->formula = get_nnf(aux->formula,modal_level,polarity,stat);
	  aux = aux->next;
	}
	s->list = flatten_by_type(CONJUNCTION,s->list);
	if (s->list->next == NULL) {// this is a list of size 1;
	  s = remove_size_one_list(s);
	  formulasize = formulasize - 1;
	}
	else {
	  sort_formulalist(CONJUNCTION,&(s->list));
	  s->list->value_number = hash_list(s->list);
	  s->value_number = hash_tree(s);
	}
	return s;
      }
      break;
    case DISJUNCTION:
      {
	formulalist *aux = s->list;
	while (aux != NULL) {
	  aux->formula = get_nnf(aux->formula,modal_level,polarity,stat);
	  aux = aux->next;
	}
	s->list = flatten_by_type(DISJUNCTION,s->list);
	if (s->list->next == NULL) {// this is a list of size 1;
	  s = remove_size_one_list(s);
	  formulasize = formulasize - 1;
	}
	else {
	  sort_formulalist(DISJUNCTION,&(s->list));
	  s->list->value_number = hash_list(s->list);
	  s->value_number = hash_tree(s);
	}
	return s;
      }
      break;
    case IMPLICATION:
      {
	s->type = DISJUNCTION;
	s->id = DISJUNCTION;
	// here
	s->left = create_tnode(NEGATION,NEGATION,s->mdepth,s->left,NULL,NULL);
	s->left->parent = s;

	s->list = tree_to_list(DISJUNCTION,s->left,s->right);
	s->left = NULL;
	s->right = NULL;

	s = get_nnf(s,modal_level,polarity,stat);
	s = update_parent(s);

	if (stat) 
	  formulasize = formulasize + 1;
	if (s->list != NULL) {
	  sort_formulalist(DISJUNCTION,&(s->list));
	  s->list->value_number = hash_list(s->list);
	  s->value_number = hash_tree(s);
	}
	return s;
      }
      break;
    default:
      printf("\nWe have a problem, Houston. In NNF. %d", s->type);
      }
  s = update_parent(s);
  return s;
}
