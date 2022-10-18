#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "prover.h"
#include "uthash.h"
#include "symbol_table.h"
#include "tree.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))
#define MIN(X, Y) (((X) < (Y)) ? (X) : (Y))

extern agent_node *find_agent(int id);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);

extern tnode *create_dia_tnode(int id, int mdepth, tnode *subf);
extern int is_literal (tnode *t);
extern int is_diamond(tnode *t);
extern int is_box(tnode *t);
extern void sort_formulalist(int type, formulalist **l);

extern unsigned int hash_tree (tnode *t);
extern unsigned int hash_list (formulalist *l);
extern tnode *free_tree(tnode *);

extern int print_tree(tnode *);

extern prop_node *find_prop (int id);
extern prop_node *insert_p_position(prop_node *p, tnode *position);

extern tnode *remove_size_one_list(tnode *s);
extern tnode *update_parent(tnode *node);

extern int formulasize;

tnode *simplify_s4 (tnode *s) {
  if ((is_box(s) && is_box(s) == is_box(s->left)) ||          // box box i p = box i p
      (is_diamond(s) && is_diamond(s) == is_diamond(s->left))) {  // dia dia p = neg box box dia p
    tnode *tmp,*tmpleft=s->left;
    tmp = s;
    if (is_diamond(s) && s->type == NEGATION) {
      s->left = s->left->left;
      s->left->parent = s;
      free(tmpleft);
    }
    else {
      s->left->parent = s->parent;
      s = s->left;
      free(tmp);
    }
    formulasize -= 1;
    s = simplify_s4(s);
  }
  return s;
}


tnode *simplify_s5 (tnode *s) {
  if ((is_box(s) && is_box(s) == is_box(s->left)) ||          // box box i p = box i p
      (is_box(s) && is_box(s)  == is_diamond(s->left)) ||     // box dia i p = dia i p
      (is_diamond(s) && // dia dia p = dia p
       ((s->type == DIAMOND && is_diamond(s) == is_diamond(s->left)) ||
	(s->type == NEGATION && is_diamond(s) == is_diamond(s->left->left)))) ||  
      (is_diamond(s) && // dia box p = box p
       ((s->type == DIAMOND && is_diamond(s) == is_box(s->left)) ||
	(s->type == NEGATION && is_diamond(s) == is_box(s->left->left))))) {
    tnode *tmp;
    tmp = s;
    if (is_diamond(s) && s->type == NEGATION) {
      s = s->left->left;
      free(tmp->left);
    }
    else {
      s = s->left;
    }
    free(tmp);
    formulasize -= 1;
    return simplify_s5(s);
  }
  return s;
}
    

tnode *get_prenex(tnode *s) {

  if (s == NULL)
    return NULL;
  //  printf("\n prenex: \n");print_tree(s); getchar();
  switch (s->type) {
    case SETC:
      {
	s->right = get_prenex(s->right);
	if (s->right != NULL)
	  s->mdepth = MAX(s->left->mdepth,s->right->mdepth);
	else s->mdepth = s->left->mdepth;
	return s;
      }
      break;
    case SETF: 
      {
	s->left = get_prenex(s->left);
	s->right = get_prenex(s->right);
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
    case DIAMOND:
      {
	s->left = get_prenex(s->left);
	s->value_number = hash_tree(s);
	return s;
      }
      break;
    case NEGATION:
      {
	if (is_literal(s))
	  return s;
	else printf("\n Error: negated complex formula in prenex. This is supposed to be in NNF.");
      }
      break;
    case CONJUNCTION:
      {
	sort_formulalist(CONJUNCTION,&(s->list));
	formulalist *aux = s->list;
	while (aux != NULL) { 
	  aux->formula = get_prenex(aux->formula);
	  if (aux->formula->type == CONJUNCTION) {
	    if (aux->formula->list == NULL) {
	      aux->formula->type = CONSTANT;
	      aux->formula->id = CTRUE;
	      aux->formula->left = NULL;
	      aux->formula->right = NULL;
	      aux->formula->list = NULL;
	      aux->formula->value_number = hash_tree(aux->formula);
	      prop_node *p = find_prop(aux->formula->id);
	      p = insert_p_position(p,aux->formula);
	    }
	    else {
	      formulalist *aux2 = aux->formula->list;
	      formulalist *aux3 = aux->formula->list;
	      while (aux3->next != NULL) {
		aux3 = aux3->next;
	      }
	      aux3->next = aux->next;
	      aux->formula = aux2->formula;
	      aux->next = aux2->next;
	      free(aux2);
	      aux = aux3;
	    }
	  }
	  aux = aux->next;
	}

	sort_formulalist(CONJUNCTION,&(s->list));
	s->list->value_number = hash_list(s->list);
	s->value_number = hash_tree(s);
	
	aux = s->list;
	while (aux != NULL && is_literal(aux->formula))
	  aux = aux->next;
	
	int id1;

	while (aux != NULL && (id1 = is_box(aux->formula))) {
	  formulalist *first = aux;
	  formulalist *last = aux;
	  int id2;
	  while (last->next != NULL && (id2 = is_box(last->next->formula)) && id1 == id2) {
	    last = last->next;
	  }

	  if (first != last) {
	    formulalist *newfirst = malloc(sizeof(formulalist));
	    newfirst->formula = first->formula;
	    newfirst->mdepth = first->mdepth;
	    newfirst->value_number = first->value_number;
	    newfirst->next = first->next;
	    
	    formulalist *aux = newfirst;
	    
	    while (aux != last->next) {
	      tnode *auxnode = aux->formula;
	      aux->formula = aux->formula->left;
	      aux->mdepth = aux->mdepth-1;
	      aux = aux->next;
	      free(auxnode); // this is only freeing the box;
	    }

	    
	    first->next = last->next;
	    last->next = NULL;
	    
	    tnode *and = create_tnode(CONJUNCTION,CONJUNCTION,first->mdepth-1,NULL,NULL,newfirst);
	    and = get_prenex(and);
	    tnode *box = create_tnode(BOX,id1,first->mdepth,and,NULL,NULL);
	    box = update_parent(box);
	    box->parent = s;

	    first->formula = box;
  
	  }
	  aux = aux->next;
	}
      
	if (s->list->next == NULL) {// this is a list of size 1;
	  s = remove_size_one_list(s);
	  formulasize = formulasize - 1;
	}
	
	if (s->list != NULL) {
	  sort_formulalist(CONJUNCTION,&(s->list));
	  s->list->value_number = hash_list(s->list);
	}
	s->value_number = hash_tree(s);
	return s;
      }
      break;
    case DISJUNCTION:
      {
	sort_formulalist(DISJUNCTION,&(s->list));
	formulalist *aux = s->list;
	while (aux != NULL) { 
	  aux->formula = get_prenex(aux->formula);
	  if (aux->formula->type == DISJUNCTION) {
	    if (aux->formula->list == NULL) {
	      aux->formula->type = CONSTANT;
	      aux->formula->id = CFALSE;
	      aux->formula->left = NULL;
	      aux->formula->right = NULL;
	      aux->formula->list = NULL;
	      aux->formula->value_number = hash_tree(aux->formula);
	      prop_node *p = find_prop(aux->formula->id);
	      p = insert_p_position(p,aux->formula);
	    }
	    else {
	      formulalist *aux2 = aux->formula->list;
	      formulalist *aux3 = aux->formula->list;
	      while (aux3->next != NULL) {
		aux3 = aux3->next;
	      }
	      aux3->next = aux->next;
	      aux->formula = aux2->formula;
	      aux->next = aux2->next;
	      free(aux2);
	      aux = aux3;
	    }
	  }
	  aux = aux->next;
	}

	sort_formulalist(DISJUNCTION,&(s->list));
	s->list->value_number = hash_list(s->list);
	s->value_number = hash_tree(s);

	aux = s->list;
	while (aux != NULL && (is_literal(aux->formula) || is_box(aux->formula)))
	  aux = aux->next;
	
	int id1;
	
	while (aux != NULL && (id1 = is_diamond(aux->formula))) {
	  formulalist *first = aux;
	  formulalist *last = aux;
	  int id2;
	  while (last->next != NULL && (id2 = is_diamond(last->next->formula)) && id1 == id2) {
	    last = last->next;
	  }

	  if (first != last) {
	    int numdiamond = first->formula->numdiamond;
	    formulalist *newfirst = malloc(sizeof(formulalist));
	    newfirst->formula = first->formula;
	    newfirst->value_number = first->value_number;
	    newfirst->mdepth = first->mdepth;
	    newfirst->next = first->next;
	    
	    formulalist *aux = newfirst;
	    
	    while (aux != last->next) {
	      tnode *auxnode = aux->formula;
	      aux->formula = aux->formula->left;
	      aux->mdepth = aux->mdepth-1;
	      aux = aux->next;
	      free(auxnode); // this is only freeing the diamond;
	    }

	    first->next = last->next;
	    last->next = NULL;
	    
	    tnode *or = create_tnode(DISJUNCTION,DISJUNCTION,first->mdepth-1,NULL,NULL,newfirst);
	    or = get_prenex(or);
	    tnode *diamond = create_tnode(DIAMOND,id1,first->mdepth,or,NULL,NULL);
	    diamond = update_parent(diamond);
	    diamond->parent = s;
	    diamond->numdiamond = numdiamond;
	    first->formula = diamond;
	  }
	  aux = aux->next;
	}

	if (s->list->next == NULL) {// this is a list of size 1;
	  s = remove_size_one_list(s);
	  formulasize = formulasize - 1;
	}
	if (s->list != NULL) {
	  sort_formulalist(DISJUNCTION,&(s->list));
	  s->list->value_number = hash_list(s->list);
	}
	s->value_number = hash_tree(s);
	return s;
      }
      break;
      default:
	{
	  printf("We have a problem, Houston. In prenex. s->id: %d \n",s->id);
	  //	  getchar();
	}
    }
  return s;
}
