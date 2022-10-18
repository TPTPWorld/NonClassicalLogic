#include <stdlib.h>
#include <stdio.h>
#include "prover.h"
#include "tree.h"

extern int numsimp;
extern int formulasize;
extern int verbose;

extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);

extern tnode *copy_tree(tnode *s);
extern tnode *free_tree (tnode *s);
extern formulalist *free_formulalist(formulalist *s);
extern void sort_formulalist(formulalist **l);
extern int is_diamond (tnode *t);

extern int size_tree(tnode *s);
extern int size_list(formulalist *s);

extern unsigned int hash_tree (tnode *t);
extern unsigned int hash_list (formulalist *l);

extern tnode *get_nnf(tnode *s, int stat);

tnode *get_nnfsimp (tnode *s);

int same_tree (tnode *t1, tnode *t2);
int same_list(formulalist *l1, formulalist *l2) {
  if (l1 == NULL) {
    if (l2 == NULL) {
      return 1;
    }
  }
  else if (l2 == NULL) 
    return 0;
  else if (same_tree(l1->formula,l2->formula))
    return (same_list(l1->next,l2->next));
  return 0;
}

int same_tree (tnode *t1, tnode *t2) {
  if (t1 == NULL) {
    if (t2 == NULL) {
      return 1;
    }
  }
  else if (t2 == NULL) 
    return 0;
  else if (t1->type == t2->type && t1->id == t2->id && same_list(t1->list,t2->list))
    return (same_tree(t1->left,t2->left) && same_tree(t1->right,t2->right));
  return 0;
}


int in (tnode *t1, formulalist *l) {
  while (l != NULL) {
    if (t1->value_number == l->formula->value_number && same_tree(t1,l->formula))
      return 1;
    else l = l->next;
  }
  return 0;
}

int in_neg (tnode *t1, formulalist *l) {
  int result = 0;
  
  if (t1->type == NEGATION) {
    result = in(t1->left,l);
  }
  else {
    tnode *aux = create_tnode(NEGATION,NEGATION,t1->mdepth,t1,NULL,NULL);
    result = in(aux,l);
    free(aux);
  }
  return result;
}

// t1 = box phi
// aux = ~phi
// it checks if box aux is in l

int in_neg_box(tnode *t1, formulalist *l) {
  int result = 0;
  int flag = 0;
  tnode *aux = NULL;
  if (t1->left->type == NEGATION) {
    aux = t1->left->left;
  }
  else {
    aux = create_tnode(NEGATION,NEGATION,t1->left->mdepth,t1->left,NULL,NULL);
    flag = 1;
  }
  while (l != NULL && result == 0) {
    if (l->formula->type == BOX && l->formula->id == t1->id) {
      if (aux->value_number == l->formula->left->value_number && same_tree(aux,l->formula->left)) {
	  result = 1;
	}
    }
    l = l->next;
  }
  if (flag) free(aux);
  return result;
}

// t1 is ~box phi or dia phi
// aux is ~phi
// search for ~box~phi in l
int in_neg_dia(tnode *t1, formulalist *l) {
  int result = 0;
  int flag = 0;
  int id = is_diamond(t1);
  tnode *aux = NULL;
  if (t1->type == NEGATION && t1->left->left->type == NEGATION ) //~box ~phi ==> aux = phi
    aux = t1->left->left->left;  
  else if (t1->type == NEGATION) {//~box phi ==> aux = ~phi
    aux = create_tnode(NEGATION,NEGATION,t1->left->left->mdepth,t1->left->left,NULL,NULL);
    flag = 1;
  }
  else if (t1->type == DIAMOND && t1->left->type == NEGATION) // dia ~phi ==> aux = phi
    aux = t1->left->left;
  else { // dia phi ==> aux = ~phi
    aux = create_tnode(NEGATION,NEGATION,t1->left->mdepth,t1->left,NULL,NULL);
    flag = 1;
  }
  
  while (l != NULL && result == 0) {
    int id2;
    if ((id2 = is_diamond(l->formula)) && id == id2) {
      tnode *aux2 = NULL;
      if (l->formula->type == NEGATION) {
	aux2 = l->formula->left->left;
      }
      else aux2 = l->formula->left;
      if (aux->value_number == aux2->value_number && same_tree(aux,aux2)) {
	  result = 1;
	}
    }
    l = l->next;
  }
  if (flag) free(aux);
  return result;
}

extern int compare_formula_nnf(tnode *t1, tnode *t2);
formulalist *propagate_in_conjunction_or_disjunction(int type, tnode *formula, formulalist *l) {
  return l;

  if (l == NULL) {
    return l;
  }
  else {
    l->next = propagate_in_conjunction_or_disjunction(type,formula,l->next);
    if (l->formula->type == type) {
      formulalist *aux = l->formula->list;
      formulalist *first = NULL;
      while (aux != NULL && (compare_formula_nnf(aux->formula,formula))) {
	if (!(same_tree(formula,aux->formula))) {
	  formulalist *new = malloc(sizeof(formulalist));
	  new->formula = aux->formula;
	  new->next = first;
	  first = new;
	}
	else {
	  int size = 0;
	  if (verbose)
	     size = size_tree(aux->formula);
	  free_tree(aux->formula);
	  numsimp++;
	  formulasize = formulasize - size;
	}
	formulalist *tmp = aux;
	aux = aux->next;
	free(tmp);
      }
      if (aux != NULL) {
	while (aux != NULL) {
	  formulalist *new = malloc(sizeof(formulalist));
	  new->formula = aux->formula;
	  new->next = first;
	  first = new;
	  aux = aux->next;
	}
      }
      if (first != NULL) {
	sort_formulalist(&first);
	l->formula->list = first;
      }
      else {
	l->formula->type = CONSTANT;
	l->formula->left = NULL;
	l->formula->right = NULL;
	l->formula->list = NULL;
	if (type == CONJUNCTION) {
	  l->formula->id = CTRUE;
	}
	else l->formula->id = CFALSE;
	l->formula->value_number = hash_tree(l->formula);
      }
    }
  }

  sort_formulalist(&(l));
  if (l != NULL) {
    l->value_number = hash_list(l);
  }
  return l;
}
  

formulalist *in_conjunction_or_disjunction(int type, tnode *formula, formulalist *l) {
  return l;
  if (l == NULL) {
    return l;
  }
  else {
    l->next = in_conjunction_or_disjunction(type,formula,l->next);
    if (l->formula->type == type && (in(formula,l->formula->list))) {
      int size = 0;
      if (verbose)
	size_list(l->formula->list);
      l->formula->list = free_formulalist(l->formula->list);
      free(l->formula);
      formulalist *tmp = l;
      l = l->next;
      free(tmp);
      numsimp++;
      formulasize = formulasize - size;
    }
    else if (l->formula->type == type && formula->type == type) {
      int in_formula = 1;
      formulalist *aux = formula->list;
      while (in_formula && aux != NULL) {
	in_formula = in(aux->formula,l->formula->list);
	aux = aux->next;
      }
      if (in_formula) {
	int size = size_list(l->formula->list);
	free_formulalist(l->formula->list);
	free(l->formula);
	formulalist *tmp = l;
	l = l->next;
	free(tmp);
	numsimp = numsimp + size;
	formulasize = formulasize - size;
      }
    }
  }

  sort_formulalist(&(l));
  if (l != NULL) {
    l->value_number = hash_list(l);
  }
  return l;
}

int in_diamond(formulalist *l, int id) {
  int result = 0;
  int dia_id;
  while (l != NULL && !result) {
    if ((dia_id = is_diamond(l->formula)) && dia_id == id)
      result = 1;
    l = l->next;
  }
  return result;
}

int in_diamond_true (formulalist *l, int id) {
  int result = 0;
  int dia_id;
  while (l != NULL && !result) {
    if ((dia_id = is_diamond(l->formula)) && dia_id == id)
      if ((l->formula->type == NEGATION && l->formula->left->left->type == CONSTANT && l->formula->left->left->id == CFALSE) ||
	  (l->formula->left->type == CONSTANT && l->formula->left->id == CTRUE))
      result = 1;
    l = l->next;
  }
  return result;
}

formulalist *flatten(formulalist *s) {
  formulalist *aux = s->formula->list;
      while (aux->next != NULL) {
	aux = aux->next;
      }
      aux->next = s->next;
      formulalist *temp = s;
      s = s->formula->list;
      free(temp);
      numsimp++;
      //      printf("\n flattening");
      sort_formulalist(&(s));
      s->value_number = hash_list(s);
      return s;
}


formulalist *simplify_and (formulalist *s) {
  sort_formulalist(&(s));
  int id;
  if (s != NULL) {
    if (s->formula->type == CONJUNCTION) {
      s = flatten(s);
      s->value_number = hash_list(s);
      s = simplify_and(s);
      formulasize = formulasize - 1;
    }
    else {
      if (s->formula->type == CONSTANT) {
	if (s->formula->id == CFALSE) {
	  int size = 0;
	  if (verbose)
	    size = size_list(s->next);
	  s->next = free_formulalist(s->next);
	  s->next = NULL;
	  numsimp++;
	  //	  printf("\n and false");
	  formulasize = formulasize - size - 1; // formulae + conjunction
	}
	else if (s->formula->id == CTRUE) {
	  if (s->next != NULL) {
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    //	    printf("\n and true");
	    s = simplify_and(s);
	    formulasize = formulasize - 2; //symbol + conjunction
	  }
	}
      }
      else if (s->next != NULL) {
	s->next = simplify_and(s->next);
	if (s->next->formula->type == CONSTANT) {
	  if (s->next->formula->id == CFALSE) {
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula);
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    formulasize = formulasize - size - 1; //formula + conjunction
	  }
	  else if (s->next->formula->id == CTRUE) {
	    s->next->formula = free_tree(s->next->formula);
	    formulalist *aux = s->next->next;
	    free(s->next);
	    s->next = aux;
	    numsimp++;
	    formulasize = formulasize - 2; //symbol + conjunction
	  }
	}
	else if (in(s->formula,s->next)) {
	  int size = 0;
	  if (verbose)
	    size = size_tree(s->formula);
	  s->formula = free_tree(s->formula);
	  formulalist *aux = s->next;
	  free(s);
	  s = aux;
	  numsimp++;
	  formulasize = formulasize - size - 1;
	}
	else if (in_neg(s->formula,s->next)) {
	  int size = 0;
	  if (verbose) {
	    size = size_list(s->next);
	    size = size + size_tree(s->formula);
	  }
	  s->next = free_formulalist(s->next);
	  s->formula->type = CONSTANT;
	  s->formula->id = CFALSE;
	  s->formula->left = free_tree(s->formula->left);
	  s->formula->right = free_tree(s->formula->right);
	  s->formula->list = free_formulalist(s->formula->list);
	  s->formula->value_number = hash_tree(s->formula);
	  numsimp++;
	  formulasize = 1 + formulasize - size;
	}
	else if (s->formula->type == BOX) {  // box phi & box false = box false
	  if (s->next != NULL &&
	      s->next->formula->type == BOX &&
	      s->formula->id == s->next->formula->id &&
	      s->next->formula->left->type == CONSTANT && s->next->formula->left->id == CFALSE) {
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula);
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    formulasize = formulasize - size;
	  }
	  else if (s->formula->left->type == CONSTANT && s->formula->left->id == CFALSE) { // box false & dia phi = false
	    if (in_diamond(s->next,s->formula->id)) {
	      int size = 0;
	      if (verbose)
		size = size_list(s->next);
	      s->next = free_formulalist(s->next);
	      if (verbose)
		size = size + size_tree(s->formula->left);
	      s->formula->left = free_tree(s->formula->left);
	      s->next = NULL;
	      s->formula->type = CONSTANT;
	      s->formula->id = CFALSE;
	      s->formula->mdepth = 0;
	      s->formula->value_number = hash_tree(s->formula);
	      numsimp++;
	      formulasize = formulasize - size;
	    }
	    else { // box false & box phi = box false
	      formulalist *aux = s->next;
	      while (aux != NULL && aux->formula->type == BOX && aux->formula->id == s->formula->id) {
		s->next = aux->next;
		int size = 0;
		if (verbose)
		  size = size_tree(aux->formula);
		free_tree(aux->formula);
		free(aux);
		aux = s->next;
		numsimp++;
		formulasize = formulasize - size - 1; //minus conjunction as well
	      }
	    }
	  }
	  else if (in_neg_box(s->formula,s->next)) { // box phi & box ~phi = box false
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula->left);
	    s->formula->left = free_tree(s->formula->left);
	    s->formula->left = malloc(sizeof(tnode));
	    s->formula->left->type = CONSTANT;
	    s->formula->left->id = CFALSE;
	    s->formula->left->mdepth = 0;
	    s->formula->left->left = NULL;
	    s->formula->left->right = NULL;
	    s->formula->left->list = NULL;
	    s->formula->left->value_number = hash_tree(s->formula->left);
	    s->formula->mdepth = 1;
	    s->formula->value_number = hash_tree(s->formula);
	    numsimp++;
	    formulasize = formulasize - size;
	    sort_formulalist(&s);
	    s = simplify_and(s);
	  }
	}
	else if ((id = is_diamond(s->formula))) { // <> TRUE & <> PHI == <> PHI
	  int id2;
	  if (((s->formula->type == DIAMOND &&
		s->formula->left->type == CONSTANT &&
		s->formula->left->id == CTRUE) ||
	       (s->formula->type == NEGATION &&
		s->formula->left->left->type == CONSTANT &&
		s->formula->left->left->id == CFALSE)) &&
	      s->next != NULL &&
	      (id2 = is_diamond(s->next->formula)) &&
	      id == id2) {
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula);
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    formulasize = formulasize - size;
	  }
	}
      }
    }

    
    s->next = in_conjunction_or_disjunction(DISJUNCTION,s->formula,s->next); // phi & (phi | psi) = phi
    // propagation
    if (s->formula->type == NEGATION) {
      s->next = propagate_in_conjunction_or_disjunction(DISJUNCTION,s->formula->left,s->next);
    }
    else {
      tnode *aux = create_tnode(NEGATION,NEGATION,s->formula->mdepth,s->formula,NULL,NULL);
      s->next = propagate_in_conjunction_or_disjunction(DISJUNCTION,aux,s->next);
      free(aux);
    }
  } 

  sort_formulalist(&s);
  if (s != NULL) {
    s->value_number = hash_list(s);
  }
  return s;
}


formulalist *simplify_or (formulalist *s) {
  sort_formulalist(&(s));
  int id;
  if (s != NULL) {
    if (s->formula->type == DISJUNCTION) {
      s = flatten(s);
      s->value_number = hash_list(s);
      s = simplify_or(s);
      formulasize = formulasize - 1;
    }
    else {
      if (s->formula->type == CONSTANT) {
	if (s->formula->id == CTRUE) {
	  int size = 0;
	  if (verbose)
	    size = size_list(s->next);
	  s->next = free_formulalist(s->next);
	  s->next = NULL;
	  numsimp++;
	  //	  printf("\n or true");
	  formulasize = formulasize - size - 1;
	}
	else if (s->formula->id == CFALSE) {
	  if (s->next != NULL) {
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    //	    printf("\n or false");
	    s = simplify_or(s);
	    formulasize = formulasize - 2; // symbol + disjunction
	  }
	}
      }
      else if (s->next != NULL) {
	s->next = simplify_or(s->next);
	if (s->next->formula->type == CONSTANT) {
	  if (s->next->formula->id == CTRUE) {
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula);
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    formulasize = formulasize - size - 1;
	  }
	  else if (s->next->formula->id == CFALSE) {
	    s->next->formula = free_tree(s->next->formula);
	    formulalist *aux = s->next->next;
	    free(s->next);
	    s->next = aux;
	    numsimp++;
	    formulasize = formulasize - 2; // symbol + disjunction
	  }
	}
	else if (in(s->formula,s->next)) {
	  int size = 0;
	  if (verbose)
	    size_tree(s->formula);
	  s->formula = free_tree(s->formula);
	  formulalist *aux = s->next;
	  free(s);
	  s = aux;
	  numsimp++;
	  formulasize = formulasize - size - 1;
	}
	else if (in_neg(s->formula,s->next)) {
	  int size = 0;
	  if (verbose) {
	    size = size_list(s->next);
	    size = size + size_tree(s->formula);
	  }
	  s->next = free_formulalist(s->next);
	  s->formula->type = CONSTANT;
	  s->formula->id = CTRUE;
	  s->formula->mdepth = 0;
	  s->formula->left = free_tree(s->formula->left);
	  s->formula->right = free_tree(s->formula->right);
	  s->formula->list = free_formulalist(s->formula->list);
	  s->formula->value_number = hash_tree(s->formula);
	  numsimp++;
	  formulasize = 1 + formulasize - size;
	}
	else if ((id = is_diamond(s->formula))) { // <> PHI | <> TRUE == <> TRUE
	  int id2;
	  if (s->next != NULL &&
	      (id2 = is_diamond(s->next->formula)) &&
	      id == id2 &&
	      ((s->next->formula->left->type == CONSTANT && s->next->formula->left->id == CTRUE) ||
	       (s->next->formula->left->left != NULL && s->next->formula->left->left->type == CONSTANT && s->next->formula->left->left->id == CFALSE)
	       )) {
	    int size = 0;
	    if (verbose)
	      size_tree(s->formula);
	    s->formula = free_tree(s->formula);
	    formulalist *aux = s->next;
	    free(s);
	    s = aux;
	    numsimp++;
	    formulasize = formulasize - size;
	  }
	  else if ((s->formula->left->type == CONSTANT && s->formula->left->id == CTRUE) ||
		   (s->formula->left->left != NULL && s->formula->left->left->type == CONSTANT && s->formula->left->left->id == CFALSE)
		   ) { // remove other diamonds of same id from list <> TRUE | <> phi = <> TRUE
	    formulalist *aux = s->next;
	    while (aux != NULL && (id2 = is_diamond(aux->formula)) && id == id2) {
	      s->next = aux->next;
	      int size = 0;
	      if (verbose)
		size_tree(aux->formula);
	      aux->formula = free_tree(aux->formula);
	      free(aux);
	      aux = s->next;
	      numsimp++;
	      formulasize = formulasize - size - 1;
	    }
	  }
	  else if (in_neg_dia(s->formula,s->next)) { // dia phi | dia ~phi = dia true
	    int size = 0;
	    if (verbose)
	      size = size_tree(s->formula->left);
	    s->formula->left = free_tree(s->formula->left);
	    s->formula->left = malloc(sizeof(tnode));
	    s->formula->left->type = CONSTANT;
	    s->formula->left->id = CTRUE;
	    s->formula->left->mdepth = 0;
	    s->formula->left->left = NULL;
	    s->formula->left->right = NULL;
	    s->formula->left->list = NULL;
	    s->formula->left->value_number = hash_tree(s->formula->left);
	    s->formula->mdepth = 1;
	    s->formula->value_number = hash_tree(s->formula);
	    numsimp++;
	    formulasize = formulasize - size;
	    sort_formulalist(&s);
	    s = simplify_or(s);
	  }
	}
	else if (s->formula->type == BOX && s->formula->left->type == CONSTANT && s->formula->left->id == CFALSE &&
		 s->next != NULL && s->next->formula->type == BOX && s->next->formula->id == s->formula->id) { // [] FALSE | [] PHI = BOX PHI

	  int size = 0;
	  if (verbose)
	    size_tree(s->formula);
	  s->formula = free_tree(s->formula);
	  formulalist *aux = s->next;
	  free(s);
	  s = aux;
	  numsimp++;
	  formulasize = formulasize - size - 1;
	}
	else if (s->formula->type == BOX) {
	  if (in_diamond_true(s->next,s->formula->id)) { // dia true | box phi = dia phi | dia ~phi | box phi = dia phi | ~box phi | box phi = true
	    if (s->next != NULL) {
	      int size = 0;
	      if (verbose) {
		size_list(s->next);
		size = size + size_tree(s->formula->left);
	      }
	      s->next = free_formulalist(s->next);
	      s->formula->left = free_tree(s->formula->left);
	      s->next = NULL;
	      s->formula->type = CONSTANT;
	      s->formula->id = CTRUE;
	      s->formula->value_number = hash_tree(s->formula);
	      numsimp++;
	      formulasize = formulasize - size;
	    }
	  }
	}
      }
    }
    
    s->next = in_conjunction_or_disjunction(CONJUNCTION,s->formula,s->next); // phi | (phi & psi) = phi
    // propagation
    if (s->formula->type == NEGATION) {
      s->next = propagate_in_conjunction_or_disjunction(CONJUNCTION,s->formula->left,s->next);
    }
    else {
      tnode *aux = create_tnode(NEGATION,NEGATION,s->formula->mdepth,s->formula,NULL,NULL);
      s->next = propagate_in_conjunction_or_disjunction(CONJUNCTION,aux,s->next);
      free(aux);
      }
    } 

  sort_formulalist(&s);
  if (s != NULL) {
    s->value_number = hash_list(s);
  }
  return s;
}

tnode *get_nnfsimp (tnode *s) {
  if (s == NULL)
    return s;
  else switch (s->type) {
    case SETC:
      {
	s->right = get_nnfsimp(s->right);
	return s;
      }
      break;
    case SETF: 
      {
	s->left = get_nnfsimp(s->left);
	s->right = get_nnfsimp(s->right);
	return s;
      }
      break;
    case NEGATION: // This is not needed if it is in NNF, but if early ple is run before nnf simplication, we save a call to get nnf if we introduce double negation removal and NNF of negation of constants here.
      {
	if (s->left != NULL) {
	  if (s->left->type == NEGATION) { // simplifies double negations
	    tnode *aux = s->left->left;
	    free(s->left);
	    s->left = NULL;
	    free(s);
	    s = aux;
	    formulasize = formulasize - 2;
	  }
	  else if (s->left->type == CONSTANT) {
	    s->type = CONSTANT;
	    if (s->left->id == CTRUE)
	      s->id = CFALSE;
	    else s->id = CTRUE;
	    free(s->left);
	    s->left = NULL;
	    s->value_number = hash_tree(s);
	    formulasize = formulasize - 1;
	  }
	}
	return s;
      }      
      break;
    case CONSTANT:
    case PROP:
      return s;
      break;
    case BOX:
      {
	s->left = get_nnfsimp(s->left);
	s->mdepth = s->left->mdepth + 1;
	if (s->left->type == CONSTANT && s->left->id == CTRUE) {
	  s->type = CONSTANT;
	  s->id = CTRUE;
	  free(s->left);
	  s->left = NULL;
	  s->mdepth = 0;
	  s->value_number = hash_tree(s);
	  numsimp++;
	  formulasize = formulasize - 2;
	}
	return s;
      }
      break;
    case DIAMOND:
      {
	s->left = get_nnfsimp(s->left);
	s->mdepth = s->left->mdepth + 1;
	if (s->left->type == CONSTANT && s->left->id == CFALSE) {
	  s->type = CONSTANT;
	  s->id = CFALSE;
	  free(s->left);
	  s->left = NULL;
	  s->mdepth = 0;
	  s->value_number = hash_tree(s);
	  numsimp++;
	  formulasize = formulasize - 2;
	}
	return s;
      }
      break;
    case DISJUNCTION:
      {
	sort_formulalist(&(s->list));
	formulalist *aux = s->list;
	int md = 0;
	while (aux != NULL) {
          aux->formula = get_nnfsimp(aux->formula);
	  if (md > aux->formula->mdepth)
	    md = aux->formula->mdepth;
	  aux = aux->next;
	}
	
	s->mdepth = md;
	aux = s->list;

	int flag = 0;
	while (aux != NULL) {
	  if (aux->formula->type == DISJUNCTION) {
	    flag = 1;
	    formulalist *aux2 = aux->formula->list;
	    formulalist *aux3 = aux->formula->list;
	    while (aux3->next != NULL) {
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

	if (flag) {
	  sort_formulalist(&(s->list));
	  s->list->value_number = hash_list(s->list);
	  s->value_number = hash_tree(s);
	}
	s->list = simplify_or(s->list);


	if (s->list == NULL) {
	  tnode *new = malloc(sizeof(tnode));
	  new->type = CONSTANT;
	  new->id = CFALSE;
	  new->left = NULL;
	  new->right = NULL;
	  new->list = NULL;
	  new->value_number = hash_tree(new);
	  s = new;
	}
	else if (s->list->next == NULL) {
	  tnode *aux = s->list->formula;
	  s->type = aux->type;
	  s->id = aux->id;
	  s->value_number = aux->value_number;
	  s->mdepth = aux->mdepth;
	  s->left = aux->left;
	  s-> right= aux->right;
	  s->list = aux->list;
	  free(aux);
	  numsimp++;
	  formulasize = formulasize - 1;
	}
	return s;
      }
      break;
    case CONJUNCTION:
      {
	sort_formulalist(&(s->list));
	formulalist *aux = s->list;

	int md = 0;
	while (aux != NULL) {
          aux->formula = get_nnfsimp(aux->formula);
	  if (md > aux->formula->mdepth)
	    md = aux->formula->mdepth;
	  aux = aux->next;
	}

	s->mdepth = md;
	aux = s->list;

	int flag = 0;
	while (aux != NULL) {
	  if (aux->formula->type == CONJUNCTION) {
	    flag = 1;
	    formulalist *aux2 = aux->formula->list;
	    formulalist *aux3 = aux->formula->list;
	    while (aux3->next != NULL) {
	      aux3 = aux3->next;
	    }
	    aux3->next = aux->next;
	    aux->formula = aux2->formula;
	    aux->next = aux2->next;
	    free(aux2);
	    numsimp++;
	    aux = aux3;
	  }
	  aux = aux->next;
	}

	if (flag) {
	  sort_formulalist(&(s->list));
	  s->list->value_number = hash_list(s->list);
	  s->value_number = hash_tree(s);
	}
	s->list = simplify_and(s->list);


	if (s->list == NULL) {
	  tnode *new = malloc(sizeof(tnode));
	  new->type = CONSTANT;
	  new->id = CTRUE;
	  new->left = NULL;
	  new->right = NULL;
	  new->list = NULL;
	  new->value_number = hash_tree(new);
	  s = new;
	}
	else if (s->list->next == NULL) {
	  tnode *aux = s->list->formula;
	  s->type = aux->type;
	  s->id = aux->id;
	  s->value_number = aux->value_number;
	  s->mdepth = aux->mdepth;
	  s->left = aux->left;
	  s-> right= aux->right;
	  s->list = aux->list;
	  free(aux);
	  numsimp++;
	  formulasize = formulasize - 1;
	}
	return s;
      }
      break;
    default:
      return s;
    }
}


