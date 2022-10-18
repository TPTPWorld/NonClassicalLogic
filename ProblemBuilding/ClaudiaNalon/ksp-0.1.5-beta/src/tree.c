#include <stdlib.h>
#include <stdio.h>
#include "prover.h"
#include "uthash.h"
#include "symbol_table.h"
#include "tree.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern void print_agent (int id);
extern void print_prop (int id);
extern prop_node *find_prop (int id);
extern unsigned int hash_tree (tnode *t);
extern unsigned int hash_list (formulalist *l);
//extern int same_tree (tnode *t1, tnode *t2);
extern formulalist *simplify_and (formulalist *l);
extern formulalist *simplify_or (formulalist *l);

extern int phase;
extern int simp_while_reading;
extern formulalist *free_formulalist (formulalist *l);
extern prop_node *insert_p_position(prop_node *p, tnode *position);
extern int in (tnode *t1, formulalist *l);

tnode *free_tree(tnode *t);
tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);

int indentation = 1;
int tab = 4;

int size_tree(tnode *s);
int size_list(formulalist *s) {
  if (s == NULL) return 0;
  else return (size_tree(s->formula) + size_list(s->next));
}

int size_tree(tnode *s) {
  if (s == NULL) return 0;
  else return (1 + size_tree(s->left) + size_tree(s->right) + size_list(s->list));
}

int is_literal (tnode *t) {
  if (t != NULL) {
    if ((t->type == PROP) || (t->type == CONSTANT)) return t->id;
    else if (t->type == NEGATION)
      if (t->left != NULL)
	if ((t->left->type == PROP) || (t->left->type == CONSTANT)) return -(t->left->id);
  }
  return 0;
}

int is_box (tnode *t) {
  if (t != NULL)
    if (t->type == BOX)
      return t->id;
  return 0;
}

int is_diamond (tnode *t) {
  if (t != NULL) {
    if (t->type == DIAMOND)
      return t->id;
    else if (t->type == NEGATION && t->left->type == BOX)
      return t->left->id;
  }
  return 0;
}

// literal < box < dia < disjunctions < conjunctions
// lit1 < lit2 if |lit1->id| < |lit2->id|
// box1 < box2 if box1->id < box2->id
// dia1 < dia2 if dia1->id < dia2->id

int compare_sizes_lists(formulalist *l1, formulalist *l2) {
  int s1 = 0;
  int s2 = 0;
  formulalist *aux = l1;

  while (aux != NULL) {
    s1++;
    aux = aux->next;
  }
  
  aux = l2;
  while (l2 != NULL) {
    s2++;
    l2 = l2->next;
  }
  if (s1 < s2)
    return 1;
  else if (s1 == s2)
    return 0;
  else return -1;
}


int compare_formula_snf(tnode *t1, tnode *t2) {
  int id1, id2;
  if ((id1 = is_literal(t1)) && (id2 = is_literal(t2))) {
    if (id1 < 0) id1 = -id1;
    if (id2 < 0) id2 = -id2;
    return (id1 <= id2);
  }
  else if ((id1 = is_box(t1)) && (id2 = is_box(t2))) {
    if (id1 == id2) 
      return compare_formula_snf(t1->left,t2->left);
    else return (id1 <= id2);
  }
  else if ((id1 = is_diamond(t1)) && (id2 = is_diamond(t2))) {
    if (id1 == id2) {
      tnode *aux1, *aux2;
      if (t1->type == NEGATION)
	aux1 = t1->left->left;
      else aux1 = t1->left;
      if (t2->type == NEGATION)
	aux2 = t2->left->left;
      else aux2 = t2->left;
      return compare_formula_snf(aux1,aux2);
    }
    else return (id1 <= id2);
  }
  else if ((t1->type == CONJUNCTION && t2->type == CONJUNCTION) ||
	   (t1->type == DISJUNCTION && t2->type == DISJUNCTION)) {
    int size = compare_sizes_lists(t1->list,t2->list);
    if (size == 1) // t1 is smaller
      return 1;
    else if (size == 0) // t1 and t2 have the same size
      return (t1->value_number <= t2->value_number);
    else return 0;
  }
  else if ((id1 = is_literal(t1) && !(id2 = is_literal(t2))) ||
	   (is_box(t1) && is_diamond(t2)) ||
	   ((t1->type == CONJUNCTION || t1->type == DISJUNCTION) && ((id2 = is_box(t2)) || (id2 = is_diamond(t2)))) ||
	   (t1->type == CONJUNCTION && t2->type == DISJUNCTION))
    return 1;
  return 0;
}


int compare_formula_nnf(tnode *t1, tnode *t2) {
  int id1, id2;
  if ((id1 = is_literal(t1)) && (id2 = is_literal(t2))) {
    if (id1 < 0) id1 = -id1;
    if (id2 < 0) id2 = -id2;
    return (id1 <= id2);
  }
  else if ((id1 = is_box(t1)) && (id2 = is_box(t2))) {
    if (id1 == id2) 
      return compare_formula_nnf(t1->left,t2->left);
    else return (id1 <= id2);
  }
  else if ((id1 = is_diamond(t1)) && (id2 = is_diamond(t2))) {
    if (id1 == id2) {
      tnode *aux1, *aux2;
      if (t1->type == NEGATION)
	aux1 = t1->left->left;
      else aux1 = t1->left;
      if (t2->type == NEGATION)
	aux2 = t2->left->left;
      else aux2 = t2->left;
      return compare_formula_nnf(aux1,aux2);
    }
    else return (id1 <= id2);
  }
  else if ((t1->type == CONJUNCTION && t2->type == CONJUNCTION) ||
	   (t1->type == DISJUNCTION && t2->type == DISJUNCTION)) {
    int size = compare_sizes_lists(t1->list,t2->list);
    if (size == 1)
      return 1;
    else if (size == 0)
      return (t1->value_number <= t2->value_number);
    else return 0;
  }
  else if ((id1 = is_literal(t1) && !(id2 = is_literal(t2))) ||
	   ((id1 = is_box(t1)) && (is_diamond(t2) || t2->type == CONJUNCTION || t2->type == DISJUNCTION)) ||
	   ((id1 = is_diamond(t1)) && (t2->type == CONJUNCTION || t2->type == DISJUNCTION)) ||
	   (t1->type == CONJUNCTION && t2->type == DISJUNCTION))
    return 1;
  return 0;
}


void split_formulalist(formulalist *l, formulalist **left, formulalist **right) {
  formulalist *fast;
  formulalist *slow;

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

formulalist *sorted_merge_formulalist(int type, formulalist *left, formulalist *right) {
  formulalist *result = NULL;
  if (left == NULL)
    return right;
  else if (right == NULL)
    return left;
  else if (phase != SNF && simp_while_reading) {
    if (left->formula->type == CONSTANT) {
      if ((type == CONJUNCTION && left->formula->id == CFALSE) ||
	  (type == DISJUNCTION && left->formula->id == CTRUE)) {
	right = free_formulalist(right);
	left->next = free_formulalist(left->next);
	return left;
      }
      else if ((type == CONJUNCTION && left->formula->id == CTRUE) ||
	       (type == DISJUNCTION && left->formula->id == CFALSE)) {
	result = sorted_merge_formulalist(type,left->next,right);
	left->formula = free_tree(left->formula);
	free(left);
      }
    }
    else if (right->formula->type == CONSTANT) {
      if ((type == CONJUNCTION && right->formula->id == CFALSE) ||
	  (type == DISJUNCTION && right->formula->id == CTRUE)) {
	left = free_formulalist(left);
	right->next = free_formulalist(right->next);
	return right;
      }
      else if ((type == CONJUNCTION && right->formula->id == CTRUE) ||
	       (type == DISJUNCTION && right->formula->id == CFALSE)) {
	result = sorted_merge_formulalist(type,left,right->next);
	right->formula = free_tree(right->formula);
	free(right);
      }
    }
    else if (in(left->formula,right)) {
      result = sorted_merge_formulalist(type,left->next,right);
      left->formula = free_tree(left->formula);
      free(left);
    }
    else if (in(right->formula,left)) {
      result = sorted_merge_formulalist(type,left,right->next);
      right->formula = free_tree(right->formula);
      free(right);
    }
    /*else {
      int flag = 0;
      if (left->formula->type == NEGATION) {
	flag = in(left->formula->left,right);
	//if (!flag) flag = in(left->formula->left,left->next); // that's an invariant of the loop: lists are ordered and simplified
      }
      else {
	tnode *parent = left->formula->parent;
	tnode *aux = create_tnode(NEGATION,NEGATION,left->formula->mdepth,left->formula,NULL,NULL);
	flag = in(aux,right);
	//if (!flag) flag = in(aux,left->next);
	left->formula->parent = parent;
	free(aux);
      }
      if (flag) {
	left->next = free_formulalist(left->next);
	left->formula = free_tree(left->formula);
	right = free_formulalist(right);
	tnode *new = malloc(sizeof(tnode));
	left->formula = new;
	left->formula->parent = left->parent;
	left->formula->type = CONSTANT;
	if (type == CONJUNCTION) {
	  left->formula->id = CFALSE;
	}
	else if (type == DISJUNCTION) {
	  left->formula->id = CTRUE;
	}
	left->formula->left = NULL;
	left->formula->right = NULL;
	left->formula->list = NULL;
	left->formula->mdepth = 0;
	left->formula->value_number = hash_tree(left->formula);
	prop_node *p = find_prop(left->formula->id);
	p = insert_p_position(p,left->formula);
	result = left;
	result->next = NULL;
	//	  numsimp++;
	} */
      else if ((phase != SNF && compare_formula_nnf(left->formula,right->formula)) ||
	       (phase == SNF && compare_formula_snf(left->formula,right->formula))) {
	result = left;
	result->next = sorted_merge_formulalist(type,left->next,right);
      }
      else {
	result = right;
	result->next = sorted_merge_formulalist(type,left,right->next);
      }
  }
  else if ((phase != SNF && compare_formula_nnf(left->formula,right->formula)) ||
	   (phase == SNF && compare_formula_snf(left->formula,right->formula))) {
    result = left;
    result->next = sorted_merge_formulalist(type,left->next,right);
  }
  else {
    result = right;
    result->next = sorted_merge_formulalist(type,left,right->next);
  }
  return result;
}

void sort_formulalist(int type, formulalist **l) {
  formulalist *head = *l;
  formulalist *left;
  formulalist *right;
  
  if (head == NULL || head->next == NULL)
    return;
  else {
    split_formulalist(head,&left,&right);
    sort_formulalist(type,&left);
    sort_formulalist(type,&right);
    *l = sorted_merge_formulalist(type,left,right);
  }
}

formulalist *tree_to_list(int type, tnode *left, tnode *right) {
  if (left == NULL)
    return NULL;
  formulalist *left_list = NULL;
  formulalist *right_list = tree_to_list(type,right,NULL);
  if (left->type != type) {
    left_list = malloc(sizeof(formulalist));
    left_list->formula = left;
    left_list->value_number = left->value_number;
    left_list->mdepth = left->mdepth;
    left_list->parent = NULL;
    left_list->next = NULL;
  }
  else {
    left_list = left->list;
  }  
  return sorted_merge_formulalist(type,left_list,right_list);
}

void copy_node(tnode *t1, tnode *t2) {
  t1->type = t2->type;
  t1->id = t2->id;
  t1->numdiamond = t2->numdiamond;
  t1->mdepth = t2->mdepth;
  t1->mlevel = t2->mlevel;
  t1->polarity = t2->polarity;
  t1->afactor = t2->afactor;
  t1->bfactor = t2->bfactor;
  t1->pfunction = t2->pfunction;
  t1->npfunction = t2->npfunction;
  t1->rfunction = t2->rfunction;
  t1->distribute = t2->distribute;
  t1->b2k_added =   t2->b2k_added;
  t1->value_number = t2->value_number;
  t1->left = t2->left;
  t1->right = t2->right;
  t1->list = t2->list;
  t1->parent = t2->parent;
  return;
}


extern int propagate_truth(tnode **node, tnode **nodeparent);
extern int propagate_falsity(tnode **node, tnode **nodeparent);
  
tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list) {
  tnode *new = malloc(sizeof(tnode));
  new->parent = NULL;
  new->type = type;
  new->numdiamond = 1;
  new->id = id;
  new->mdepth = mdepth;
  new->mlevel = 0;
  new->polarity = 0;
  new->pfunction = 0;
  new->npfunction = 0;
  new->rfunction = 0;
  new->afactor = 0;
  new->bfactor = 0;
  new->distribute = 1;
  new->b2k_added = 0;
  new->left = left;
  new->right = right;
  new->list = list;
  new->value_number = hash_tree(new);
  if (left != NULL) {
    left->parent = new;
    if (simp_while_reading == ON) {
	if (left->type == CONSTANT) {
	  if (left->id == CTRUE)
	    propagate_truth(&(left),&new);
	  else if (left->id == CFALSE)
	    propagate_falsity(&(left),&new);
	}
    }
  }
  if (right != NULL) {
    right->parent = new;
    if (simp_while_reading == ON) {
	if (right->type == CONSTANT) {
	  if (right->id == CTRUE)
	    propagate_truth(&(right),&new);
	  else if (right->id == CFALSE)
	    propagate_falsity(&(right),&new);
	}
    }
  }
  formulalist *aux = list;
  if (aux != NULL)
    aux->parent = new;
  while (aux != NULL) {
    if (aux->formula != NULL) {
      aux->formula->parent = new;
      if (simp_while_reading == ON) {
	if (aux->formula->type == CONSTANT) {
	  if (aux->formula->id == CTRUE)
	    propagate_truth(&(aux->formula),&new);
	  else if (aux->formula->id == CFALSE)
	    propagate_falsity(&(aux->formula),&new);
	}
      }
    }
    if (aux != NULL && new->list != NULL)
      aux = aux->next;
    else aux = NULL;
  }
  /*if (new->type == CONJUNCTION)
    new->list = simplify_and(new->list);
  else if (new->type == DISJUNCTION)
  new->list = simplify_or(new->list); */
  return new;
}


tnode *copy_tree(tnode *s);

formulalist *copy_list(formulalist *s) {
  if (s == NULL) return NULL;
  else {
    formulalist *l = malloc(sizeof(formulalist));
    l->mdepth = s->mdepth;
    l->mlevel = s->mlevel;
    l->renamed_by = s->renamed_by;
    l->levels_added = NULL;
    l->levels_occur = NULL;
    l->value_number = s->value_number;
    l->formula = copy_tree(s->formula);
    l->parent = NULL;
    l->next = copy_list(s->next);
    return l;
  }
}


tnode *copy_tree(tnode *s) {
  if (s == NULL) return NULL;
  else {
    tnode *root = malloc(sizeof(tnode));
    root->type = s->type;
    root->id = s->id;
    root->numdiamond = s->numdiamond;
    root->mdepth = s->mdepth;
    root->mlevel = s->mlevel;
    root->polarity = s->polarity;
    root->renamed_by = s->renamed_by;
    root->definition_added = s->definition_added;
    root->afactor = s->afactor;
    root->bfactor = s->bfactor;
    root->pfunction = s->pfunction;
    root->npfunction = s->npfunction;
    root->rfunction = s->rfunction;
    root->distribute = s->distribute;
    root->value_number = s->value_number;
    root->left = copy_tree(s->left);
    root->right = copy_tree(s->right);
    root->list = copy_list(s->list);
    root->parent = NULL;
    return root;
  }
}

int print_tree(tnode *s);
int print_list(formulalist *s) {
  if (s == NULL)
    return 0;
  //if (s->formula == NULL) {printf("\n ==========================> Null in list"); exit(0); }
  int size1 = print_tree(s->formula);
  return (size1 + print_list(s->next));
}

int print_tree(tnode *s) {  
  int i;
  int size1, size2;
  
  if (s!=NULL) {
    for (i=0;i<indentation;i++) printf(" ");
  
    switch (s->type) {
    case SETF:
      if (s->id == SOS) 
	printf("\n\n Conjunction of formulae in the SOS:\n");
      else if (s->id == USABLE)
	printf("\n\n Conjunction of formulae in the Usable:\n");
      print_tree(s->left);
      print_tree(s->right);
      break;
    case SETC:
      if (s->id == SOS) 
	printf("\n\n Conjunction of clauses in the SOS:\n");
      else if (s->id == USABLE)
	printf("\n\n Conjunction of clauses in the Usable:\n");
      print_tree(s->left);
      print_tree(s->right);
      break;	  
    case CONSTANT:
      if (s->id == CTRUE) printf("TRUE (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *) s);
      else if (s->id == CFALSE) printf("FALSE (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity, (void *) s);
      else if (s->id == CSTART) printf("START (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *) s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      if (s->left != NULL) {
	printf("\n ERROR (LEFT):");
	print_tree(s->left);
      }
      if (s->right != NULL) {
	printf("\n ERROR (RIGHT):");
	print_tree(s->right);
      }
      if (s->list != NULL) {
	printf("\n ERROR (LIST):");
	formulalist *aux = s->list;
	while (aux != NULL) {
	  print_tree(s->list->formula);
	  aux = aux->next;
	}
      }
      
      return 1;
      break;
    case PROP: 
      printf("PROPOSITION: ");
      print_prop(s->id);
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      return 1;
      break;
    case BOX:
      printf("MODAL: ");
      print_agent(s->id);
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p,numdiamond:%d",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s,s->numdiamond);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_tree(s->left);
      indentation -= tab;
      return size1 + 1;
      break;
    case DIAMOND:
      printf("MODAL: ~ ");
      print_agent(s->id);
      printf(" ~ (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p,numdiamond:%d",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s,s->numdiamond);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_tree(s->left);
      indentation -= tab;
      return size1 + 1;
      break;
    case NEGATION: 
      printf("NEGATION");
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_tree(s->left);
      indentation -= tab;
      return size1 + 1;
      break;
    case CONJUNCTION:
      printf("CONJUNCTION");
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_list(s->list);
      indentation -= tab;
      return size1 + 1;
      break;
    case DISJUNCTION:
      printf("DISJUNCTION");
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_list(s->list);
      indentation -= tab;
      return size1 + 1;
      break;
    case IMPLICATION:
      printf("IMPLICATION");
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_tree(s->left);
      size2 = print_tree(s->right);
      indentation -= tab;
      return size1 + size2 + 1;
      break;
    case DOUBLEIMP:
      printf("DOUBLE IMPLICATION");
      printf(" (id:%d,vn:%u,md:%d,ml:%d,pol:%d,pos:%p",s->id,s->value_number,s->mdepth,s->mlevel,s->polarity,(void *)s);
      if (s->parent != NULL)
	printf(",parent vn:%u)\n", s->parent->value_number);
      else printf(")\n");
      indentation += tab;
      size1 = print_tree(s->left);
      size2 = print_tree(s->right);
      indentation -= tab;
      return size1 + size2 + 1;
      break;
    default:
      printf("We have a problem, Houston. Printing the tree.\n");
    }
  }
  return 0;
}

tnode *free_tnode(tnode *t);
formulalist *free_formulalist(formulalist *s) {
  if (s != NULL) {
    s->formula = free_tnode(s->formula);
    s->next = free_formulalist(s->next);
    if (s != NULL) free(s);
    s = NULL;
  }
  return s;
}

tnode *free_tnode(tnode *t) {
  if (t != NULL) {
    if (t->type == CONSTANT) {
      prop_node *p = find_prop(t->id);
      if (p != NULL) {
	hptr_nodes *positions = NULL;
	HASH_FIND(hptr,p->positions,&t,sizeof(tnode*),positions);
	if (positions != NULL) {
	  positions->deleted = 1;
	  positions->node = NULL;
	}
      }
    }
    else if (t->type == PROP) {
      prop_node *p = find_prop(t->id);
      if (p != NULL) {
	hml_props *hmlprop;
	p->occur--;
	HASH_FIND(hml,p->hmlpropsposition,&(t->mlevel),sizeof(int),hmlprop);
	if (hmlprop != NULL) {
	  literal_list *aux;
	  if (t->polarity > 0) {
	    aux = hmlprop->positive;
	    p->occur_positive--;
	    hmlprop->ml_occur_positive--;
	  }
	  else {
	    aux = hmlprop->negative;
	    p->occur_negative--;
	    hmlprop->ml_occur_negative--;
	  }
	  if (aux != NULL) {
	    if (aux->literal == t) {
	      if (t->polarity > 0) hmlprop->positive = hmlprop->positive->next;
	      else hmlprop->negative = hmlprop->negative->next;
	      free(aux);
	    }
	    else
	      while (aux->next != NULL) {
		if (aux->next->literal == t) {
		  literal_list *aux2 = aux->next;
		  aux->next = aux->next->next;
		  free(aux2);
		}
		else aux = aux->next;
	      }
	  }
	}
      }
    }
    else {
      if (t->left != NULL)
	t->left = free_tnode(t->left);
      if (t->right != NULL)
	t->right = free_tnode(t->right);
      if (t->list != NULL)
	t->list = free_formulalist(t->list);
    }
    if (t != NULL) free(t);
    t = NULL;
  }
  return t;
}

tnode *free_tree (tnode *s) {
  s = free_tnode(s);
  return s;
}
