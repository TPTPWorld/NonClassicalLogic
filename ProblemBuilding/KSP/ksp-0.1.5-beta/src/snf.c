#include <stdlib.h>
#include <stdio.h>
#include "prover.h"
#include "tree.h"
#include "symbol_table.h"
#include "uthash.h"

extern void print_tree(tnode *t);
extern tnode *copy_tree(tnode *s);

extern struct prop_node *propsid;
extern struct agent_node *agentsid;

extern prop_node *insert_pnew_node (int id, int type);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern int is_literal (tnode *t);
extern int is_box (tnode *t);
extern int is_diamond (tnode *t);
extern literalslist *simplify_disjunction(literal_list *l);
extern void insert_clause_set (tclause **clause, int type, int set);
extern tnode *free_tnode(tnode *t);
extern literal_list *free_literal_list(literal_list *dis);
extern tnode *get_nnf(tnode *s, int modal_level, int polarity, int stat);
extern formulalist *tree_to_list(int type, tnode *left, tnode *right);

extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);

extern prop_node *find_prop (int id);
extern int rename_formula(tnode *formula, int type, int set, int subtype, int modal_level);
extern void add_renaming(int id, tnode *formula, int set, int subtype, int modal_level);
extern void add_definition(int id, tnode *formula, int set, int subtype, int modal_level);

extern tnode *free_tree (tnode *s);
extern formulalist *free_formulalist (formulalist *s);

extern tnode *tree_hash(tnode *s);
extern formulalist *list_hash(formulalist *s);

extern formulalist *distribute(formulalist * l);
  
extern int conjunction_renaming;
extern int ires;
extern int ml_prover;
extern int global;
extern int numprops;
extern int numclause;
extern int newtemp;
extern int clausesize;
extern int numfsubsumed;
extern int numbsubsumed;
extern int numtautologies;

formulalist *get_snf_list(int type, int set, int subtype, int modal_level, formulalist *l);
void create_clause_snf(int set, int type, int subtype, int modal_level, int agent, int numdiamond, tnode *left, literal_list *right, justification *just);
int get_snf(int set, int subtype, int modal_level, tnode *s);

tnode *get_snf_modal(int set, int subtype, int modal_level, tnode *t) {
  int ml;

  tnode *imp = NULL;
  tnode *left = NULL;
  tnode *right = NULL;
	  
  if (!global)
    ml = modal_level+1;
  else ml = modal_level;

  subtype = t->numdiamond;
  /*  if (t->left->type == BOX)
      subtype = BOX;
      else subtype = numdiamond++; */
 
  if (t->left->type == CONJUNCTION || t->left->type == DISJUNCTION) {
    t->left->list = get_snf_list(t->left->type,set,subtype,ml,t->left->list);
    int id = rename_formula(t->left,HIGH,set,subtype,ml);
    t->left->type = PROP;
    t->left->id = id;
    t->left->left = free_tree(t->left->left);
    t->left->right = free_tree(t->left->right);
    t->left->list = free_formulalist(t->left->list);
    clausesize = clausesize +  1; // for the new symbol
    if (id < 0) {
      t->left->id = -(t->left->id);
      tnode *not = create_tnode(NEGATION,NEGATION,0,t->left,NULL,NULL);
      not->parent = t->left->parent;
      t->left = not;
    }
    if (right != NULL) {
      left = copy_tree(t->left);
      imp = create_tnode(IMPLICATION,IMPLICATION,0,left,right,NULL);
      get_snf(set,subtype,modal_level,imp);
    }
  }
  else if (t->left->type == BOX || t->left->type == DIAMOND) {
    t->left = get_snf_modal(set,subtype, ml,t->left);
    int id = rename_formula(t->left,HIGH,set,subtype,ml);
    t->left->type = PROP;
    t->left->id = id;
    t->left->left = free_tree(t->left->left);
    t->left->right = free_tree(t->left->right);
    t->left->list = free_formulalist(t->left->list);
    clausesize = clausesize +  1; // for the new symbol
    if (id < 0) {
      t->left->id = -(t->left->id);
      tnode *not = create_tnode(NEGATION,NEGATION,0,t->left,NULL,NULL);
      not->parent = t->left->parent;
      t->left = not;
    }
    if (right != NULL) {
      left = copy_tree(t->left);
      imp = create_tnode(IMPLICATION,IMPLICATION,0,left,right,NULL);
      get_snf(set,subtype,modal_level,imp);
    }
  }
  t=tree_hash(t);
  return t;
}

formulalist *get_snf_list(int type, int set, int subtype, int modal_level, formulalist *l) {
  formulalist *aux = l;
  while (aux != NULL) {
    if (aux->formula->type == CONJUNCTION || aux->formula->type == DISJUNCTION) {
      aux->formula->list = get_snf_list(aux->formula->type,set,subtype,modal_level,aux->formula->list);
      if ((type == DISJUNCTION && aux->formula->type == CONJUNCTION)) {
	int id = rename_formula(aux->formula,HIGH,set,subtype,modal_level);
	aux->formula->type = PROP;
	aux->formula->id = id;
	aux->formula->left = free_tree(aux->formula->left);
	aux->formula->right = free_tree(aux->formula->right);
	aux->formula->list = free_formulalist(aux->formula->list);
	clausesize = clausesize +  1; // for the new symbol
	if (id < 0) {
	  tnode *not = create_tnode(NEGATION,NEGATION,0,aux->formula,NULL,NULL);
	  aux->formula->id = -aux->formula->id;
	  not->parent = aux->formula->parent;
	  aux->formula = not;
	}
      }
    }
    else if (aux->formula->type == BOX || aux->formula->type == DIAMOND) {
      aux->formula = get_snf_modal(set,subtype,modal_level,aux->formula);
      if (type == DISJUNCTION || conjunction_renaming) {
	int id = rename_formula(aux->formula,HIGH,set,subtype,modal_level);
	aux->formula->type = PROP;
	aux->formula->id = id;
	aux->formula->left = free_tree(aux->formula->left);
	aux->formula->right = free_tree(aux->formula->right);
	aux->formula->list = free_formulalist(aux->formula->list);
	clausesize = clausesize +  1; // for the new symbol
	if (id < 0) {
	  tnode *not = create_tnode(NEGATION,NEGATION,0,aux->formula,NULL,NULL);
	  aux->formula->id = -aux->formula->id;
	  not->parent = aux->formula->parent;
	  aux->formula = not;
	}
      }
    }
    aux = aux->next;
  }
  l = list_hash(l);
  return l;
}

literal_list *get_literal_list(formulalist *l) {
  literal_list *dis =  NULL;
  while (l != NULL) {
    literal_list *new = malloc(sizeof(literal_list));
    new->literal = l->formula;
    new->next = dis;
    dis = new;
    l = l->next;
  }
  return dis;
}

literal_list *get_disjunction(tnode *s) {
  literal_list *dis =  malloc(sizeof(literal_list));
  int id = is_literal(s);
  if (id) {
    dis->literal = s;
    dis->next = NULL; 
  }
  else {
    dis->literal = s->left;
    dis->next = get_disjunction(s->right);
  }
  return dis;
}

int compare_disj(literalslist *l1, literalslist *l2) {
  int same = 1;
  while (same && l1 != NULL && l2 != NULL) {
    if (l1->literal != l2->literal)
      same = 0;
    else {
      l1=l1->next;
      l2=l2->next;
    }
  }
  if (!(l1 == NULL && l2 == NULL)) 
    same = 0;
  return same;
}
    
int size_clause (literalslist *l) {
  int size = 0;
  while (l != NULL) {
    size += 1;
    l = l->next;
  }
  return size;
}

int max_lit_clause (literalslist *l) {
  while (l->next != NULL)
    l = l->next;
  return l->literal;
}

void create_clause_snf(int set, int type, int subtype, int modal_level, int agent, int numdiamond, tnode *left, literal_list *right, justification *just) {
  tclause *clause = malloc(sizeof(tclause));
  clause->number = numclause++;
  clause->type = type;
  
  /*  if (type == INITIAL)
    clause->subtype = BOX;
    else */
  clause->subtype = subtype;
  clause->numdiamond = numdiamond;
  
  if (!ml_prover)
    clause->modal_level = 1;
  else
    clause->modal_level = modal_level;
  clause->agent = agent;
  if (left == NULL) {
    if (type == INITIAL)
      clause->left = CSTART;
    else clause->left = CTRUE;
  }
  else if (left->type == NEGATION)
    clause->left = -left->left->id;
  else clause->left = left->id;
  clause->right = simplify_disjunction(right);
  clause->just = just;
  clause->deleted = NULL;
  clause->propagated = 0;
  clause->size = size_clause(clause->right);
  clause->max_literal = max_lit_clause(clause->right);
  clause->min_literal = clause->right->literal;
  clause->class = classify_clause(clause->right);
  insert_clause_set(&clause,clause->type,set);
}


/* 
   The following creates clauses as given by the user (checked through parsing).
   NOTE: subtype is always BOX.
*/

void create_clause (int set, tnode *s) {
  tnode *left = NULL;
  literal_list *right;
  int type, agent;

  justification *just = malloc(sizeof(justification));
  just->rule = GIVEN;
  just->parents = NULL;
  just->literals = NULL;

  if (s->type == CONSTANT) {
    literal_list *dis = malloc(sizeof(literal_list));
    dis->literal = s;
    dis->next = NULL;
    create_clause_snf(set,LITERAL,BOX,1,PROP,1,NULL,dis,just);
  }
  else if (s->type == DISJUNCTION) {
    literal_list *dis = get_literal_list(s->list);
    create_clause_snf(set,LITERAL,BOX,1,PROP,1,NULL,dis,just);
  }
  else if (s->type == IMPLICATION) {
    if (s->left->type == CONSTANT && s->left->id == CSTART) {
      literal_list *dis = get_literal_list(s->right->list);
      create_clause_snf(set,INITIAL,BOX,1,PROP,1,NULL,dis,just);
    }
    else if (s->left->type == CONSTANT && s->left->id == CTRUE && s->right->type != BOX && s->right->type != DIAMOND) {
      literal_list *dis = get_literal_list(s->right->list);
      create_clause_snf(set,LITERAL,BOX,1,PROP,1,NULL,dis,just);
    }
    else {
      if (is_literal(s->left)) {
	left = s->left;
      }
      if (is_diamond(s->right)) {
	type = MNEGATIVE;
	agent = s->right->id;
	right = get_disjunction(s->right->left);
      }
      else {
	type = MPOSITIVE;
	agent = s->right->id;
	right = get_disjunction(s->right->left);
      }
      create_clause_snf(set,type,BOX,1,agent,1,left,right,just);
    }
  }
}


void create_clauses (int set, tnode *s) {
  if (s != NULL) {
    if (s->type != CONJUNCTION) 
      create_clause(set,s);
    else {
      formulalist *aux = s->list;
      while ( aux != NULL) {
	create_clause(set,aux->formula);
	aux = aux->next;
      }
    }
  }
}


int get_snf(int set, int subtype, int modal_level, tnode *s) {
  if (s == NULL)
    return 0;
  switch (s->type) {
    case SETC:
      {
	create_clauses(s->id,s->left);
	get_snf(s->id,subtype,modal_level,s->right);
	
      }	
      break;
  case SETF:
      {
	get_snf(s->id,subtype,modal_level,s->left);
	get_snf(s->id,subtype,modal_level,s->right);
      }	
      break;
  case CONJUNCTION:
  case DISJUNCTION:
  case NEGATION:
  case BOX:
  case DIAMOND:
  case PROP:
  case CONSTANT:
    {
      prop_node *p = insert_pnew_node(numprops,HIGH);
      tnode *new = create_tnode(PROP,p->id,0,NULL,NULL,NULL);
      literal_list *dis = malloc(sizeof(literal_list));
      
      dis->literal = new;
      dis->next = NULL;

      justification *just = malloc(sizeof(justification));
      just->rule = SNF;
      just->parents = NULL;
      just->literals = NULL;

      if (ires)
	create_clause_snf(set,INITIAL,subtype,modal_level,PROP,1,NULL,dis,just);
      else
	create_clause_snf(set,LITERAL,subtype,modal_level,PROP,1,NULL,dis,just);

      clausesize = clausesize +  3; // the new symbol * 2 + conjunction; not counting start and implication as part of a formula

      tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,new,s,NULL);
      get_snf(set,subtype,modal_level,newimp);
      
      free(newimp);
      free(new);
      free(dis);
    }
    break;
  case IMPLICATION:
    {	
      if (s->right->type == CONJUNCTION || s->right->type == DISJUNCTION) {
	s->right->list = get_snf_list(s->right->type,set,subtype,modal_level,s->right->list); 
	int id;
	if (s->left->type == NEGATION)
	  id = -s->left->left->id;
	else id = s->left->id;
	if (s->right->type == CONJUNCTION) {
	  add_renaming(id,s->right,set,subtype,modal_level);
	  formulalist *aux = s->right->list;
	  while (aux != NULL) {
	    add_definition(id,aux->formula,set,subtype,modal_level);
	    aux = aux->next;
	    clausesize = clausesize +  1; // for every time the new symbols occurs in the clauses
	  }
	}
	else { // it is a disjunction
	  if (s->right->list->formula->type == CONJUNCTION && s->right->list->next == NULL) {
	    tnode *aux = s->right;
	    s->right = s->right->list->formula;
	    free(aux);
	    get_snf(set,subtype,modal_level,s);
	  }
	  else {
	    int flag = 1;
	    tnode *new;
	    if (s->left->type == NEGATION) {
	      new = s->left->left;
	      clausesize = clausesize - 1;
	      flag = 0;
	    }
	    else if (s->left->id < 0) {
	      tnode *new2 = create_tnode(PROP,-s->left->id,0,NULL,NULL,NULL);
	      new  = create_tnode(NEGATION,NEGATION,0,new2,NULL,NULL);
	      clausesize = clausesize + 1;
	    }
	    else {
	      new  = create_tnode(NEGATION,NEGATION,0,s->left,NULL,NULL);
	      clausesize = clausesize + 1;
	    }

	    formulalist *newdis = malloc(sizeof(formulalist));
	    newdis->formula = new;
	    newdis->mdepth = new->mdepth;
	    newdis->next = s->right->list;

	    clausesize = clausesize +  1; // for the new disjunction symbol. Again, I am only counting the right hand side of a clause
	  
	    literal_list *dis = get_literal_list(newdis);
	    
	    justification *just = malloc(sizeof(justification));
	    just->rule = SNF;
	    just->parents = NULL;
	    just->literals = NULL;

	    create_clause_snf(set,LITERAL,subtype,modal_level,PROP,1,NULL,dis,just);
	    
	    literal_list *tmp = dis;
	    while (tmp != NULL) {
	      tmp = tmp->next;
	      free(dis);
	      dis = tmp;
	    }

	    free(newdis);
	    
	    if (flag)
	      free(new);
	  }
	}
      }
      else if (is_box(s->right) || is_diamond(s->right)) {
	int clause_type;
	int clause_subtype = s->right->numdiamond;

	if (is_box(s->right))
	  clause_type = MPOSITIVE;
	else clause_type = MNEGATIVE;
	
	if (clause_type == MNEGATIVE && (is_literal(s->right->left) == CFALSE)) { // simplifies l => <> false
	  tnode *new;
	  int flag = 1;
	  if (s->left->type == NEGATION) {
	    new = s->left->left;
	    flag = 0;
	    clausesize = clausesize -1;
	  }
	  else if (s->left->id < 0) {
	    tnode *new2 = create_tnode(PROP,-s->left->id,0,NULL,NULL,NULL);
	    new  = create_tnode(NEGATION,NEGATION,0,new2,NULL,NULL);
	    clausesize = clausesize +  1;
	  }
	  else {
	    new  = create_tnode(NEGATION,NEGATION,0,s->left,NULL,NULL);
	    clausesize = clausesize + 1;
	  }
	  
	  literal_list *newlist = malloc(sizeof(literal_list));
	  newlist->literal = new;
	  newlist->next = NULL;
	  
	  justification *just = malloc(sizeof(justification));
	  just->rule = SNF;
	  just->parents = NULL;
	  just->literals = NULL;
	  create_clause_snf(set,LITERAL,subtype,modal_level,PROP,1,NULL,newlist,just);

	  clausesize = clausesize -2; // for deleting the right-hand side of the modal clauses

	  if (flag)
	    free(new);
	}	
	else if (is_literal(s->right->left)) { // there is a literal or a constant in the scope of the modal operator; just creates the clause
	  literal_list *new = malloc(sizeof(literal_list));
	  new->literal = s->right->left;
	  new->next = NULL;
	  justification *just = malloc(sizeof(justification));
	  just->rule = SNF;
	  just->parents = NULL;
	  just->literals = NULL;
	  
	  create_clause_snf(set,clause_type,subtype,modal_level,s->right->id,s->right->numdiamond,s->left,new,just);
	  
	  free(new);
	}
	else { // there is a complex formula in the scope of the modal operator; rename the formula
	  tnode *imp = NULL;
	  tnode *left = NULL;
	  tnode *right = NULL;
	  
	  s->right = get_snf_modal(set,clause_subtype,modal_level,s->right);
	  literal_list *new = malloc(sizeof(literal_list));
	  new->literal = s->right->left;
	  new->next = NULL;
	  justification *just = malloc(sizeof(justification));
	  just->rule = SNF;
	  just->parents = NULL;
	  just->literals = NULL;
	  create_clause_snf(set,clause_type,subtype,modal_level,s->right->id,s->numdiamond,s->left,new,just);
	  if (right != NULL) {
	    left = copy_tree(s->right->left);
	    imp = create_tnode(IMPLICATION,IMPLICATION,0,left,right,NULL);
	    get_snf(set,subtype,modal_level,imp);
	  }
	}
      }
      else {
	if (is_literal(s->right)) {
	  tnode *new;
	  int flag = 1;
	  if (s->left->type == NEGATION) {
	    new = s->left->left;
	    flag = 0;
	    clausesize = clausesize - 1;
	  }
	  else if (s->left->id < 0) {
	    tnode *new2 = create_tnode(PROP,-s->left->id,0,NULL,NULL,NULL);
	    new  = create_tnode(NEGATION,NEGATION,0,new2,NULL,NULL);
	    clausesize = clausesize + 1;
	  }
	  else {
	    new  = create_tnode(NEGATION,NEGATION,0,s->left,NULL,NULL);
	    clausesize = clausesize + 1;
	  }
	  
	  literal_list *new1 = malloc(sizeof(literal_list));
	  literal_list *new2 = malloc(sizeof(literal_list));

	  new1->literal = new;
	  new2->literal = s->right;
	  new1->next = new2;
	  new2->next = NULL;

	  justification *just = malloc(sizeof(justification));
	  just->rule = SNF;
	  just->parents = NULL;
	  just->literals = NULL;
	  create_clause_snf(set,LITERAL,subtype,modal_level,PROP,1,NULL,new1,just);

	  clausesize = clausesize + 1; //for the disjunction symbol

	  if (flag)
	    free(new); 
	  free(new1);
	  free(new2); 
	}
      }
    }
    break;
  default: printf("\n We have a problem, Houston! In SNF.");
    break;
  }
  return 0;
}
