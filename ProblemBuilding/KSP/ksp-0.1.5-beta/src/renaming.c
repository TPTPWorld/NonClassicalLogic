#include <stdio.h>
#include <limits.h>
#include "uthash.h"
#include "tree.h"
#include "prover.h"
#include "symbol_table.h"

extern int newtemp;
extern int normal_renaming;
extern int mild_renaming;
extern int strong_renaming;
extern int modal_negative;
extern int strong_modal_negative;

extern prop_node *insert_pnew_node (int id, int type);
extern prop_node *find_prop (int id);
extern int same_tree(tnode *t1, tnode *t2);
extern tnode *copy_tree(tnode *s);
extern tnode *free_tree (tnode *s);
extern void print_tree (tnode *s);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern tnode *get_nnf(tnode *node);

int add_renaming (int id, tnode *formula, int set, int subtype, int modal_level);
tnode *tree_hash(tnode *node);

typedef struct {
  int ml;
  int operator;
  unsigned int value_number;
} ren_key;

typedef struct ren_hash {
  ren_key key;
  formulalist *list;
  UT_hash_handle hren;
} ren_hash;


ren_hash *renaming_table = NULL;

extern int get_snf(int set, int subtype, int modal_level, tnode *s);

void add_definition(int id, tnode *formula, int set, int subtype, int modal_level) {
  prop_node *p;

  if (id < 0) {
    p = find_prop(-id);
  }
  else p = find_prop(id);
  
  tnode *left = create_tnode(PROP,p->id,0,NULL,NULL,NULL);
  if (id < 0) {
    tnode *not = create_tnode(NEGATION,NEGATION,0,left,NULL,NULL);
    left = not;
  }
  tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,0,left,formula,NULL);
  get_snf(set,subtype,modal_level,newimp);
  free(left);
  free(newimp);
}

int insert_renaming_table(ren_key key, tnode *formula, int type, int set, int subtype, int modal_level) {
  
  ren_hash *c = NULL;
  HASH_FIND(hren,renaming_table,&(key),sizeof(ren_key),c);
  if (c != NULL) {
    formulalist *aux = c->list;
    while (aux != NULL) {
      if (same_tree(formula,aux->formula)) {
	if (!aux->definition_added) {
	  add_definition(aux->renamed_by,aux->formula,set,subtype,modal_level);
	  aux->definition_added = 1;
	}
	return aux->renamed_by;
      }
      else aux = aux->next;
    }
    
    prop_node *p = insert_pnew_node(newtemp++,type);
    formulalist *new_list = malloc(sizeof(formulalist));

    new_list->mdepth = formula->mdepth;
    new_list->value_number = formula->value_number;
    new_list->formula = copy_tree(formula);
    new_list->formula = tree_hash(new_list->formula);
    new_list->next = c->list;
    c->list = new_list;
    new_list->renamed_by = p->id;
    new_list->definition_added = 1;
    add_definition(p->id,formula,set,subtype,modal_level);
    return p->id;
  }
  else {
    ren_hash *new = malloc(sizeof(ren_hash));
    new->list = NULL;
    
    ren_key new_key;
    new_key.ml = key.ml;
    new_key.operator = key.operator;
    new_key.value_number = key.value_number;

    new->key = new_key;

    prop_node *p = insert_pnew_node(newtemp++,type);
    
    formulalist *new_list = malloc(sizeof(formulalist));

    new_list->mdepth = formula->mdepth;
    new_list->value_number = formula->value_number;
    new_list->renamed_by = p->id;
    new_list->definition_added = 1;
    new_list->formula = copy_tree(formula);
    new_list->formula = tree_hash(new_list->formula);
    new_list->next = new->list;
    new->list = new_list;

    HASH_ADD(hren,renaming_table,key,sizeof(ren_key),new);
    add_definition(p->id,formula,set,subtype,modal_level);
    return p->id;
  }
}

int rename_formula(tnode *formula, int type, int set, int subtype, int modal_level) {
  int id = 0;
  
  if (normal_renaming) {
    prop_node *p = insert_pnew_node(newtemp++,type);
    id = p->id;
    add_definition(id,formula,set,subtype,modal_level);
  }
  else {
    ren_key key;  
    key.ml = modal_level;
    key.operator = formula->type;
    key.value_number = formula->value_number;
    
    id = insert_renaming_table(key,formula,type,set,subtype,modal_level);

    if (strong_renaming) {
      tnode *neg = copy_tree(formula);
      tnode *not = create_tnode(NEGATION,-NEGATION,0,neg,NULL,NULL);
      not = get_nnf(not);
      not = tree_hash(not);
      add_renaming(-id,not,set,subtype,modal_level);
      not = free_tree(not);
    }
  }
  return id;
}

int add_renaming (int id, tnode *formula, int set, int subtype, int modal_level) {

  ren_hash *c;
  ren_key key;

  int found = 0;
  
  key.ml = modal_level;
  key.operator = formula->type;
  key.value_number = formula->value_number;
  
  HASH_FIND(hren,renaming_table,&(key),sizeof(ren_key),c);
    
  if (c != NULL) {
    formulalist *aux = c->list;
    while (!found && aux != NULL) {
      if (same_tree(formula,aux->formula)) {
	found = 1;
      }
      else aux = aux->next;
    }
    if (!found) {
      formulalist *new_list = malloc(sizeof(formulalist));      
      new_list->mdepth = formula->mdepth;
      new_list->value_number = formula->value_number;
      new_list->renamed_by = id;
      new_list->definition_added = 0;
      new_list->formula = copy_tree(formula);
      new_list->formula = tree_hash(new_list->formula);
      new_list->next = c->list;
      c->list = new_list;
      if (strong_renaming) {
	tnode *neg = copy_tree(formula);
	tnode *not = create_tnode(NEGATION,NEGATION,0,neg,NULL,NULL);
	not = get_nnf(not);
	not = tree_hash(not);
	add_renaming(-id,not,set,subtype,modal_level);
	not = free_tree(not);
      }
    }
  }
  else {
    ren_hash *new = malloc(sizeof(ren_hash));
    new->list = NULL;
    
    ren_key new_key;
    new_key.ml = modal_level;
    new_key.operator = formula->type;
    new_key.value_number = formula->value_number;

    new->key = new_key;

    formulalist *new_list = malloc(sizeof(formulalist));

    new_list->mdepth = formula->mdepth;
    new_list->value_number = formula->value_number;
    new_list->renamed_by = id;
    new_list->definition_added = 0;
    new_list->formula = copy_tree(formula);
    new_list->formula = tree_hash(new_list->formula);
    new_list->next = new->list;
    new->list = new_list;
    HASH_ADD(hren,renaming_table,key,sizeof(ren_key),new);
    if (strong_renaming) {
      tnode *neg = copy_tree(formula);
      tnode *not = create_tnode(NEGATION,NEGATION,0,neg,NULL,NULL);
      not = get_nnf(not);
      not = tree_hash(not);
      add_renaming(-id,not,set,subtype,modal_level);
      not = free_tree(not);
    }
  }
  return found;
}


tnode *tree_hash(tnode *s);

formulalist *list_hash(formulalist *l) {
  if (l != NULL) {
    int value = 0;
    formulalist *aux = l;
    while (aux != NULL) {
      value = 31*value + aux->formula->value_number;
      aux = aux->next;
    }
  }
  return l;
}

tnode *tree_hash(tnode *t) {
  if (t != NULL) {
    HASH_JEN(&(t->type),sizeof(int),t->value_number);
    if (t->type == PROP || t->type == CONSTANT || t->type == BOX || t->type == DIAMOND)
      t->value_number = 31*t->value_number + t->id;
    if (t->type != PROP && t->type !=  CONSTANT) {
      if (t->left != NULL) 
	t->value_number = 31*t->value_number + t->left->value_number;
      if (t->right != NULL) 
	t->value_number = 31*t->value_number + t->right->value_number;
      if (t->list != NULL) 
	t->value_number = 31*t->value_number + t->list->value_number;
    }
  }
  return t;
}

void print_ren_hash(void) {
  ren_hash *tmp,*tmpp;
  printf("\n HASH TABLE\n");
  HASH_ITER(hren,renaming_table,tmp,tmpp) {
    printf("\n Modal Level: %d, Operator: %d, Value_number: %u",tmp->key.ml,tmp->key.operator,tmp->key.value_number);
    formulalist *aux = tmp->list;
    while (aux != NULL) {
      printf("\n Renamed by: %d\n",aux->renamed_by);
      print_tree(aux->formula); 
      aux = aux->next;
    }
  }
}


void clean_ren_hash(void) {
  ren_hash *tmp,*tmpp;
  
 HASH_ITER(hren,renaming_table,tmp,tmpp) {
   HASH_DELETE(hren,renaming_table,tmp);
   if (tmp != NULL) {
     formulalist *aux = tmp->list;
     while (aux != NULL) {
       aux->formula = free_tree(aux->formula);
       formulalist *aux2 = aux->next;
       free(aux);
       aux = aux2; 
     }
     free(tmp);
   }
 }
}


unsigned int hash_tree (tnode *t) {
  HASH_JEN(&(t->type),sizeof(int),t->value_number);
  if (t->type == PROP || t->type == CONSTANT || t->type == BOX || t->type == DIAMOND)
    t->value_number = 31*t->value_number + t->id;
  if (t->type != PROP && t->type !=  CONSTANT) {
    if (t->left != NULL) 
      t->value_number = 31*t->value_number + t->left->value_number;
    if (t->right != NULL) 
      t->value_number = 31*t->value_number + t->right->value_number;
    if (t->list != NULL) 
      t->value_number = 31*t->value_number + t->list->value_number;
  }
  return t->value_number;
}

unsigned int hash_list (formulalist *l) {
  int value = 0;
  formulalist *aux = l;
  while (aux != NULL) {
    if (aux->formula != NULL)
      value = 31*value + aux->formula->value_number;
    aux = aux->next;
  }
  return value;
}
