#include <stdio.h>
#include "tree.h"
#include "symbol_table.h"
#include "prover.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

int emlple = 0;

extern tnode *tree_hash(tnode *s);

extern void print_tree(tnode *t);
/*extern tnode *get_small_cnf(tnode *t); */
extern tnode *copy_tree(tnode *t);
extern void copy_node(tnode *t1, tnode *t2);

extern prop_node *insert_p_position(prop_node *p, tnode *position);
extern prop_node *find_prop (int id);
extern int find_p_position(tnode *position);
extern void clean_positions(void);
extern hptr_nodes *sort_positions(hptr_nodes *positions);
  
extern formulalist *tree_to_list(int type, tnode *left, tnode *right);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern unsigned int hash_tree (tnode *t);
extern unsigned int hash_list (formulalist *l);
extern void sort_formulalist(int type, formulalist **l);
extern formulalist *free_formulalist(formulalist *l);
extern tnode *free_tree(tnode *l);

extern int formulasize;
extern int size_tree (tnode *root);

extern int global;
extern int verbose;

extern int ml_prover;
extern int prenex;
extern int antiprenex;
extern int cnf;
extern int bnf;
extern int small_cnf;
extern int nnfsimp;
extern int bnfsimp;
extern int early_ple;
extern int early_mlple;
extern int numearlyple;
extern int numearlymlple;
extern int numsimp;
extern int numctepropagated;
extern int linearise;

extern int b2k;

extern void print_out (char *);

extern tnode *get_prenex (tnode *s);
extern tnode *get_antiprenex (tnode *s);
extern tnode *get_propagate(tnode *s);
extern tnode *get_nnf (tnode *s, int mlevel, int polarity, int stat);
extern tnode *get_nnfsimp (tnode *s);
//extern tnode *get_bnf (tnode *s);
extern tnode *get_bnfsimp (tnode *s);

extern void free_pnode(prop_node *p);
extern prop_node *find_prop (int id);

extern tnode *init_eple (tnode *s, int sign);
extern tnode *get_eple (tnode *s);
extern void finish_eple (void);

extern struct prop_node *propsid;
extern struct agent_node *agentsid;

literal_list *copy_positions(prop_node *p) {
  literal_list *first = NULL;
  hptr_nodes *aux = NULL, *auxtmp = NULL;
  HASH_ITER(hptr,p->positions,aux,auxtmp){
    if (aux->deleted) {
      HASH_DELETE(hptr,p->positions,aux);
      free(aux);
    }
    else{
      literal_list *new = malloc(sizeof(literal_list));
      new->literal = aux->node;
      new->next = first;
      first = new;
    }
  }
  if (p->positions == NULL)
    HASH_CLEAR(hptr,p->positions);
  return first;
}

literal_list *copy_literal_list(literal_list *l) {
  literal_list *first = NULL, *aux = l;
  while (aux != NULL) {
    literal_list *new = malloc(sizeof(literal_list));
    new->literal = aux->literal;
    new->next = first;
    first = new;
    aux = aux->next;
  }
  return first;
}


formulalist *distribute(formulalist * l) {
  if (l == NULL)
    return l;
  else if (l->next != NULL) {
    l->next = distribute(l->next);
    tnode *aux = l->formula;
    formulalist *conjunction = NULL;
    if (l->formula->distribute == 1) {
      if (l->next->formula->distribute == 1) {
	formulalist *auxr = l->next->formula->list;
	while (auxr != NULL) {
	  if (aux->type == CONJUNCTION) {
	    formulalist *auxl = aux->list;
	    while (auxl != NULL) {
	      tnode *newleft = copy_tree(auxl->formula);
	      tnode *newright = copy_tree(auxr->formula);
	      formulalist *newl = tree_to_list(DISJUNCTION,newleft,newright);
	      tnode *dis = create_tnode(DISJUNCTION,DISJUNCTION,newl->mdepth,NULL,NULL,newl);
	      formulalist *tmp = malloc(sizeof(formulalist));
	      tmp->formula = dis;
	      tmp->next = conjunction;
	      conjunction = tmp;
	      auxl = auxl->next;
	    }
	  }
	  else {
	    tnode *newleft = copy_tree(aux);
	    tnode *newright = copy_tree(auxr->formula);
	    formulalist *newl = tree_to_list(DISJUNCTION,newleft,newright);
	    tnode *dis = create_tnode(DISJUNCTION,DISJUNCTION,newl->mdepth,NULL,NULL,newl);
	    formulalist *tmp = malloc(sizeof(formulalist));
	    tmp->formula = dis;
	    tmp->next = conjunction;
	    conjunction = tmp;
	  }
	  auxr = auxr->next;
	}
      }
    }
    if (conjunction != NULL) {
      tnode *conj = create_tnode(CONJUNCTION,CONJUNCTION,conjunction->mdepth,NULL,NULL,conjunction);
      formulalist *list = malloc(sizeof(formulalist));
      list->formula = conj;
      list->next = NULL;
      return list;
    }
  }
  return l;
}

tnode *get_cnf(tnode *t) {
  if (t == NULL) {
    return t;
  }
  else {
    switch (t->type) {
    case SETC:
      {
	t->right = get_cnf(t->right);
	return t;
      }
      break;
    case SETF: 
      {
	t->left = get_cnf(t->left);
	t->right = get_cnf(t->right);
	return t;
      }
      break;
    case LITERAL:
    case CONSTANT:
    case NEGATION:
      {
	return t;
      }
      break;
    case BOX:
    case DIAMOND:
      {
	t->left = get_cnf(t->left);
	return t;
      }
      break;
    case CONJUNCTION:
      {
	formulalist *aux = t->list;
	while (aux != NULL) {
	  aux->formula = get_cnf(aux->formula);
	  aux = aux->next;
	}
	
	sort_formulalist(CONJUNCTION,&(t->list));
	t->list->value_number = hash_list(t->list);
	t->value_number = hash_tree(t);
	
	if (t->list->next == NULL) {
	  tnode *auxt = t->list->formula;
	  t->type = auxt->type;
	  t->id = auxt->id;
	  t->value_number = auxt->value_number;
	  t->mdepth = auxt->mdepth;
	  t->left = auxt->left;
	  t-> right= auxt->right;
	  t->list = auxt->list;
	  free(auxt);
	}
      }
      break;
    case DISJUNCTION:
      {
	formulalist *aux = t->list;
	while (aux != NULL) {
	  aux->formula = get_cnf(aux->formula);
	  aux = aux->next;
	}
	t->list = distribute(t->list);
	sort_formulalist(DISJUNCTION,&(t->list));
	t->list->value_number = hash_list(t->list);
	if (t->list->formula->type == DISJUNCTION) {
	  t->type = CONJUNCTION;
	  t->value_number = hash_tree(t);
	  t = get_cnf(t);
	}
	if (t->list->next == NULL) {
	  tnode *auxt = t->list->formula;
	  t->type = auxt->type;
	  t->id = auxt->id;
	  t->value_number = auxt->value_number;
	  t->mdepth = auxt->mdepth;
	  t->left = auxt->left;
	  t-> right= auxt->right;
	  t->list = auxt->list;
	  free(auxt);
	}
	return t;
      }
    default:
      return t;
      break;
    }
  }
  return t;
}


prop_node *insert_hml_props(int type, int ml, prop_node *p, tnode *node) {
  hml_props *mlpositions = NULL;
  HASH_FIND(hml,p->hmlpropsposition,&ml,sizeof(int),mlpositions);
  if (mlpositions == NULL) {
    hml_props *new = malloc(sizeof(hml_props));
    new->ml = ml;
    new->ml_occur_positive = 0;
    new->ml_occur_negative = 0;
    new->positive = NULL;
    new->negative = NULL;
    HASH_ADD(hml,p->hmlpropsposition,ml,sizeof(int),new);
    mlpositions = new;
  }
  
  literal_list *new = malloc(sizeof(literal_list));
  new->literal = node;
  
  if (type == POSITIVEP) {
    mlpositions->ml_occur_positive++;
    new->next = mlpositions->positive;
    mlpositions->positive = new;
  }
  else {
    mlpositions->ml_occur_negative++;
    new->next = mlpositions->negative;
    mlpositions->negative = new;
  }
  return p;    
}


tnode *calculate_polarity (tnode *s, int sign, int ml) {
  if (s == NULL)
    return s;
  
  s->polarity = sign;
  s->mlevel = ml;
  
  if (s->type == PROP) {
    prop_node *p = find_prop(s->id);

    if (sign == POSITIVEP) {
      p->occur_positive++;
      p = insert_hml_props(POSITIVEP,ml,p,s);
    }
    else if (sign == NEGATIVEP) {
      p->occur_negative++;
      p = insert_hml_props(NEGATIVEP,ml,p,s);
    }
  }
  else if (s->type == SETF || s->type == SETC) {
    s->left = calculate_polarity(s->left,sign,ml);
    s->right = calculate_polarity(s->right,sign,ml);
  }
  else if (s->type == BOX || s->type == DIAMOND) {
    if (global == ON)
      s->left = calculate_polarity(s->left,sign,ml);
    else s->left = calculate_polarity(s->left,sign,ml+1);   
  }
  else if (s->type == NEGATION || s->type == IMPLICATION) {
    s->left = calculate_polarity(s->left,-sign,ml);
    s->right = calculate_polarity(s->right,sign,ml); 
  }
  /* else if (s->type == DOUBLEIMP) { // This been removed because I have decided to linearise first
    s->left = calculate_polarity(s->left,0,ml);
    s->right = calculate_polarity(s->right,0,ml);
  }
  */
  else { // it is a conjunction or a disjunction
    formulalist *aux = s->list;
    while (aux != NULL) {
      aux->formula = calculate_polarity(aux->formula,sign,ml);
      aux = aux->next;
    }
  }
  return s;
}



tnode *remove_from_parent(tnode *parent_parent, tnode *parent, tnode *position) {
  if (parent_parent->left == parent)
    parent_parent->left = position;
  else if (parent_parent->right == parent)
    parent_parent->right = position;
  else {
    formulalist *auxl = parent_parent->list;
    while (auxl->next != NULL && auxl->next->formula != parent)
      auxl = auxl->next;
    auxl->formula = position;
  }
  position->parent = parent_parent;
  return parent_parent;
}

tnode *update_parent(tnode *node) {

  if (node->left != NULL) node->left->parent = node;
  if (node->right != NULL) node->right->parent = node;
  
  formulalist *aux = node->list;
  if (aux != NULL) {
    aux->parent = node;
    while (aux != NULL) {
      aux->formula->parent = node;
      aux = aux->next;
    }
  }
  return node;
}

int propagate_truth(tnode **node, tnode **nodeparent);

int propagate_falsity(tnode **node, tnode **nodeparent) {
  tnode *position = *node;
  tnode *parent = *nodeparent;
  int flag = 0;
  
  if (position != NULL && parent != NULL) {
    switch (parent->type){
    case SETF:
    case SETC:
    case BOX:
      {
	return flag;
      }
      break;
    case NEGATION:
      {
	parent->left = free_tree(parent->left);
	parent->type = CONSTANT;
	parent->id = CTRUE;
	prop_node *ctrue = find_prop(CTRUE);
	ctrue = insert_p_position(ctrue,parent);
	propagate_truth(&parent,&(parent->parent));
	flag = 1;
	numsimp++;
      }
      break;
    case IMPLICATION:
      {
	if (position == parent->right) { // false is on the right-hand side: phi => false = \neg phi
	  parent->type = NEGATION;
	  parent->id = NEGATION;
	  parent->right = free_tree(parent->right);
	  numsimp++;
	  flag = 1;
	}
	else { // false is on the left-hand side of the implication false => phi = true
	  parent->left = free_tree(parent->left);
	  parent->right = free_tree(parent->right);
	  parent->type = CONSTANT;
	  parent->id = CTRUE;
	  prop_node *ctrue = find_prop(CTRUE);
	  ctrue = insert_p_position(ctrue,parent);
	  flag = 1;
	  numsimp++;
	  propagate_truth(&parent,&(parent->parent));
	}
      }
      break;
    case DIAMOND:
      {
	parent->left = free_tree(parent->left);
	parent->type = CONSTANT;
	parent->id = CFALSE;
	prop_node *cfalse = find_prop(CFALSE);
	cfalse = insert_p_position(cfalse,parent);
	flag = 1;
	numsimp++;
	propagate_falsity(&parent,&(parent->parent));
      }
      break;
    case CONJUNCTION:
      {
	parent->list = free_formulalist(parent->list);
	parent->type = CONSTANT;
	parent->id = CFALSE;
	prop_node *cfalse = find_prop(CFALSE);
	cfalse = insert_p_position(cfalse,parent);
	flag = 1;
	numsimp++;
	propagate_falsity(&parent,&(parent->parent));
      }
      break;
    case DISJUNCTION:
      {
	formulalist *aux = parent->list;
	if (aux->formula == position && aux->next != NULL) {
	  parent->list = aux->next;
	  free(aux);
	  position = free_tree(position);
	  numsimp++;
	  flag = 1;
	}
	else if (aux->next == NULL) { // this is the empty disjunction
	  //position = free_tree(position);
	  parent->list = free_formulalist(parent->list);
	  parent->type = CONSTANT;
	  parent->id = CFALSE;
	  prop_node *cfalse = find_prop(CFALSE);
	  cfalse = insert_p_position(cfalse,parent);
	  flag = 1;
	  propagate_falsity(&parent,&(parent->parent));
	}
	else {
	    int found = 0;
	    while (!found && aux->next != NULL) {
	      if (aux->next->formula == position) found = 1;
	      else aux = aux->next;
	    }
	    if (found && aux->next != NULL) {
	      formulalist *tmplist = aux->next;
	      aux->next = aux->next->next;
	      free(tmplist);
	      position->parent->value_number = hash_tree(position->parent);
	      position = free_tree(position);
	      numsimp++;
	      flag = 1;
	    }
	    else if (found && aux->next == NULL) printf("\n==========> error");
	}
        // flag doesn't change here.
      }
      break;
    default:
      {
	if(find_p_position(position))
	  printf("\n We have a problem, Houston! Falsity Propagation type, id, vn, position || parent type id vn: %d %d %u %p|| %d %d %u",position->type,position->id, position->value_number, (void *)position,position->parent->type,position->parent->id,position->parent->value_number);
      }
    }
  }
  //  print_out("FALSE");
  return flag;
}


int propagate_truth(tnode **node, tnode **parentnode) {
  tnode *position = *node;
  tnode *parent = *parentnode;
  int flag = 0;
  
  if (position != NULL && parent != NULL) {
    switch (parent->type){
    case SETF:
    case SETC:
    case DIAMOND:
      break;
    case NEGATION:
      {
	parent->left = free_tree(parent->left);
	parent->type = CONSTANT;
	parent->id = CFALSE;
	prop_node *cfalse = find_prop(CFALSE);
	cfalse = insert_p_position(cfalse,parent);
	flag = 1;
	numsimp++;
	propagate_falsity(&parent,&(parent->parent));
      }
      break;
    case IMPLICATION:
      {
	if (position == parent->left) { // true is on the left-hand side: true => phi = phi
	  parent->left = free_tree(parent->left);
	  tnode *aux = parent->parent;
	  tnode *right = parent->right;
	  copy_node(parent,parent->right);
	  parent = update_parent(parent);
	  parent->parent = aux;
	  free(right);
	  numsimp++;
	  flag = 1;
	}
	else { // true is on the right-hand side of the implication phi => true = true
	  parent->left = free_tree(parent->left);
	  parent->right = free_tree(parent->right);
	  parent->type = CONSTANT;
	  parent->id = CTRUE;
	  prop_node *ctrue = find_prop(CTRUE);
	  ctrue = insert_p_position(ctrue,parent);
	  flag = 1;
	  numsimp++;
	  propagate_truth(&parent,&(parent->parent));
	}	
      }
      break;
    case BOX:
      {
	parent->left = free_tree(parent->left);
	parent->type = CONSTANT;
	parent->id = CTRUE;
	prop_node *ctrue = find_prop(CTRUE);
	ctrue = insert_p_position(ctrue,parent);
	flag = 1;
	numsimp++;
	propagate_truth(&parent,&(parent->parent));
      }
      break;
    case DISJUNCTION:
      {

	parent->list = free_formulalist(parent->list);
	parent->type = CONSTANT;
	parent->id = CTRUE;
	prop_node *ctrue = find_prop(CTRUE);
	ctrue = insert_p_position(ctrue,parent);
	flag = 1;
	numsimp++;
	propagate_truth(&parent,&(parent->parent));
      }
      break;
    case CONJUNCTION:
      {
	formulalist *aux = parent->list;
	if (aux->formula == position && aux->next != NULL) {
	  parent->list = aux->next;
	  free(aux);
	  position = free_tree(position);
	  numsimp++;
	  flag = 1;
	}
	else if (aux->next == NULL) { // this is the empty conjunction
	  parent->list = free_formulalist(parent->list);
	  parent->type = CONSTANT;
	  parent->id = CTRUE;
	  prop_node *ctrue = find_prop(CTRUE);
	  ctrue = insert_p_position(ctrue,parent);
	  flag = 1;
	  propagate_truth(&parent,&(parent->parent));
	}
	else { 
	  if (aux->formula == position) {
	    formulalist *auxlist = aux;
	    parent->list = parent->list->next;
	    free(auxlist);
	    numsimp++;
	    position = free_tree(position);
	  }
	  else {
	    int found = 0;
	    while (!found && aux->next != NULL) {
	      if (aux->next->formula == position) found = 1;
	      else aux = aux->next;
	    }
	    if (found && aux->next != NULL) {
	      formulalist *auxlist = aux->next;
	      aux->next = aux->next->next;
	      parent->value_number = hash_tree(parent);
	      free(auxlist);
	      position = free_tree(position);
	      numsimp++;
	      flag = 1;
	    }
	    else if (found && aux->next == NULL) printf("\n==========> error");
	  }
	}	
      }
      break;
    default:
      {
	//	int x = find_p_position(position);
	if(find_p_position(position))
	  printf("\n We have a problem, Houston! Truth Propagation type, id, vn, position || parent type id vn: %d %d %u %p || %d %d %u",position->type,position->id, position->value_number,(void *) position, position->parent->type,position->parent->id,position->parent->value_number);
      }
    }
  }
  //  print_out("TRUTH");
  return flag;
}


int do_pure_literal(void) {
  
  prop_node *ctrue = find_prop(CTRUE);
  prop_node *cfalse = find_prop(CFALSE);
  
  prop_node *p,*tmpp;
  int flag = 0;
  int numelim = 0;
  
  HASH_ITER(hid,propsid,p,tmpp) {
    if (p->id != CTRUE && p->id != CFALSE && p->id != CSTART) {
      if (p->occur == 0) {
	p->hmlpropsposition = NULL;
      }
      else if (early_mlple == ON || (early_ple == ON && (p->occur_positive == 0 || p->occur_negative == 0))) {
	hml_props *hmlpositions = NULL, *thmlpos = NULL;
	HASH_ITER(hml,p->hmlpropsposition,hmlpositions,thmlpos) {
	  if (hmlpositions->ml_occur_positive == 0 && hmlpositions->ml_occur_negative == 0) {
	    HASH_DELETE(hml,p->hmlpropsposition,hmlpositions); // Is this right?
	    free(hmlpositions);
	    hmlpositions = NULL;
	  }
	  else if (hmlpositions->ml_occur_positive != 0 && hmlpositions->ml_occur_negative == 0) {
	    flag = 1;
	    literal_list *aux = hmlpositions->positive;
	    while (aux != NULL) {
	      p->occur--;
	      p->occur_positive--;
	      hmlpositions->ml_occur_positive--;
	      numelim++;
	      aux->literal->type = CONSTANT;
	      aux->literal->id = CTRUE;
	      insert_p_position(ctrue,aux->literal);
	      literal_list *aux2 = aux;
	      aux = aux->next;
	      free(aux2);
	    }
	    hmlpositions->positive = NULL;
	  }
	  else if (hmlpositions->ml_occur_positive == 0 && hmlpositions->ml_occur_negative != 0) {
	      flag = 1;
	      literal_list *aux = hmlpositions->negative;
	      while (aux != NULL) {
		p->occur--;
		p->occur_negative--;
		hmlpositions->ml_occur_negative--;
		numelim++;
		aux->literal->type = CONSTANT;
		aux->literal->id = CFALSE;
		insert_p_position(cfalse,aux->literal);
		literal_list *aux2 = aux;
		aux = aux->next;
		free(aux2);
	      }
	      hmlpositions->negative = NULL;
	    }
	}
      }
    }
  }
  if (early_ple == ON)
    numearlyple = numearlyple + numelim;
  else
    numearlymlple = numearlymlple + numelim;
  return flag;
}


void do_truth_propagation(void) {

  int flag = 1;
  prop_node *ctrue = find_prop(CTRUE);
  prop_node *cfalse = find_prop(CFALSE);

  if (early_mlple == ON) early_ple = OFF;

  while (flag) {
    hptr_nodes *auxpos = NULL, *auxpostmp = NULL;
    int auxflag = 0;
    flag = 0;
  

    ctrue->positions = sort_positions(ctrue->positions);
    HASH_ITER(hptr,ctrue->positions,auxpos,auxpostmp) {
      if (auxpos->deleted) {
	HASH_DELETE(hptr,ctrue->positions,auxpos);
	free(auxpos);
      }
      else if (!(auxpos->deleted) && auxpos->node != NULL) {
	auxflag = propagate_truth(&(auxpos->node),&(auxpos->node->parent));
	flag = MAX(flag,auxflag);
	if (flag) numctepropagated++;
	//print_out("TRUTH");
      }
    }

    cfalse->positions = sort_positions(cfalse->positions);
    HASH_ITER(hptr,cfalse->positions,auxpos,auxpostmp) {
      if (auxpos->deleted) {
	HASH_DELETE(hptr,cfalse->positions,auxpos);
	free(auxpos);
      }
      else if (!(auxpos->deleted) && auxpos->node != NULL) {
	auxflag = propagate_falsity(&(auxpos->node), &(auxpos->node->parent));
	flag = MAX(flag,auxflag);
	if (flag) numctepropagated++;
	//print_out("FALSITY");
      }
    }
  }
}

void do_early_ple (void) {
  
  int flag = 1;

  if (early_mlple == ON) early_ple = OFF;

  while (flag) {
    flag = 0;
    do_truth_propagation();
    flag = do_pure_literal();
    //print_out("PURE LITERAL");
  }
}


tnode *input_simplification (tnode *root) {

  int oldbnf = bnf;
  int oldbnfsimp = bnfsimp;
  
  if (bnfsimp == ON) {
    int oldsimp;
    do {
      oldsimp = numsimp;
      root = get_nnfsimp(root);
      print_out("BNF Simplification");
      do_early_ple();
    } while (numsimp > oldsimp);

    bnf = OFF;
    bnfsimp = OFF;
    root = get_nnf(root,1,POSITIVEP,1);
    print_out("NNF");
  }
  if (nnfsimp == ON) {
    int oldsimp;
    do {
      oldsimp = numsimp;
      root = get_nnfsimp(root);
      print_out("NNF Simplification");
      do_early_ple();
    } while (numsimp > oldsimp);
  }

  bnf = oldbnf;
  bnfsimp = oldbnfsimp;
  return root;
}

tnode *eliminate_double_implications(tnode *s, int polarity, int ml) {
  if (s != NULL) {
    s->polarity = polarity;
    s->mlevel = ml;
    if (s->type == PROP) {
      prop_node *p = find_prop(s->id);

      if (polarity == POSITIVEP) {
	p->occur_positive++;
	p = insert_hml_props(POSITIVEP,ml,p,s);
    }
      else if (polarity == NEGATIVEP) {
	p->occur_negative++;
	p = insert_hml_props(NEGATIVEP,ml,p,s);
      }
    }
    else if (s->type == DOUBLEIMP) {
      if (polarity > 0) { // (p iff q) = (p then q) and (q then p)
	tnode *left = copy_tree(s->left);
	tnode *right = copy_tree(s->right);
	tnode *ifpart = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,s->left,s->right,NULL);
	tnode *onlyifpart = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,right,left,NULL);	
	s->type = CONJUNCTION;
	s->id = CONJUNCTION;
	s->list = tree_to_list(CONJUNCTION,ifpart,onlyifpart);
	s->left = NULL;
	s->right = NULL;
	sort_formulalist(CONJUNCTION,&(s->list));
	s->list->value_number = hash_list(s->list);
	s->value_number = hash_tree(s);
	s = eliminate_double_implications(s,polarity,ml);
      }
      else { // (p iff q) = (p & q) | (~p & ~q)
	tnode *newleft = copy_tree(s->left);
	tnode *newright = copy_tree(s->right);
	formulalist *leftlist = tree_to_list(CONJUNCTION,s->left,s->right);
	tnode *left = create_tnode(CONJUNCTION,CONJUNCTION,s->mdepth,NULL,NULL,leftlist);
	tnode *notleft = create_tnode(NEGATION,NEGATION,s->mdepth,newleft,NULL,NULL);
	tnode *notright = create_tnode(NEGATION,NEGATION,s->mdepth,newright,NULL,NULL);
	formulalist *rightlist = tree_to_list(CONJUNCTION,notleft,notright);
	tnode *right = create_tnode(CONJUNCTION,CONJUNCTION,s->mdepth,NULL,NULL,rightlist);

	s->type = DISJUNCTION;
	s->id = DISJUNCTION;
	s->left = NULL;
	s->right = NULL;
	s->list = tree_to_list(DISJUNCTION,left,right);
	sort_formulalist(DISJUNCTION,&(s->list));
	s->list->value_number = hash_list(s->list);
	s->value_number = hash_tree(s);
	s = eliminate_double_implications(s,polarity,ml);
      }
    }
    else if (s->type == BOX || s->type == DIAMOND)
      s->left = eliminate_double_implications(s->left,polarity,ml+1);
    else if (s->type == NEGATION || s->type == IMPLICATION)
      s->left = eliminate_double_implications(s->left,-polarity,ml);
    else
      s->left = eliminate_double_implications(s->left,polarity,ml);
    
    s->right = eliminate_double_implications(s->right,polarity,ml);

    formulalist *aux = s->list;
    while (aux != NULL) {
      aux->formula = eliminate_double_implications(aux->formula,polarity,ml);
      aux = aux->next;
    }
  }
  return s;
}

tnode *input_preprocessing(tnode *root) {

  if (linearise) {
    root = eliminate_double_implications(root,POSITIVEP,1);
    print_out("Linearisation");
  }

 
  if (early_ple == ON || early_mlple == ON) {
    if (!linearise) {
      root = calculate_polarity(root,POSITIVEP,1);
      print_out("Polarity");
    }
    do_early_ple();
    print_out("Early (ML)PLE");
  }

  //if (verbose) {
  //  formulasize = size_tree(root);
  //  printf("\n Size After: %d",formulasize);
    //}
  
  //  print_out("NEW EARLY PLE");
  //  exit(0);
    
  root = get_nnf(root,1,POSITIVEP,1);
  print_out("BNF/NNF");

  // root = tree_hash(root);
  root = input_simplification(root);

  // this is done at least once because I need to know what the max_modal_level is
  //root = calculate_polarity(root,1,1); // the root is of positive polarity
  /*  if (early_ple == ON || early_mlple == ON) {
   do_early_ple(root);
   print_out("Early (ML) PLE");
  }
  */
  
  if (prenex == ON) {
    root=get_prenex(root);      
    print_out("Prenex");
    if (bnfsimp == ON) {
      bnfsimp = OFF;
      root = get_nnf(root,1,1,1);
      root = input_simplification(root);
      bnfsimp = ON;
    }
    if (antiprenex > prenex) {
      root=get_antiprenex(root);
      print_out("Antiprenex");
      if (bnfsimp == ON) get_nnf(root,1,1,1);
      root = input_simplification(root);
    }
  }
  else if (antiprenex == ON) {
    root=get_antiprenex(root);
    print_out("Antiprenex");
    if (bnfsimp == ON) get_nnf(root,1,1,1);
    root = input_simplification(root);
    if (prenex > antiprenex) {
      root=get_prenex(root);
      print_out("Prenex");
      if (bnfsimp == ON) get_nnf(root,1,1,1);
      root = input_simplification(root);
    }
  }
    
  if (cnf == ON) {
	root = get_cnf(root);
	print_out("CNF");
	root = input_simplification(root);
  }
  /*
  else if (small_cnf == ON) {
    root = get_small_cnf(root);
    print_out("Small CNF");
    root = input_simplification(root);
  }
  */
  
  clean_positions();
  if (verbose) formulasize = size_tree(root);
  return root;
}
