#include <stdio.h>
#include "tree.h"
#include "symbol_table.h"
#include "prover.h"
#include "newdict.h"


extern agent_node *find_agent (int id);   
extern prop_node *insert_pnew_node (int id, int type);
extern void print_tree (tnode *s);
extern int is_literal (tnode *);
extern int same_tree(tnode *t1, tnode *t2);
extern tnode *tree_hash(tnode *node);

extern prop_node *find_prop (int id);
extern int newtemp;
  
formula_hash *fd = NULL;

int numcollisions = 0;
int numsubformula = 0;
int sizeformula = 0;
int numliterals = 0;
int numboxes = 0;
int numdiamonds = 0;
int numdifdia = 0;
int numdifbox = 0;


formulalist *create_entry_list(tnode *formula) {
  formulalist *new_list = malloc(sizeof(formulalist));      
  new_list->mdepth = formula->mdepth;
  new_list->value_number = formula->value_number;
  prop_node *p = insert_pnew_node(newtemp++,HIGH);
  new_list->levels_added = NULL;
  new_list->levels_occur = NULL;
  new_list->definition_added = 0;
  new_list->renamed_by = p->id;
  //   new_list->formula = copy_tree(formula);
  // not copying the tree, I'm just keeping a pointer to the already existing tree
  new_list->formula = formula;
  new_list->formula->parent = NULL;
  new_list->next = NULL;
  return new_list;
}

void print_formula_dict(formula_hash *dict) {
  formula_hash *tmp,*tmpp;
  printf("\n FORMULA TABLE\n");
  HASH_ITER(hf,dict,tmp,tmpp) {
    printf("\n NEW ENTRY: Operator: %d, Value_number: %u, Size:%u, Saved Repeated: %u",tmp->key.operator,tmp->key.value_number,tmp->size, tmp->numrepeated);
    formulalist *aux = tmp->list;
    while (aux != NULL) {
      prop_node *x = find_prop(aux->renamed_by);
      printf("\n Renamed by: %d, %s\n",aux->renamed_by,x->name);

      mlevels *mlaux = aux->levels_added;
      if (mlaux != NULL) {
	printf(" Added to modal levels:");
	while (mlaux != NULL) {
	  printf("% d",mlaux->mlevel);
	  if (mlaux->next != NULL) printf(","); else printf("\n");
	  mlaux = mlaux->next;
	}
      }
      
      mlaux = aux->levels_occur;
      if (mlaux != NULL) {
	printf(" Occur at modal levels:");
	while (mlaux != NULL) {
	  printf("% d",mlaux->mlevel);
	  if (mlaux->next != NULL) printf(","); else printf("\n");
	  mlaux = mlaux->next;
	}
      }
      print_tree(aux->formula); 
      aux = aux->next;
    }
  }
}

void print_dict(void) {
  print_formula_dict(fd);
}

void create_formula_dict(tnode *formula, int underbox) { // This underbox is only going to work on monomodal
  int ismodal = 0;
  agent_node* a = NULL;
  if (formula != NULL) {
    if (formula->type == SETF || formula->type == SETC) {
      create_formula_dict(formula->left,underbox); }
    else if (is_literal(formula)) {
      numliterals++;}
    else {
      ismodal = (formula->type == BOX || formula->type == DIAMOND);
      if (ismodal) {
	a = find_agent(formula->id);
	if (formula->type == BOX) {
	  numboxes++;
	  underbox = 1;
	}
	else if (formula->type == DIAMOND) {
	  if (!underbox) {
	    if (a->maxleveldia < formula->mlevel)
	      a->maxleveldia = formula->mlevel;
	  }
	  numdiamonds++;
	}
      }
      
      formula_hash *entry = NULL;
      formula_key key;
    
      key.operator = formula->type;
      key.value_number = formula->value_number;

      HASH_FIND(hf,fd,&(key),sizeof(formula_key),entry);

      if (entry != NULL) { // there is an entry in the dictionary, need to check if the formula is already there
	formulalist *auxl = entry->list;
	while (auxl != NULL && !same_tree(formula,auxl->formula))
	  auxl = auxl->next;
	if (auxl == NULL) { // not in the dictionary yet
	  formulalist *new_list =  create_entry_list(formula);
	  new_list->next = entry->list;
	  entry->list = new_list;
	  numsubformula++;
	  entry->size++;
	  if (ismodal) {
	    if (formula->type == DIAMOND) numdifdia++;
	    else numdifbox++;
	    if (underbox || formula->type == BOX) {
	      new_list->levels_occur = malloc(sizeof(mlevels));
	      new_list->levels_occur->mlevel = formula->mlevel;
	      new_list->levels_occur->next = NULL;
	    }
	  }
	}
	else {
	  if (ismodal) {
	    if (underbox || formula->type == BOX) {
	      mlevels *auxml = auxl->levels_occur;
	      while (auxml != NULL && auxml->mlevel != formula->mlevel)
		auxml = auxml->next;

	      if (auxml == NULL) { // this level is not yet in the list, it needs to be added
		mlevels *new = malloc(sizeof(mlevels));
		new->mlevel = formula->mlevel;
		new->next = auxl->levels_occur;
		auxl->levels_occur = new;
		if (formula->type == DIAMOND) numdifdia++;
		else numdifbox++;
	      }
	    }
	  }
	  entry->numrepeated++;
	  numcollisions++;
	}
      }
      else { // there is no entry in the dictionary, need to create one.

      	formula_hash *new = malloc(sizeof(formula_hash));
	new->list = NULL;
    
	formula_key new_key;
	new_key.operator = formula->type;
	new_key.value_number = formula->value_number;

	new->key = new_key;
	new->size = 1;
	new->numrepeated = 0;
	new->list = create_entry_list(formula);
		
	HASH_ADD(hf,fd,key,sizeof(formula_key),new);
	numsubformula++;

	if (ismodal) {
	  if (formula->type == DIAMOND) numdifdia++;
	  else numdifbox++;
	  if (underbox || formula->type == BOX) {
	    new->list->levels_occur = malloc(sizeof(mlevels));
	    new->list->levels_occur->mlevel = formula->mlevel;
	    new->list->levels_occur->next = NULL;
	  }
	}
      }

      create_formula_dict(formula->left,underbox);
      create_formula_dict(formula->right,underbox);
      formulalist *auxl = formula->list;
      while (auxl != NULL) {
	create_formula_dict(auxl->formula,underbox);
	auxl = auxl->next;
      }
    }
  }
}

void generate_loop_bounds(void) {
  formula_hash *tmp,*tmpp;
  HASH_ITER(hf,fd,tmp,tmpp) {
    formulalist *aux = tmp->list;
    while (aux != NULL) {
     mlevels *mlaux = aux->levels_occur;
     int ismodal = (aux->formula->type == BOX || aux->formula->type == DIAMOND);
     if (ismodal && mlaux != NULL) {
       agent_node *a = find_agent(aux->formula->id);
       if (aux->formula->type == DIAMOND) a->numdifdia++; else a->numdifbox++;
       /*       while (mlaux != NULL) {
	 if (aux->formula->type == DIAMOND) a->numdifdia++; else a->numdifbox++;
	 mlaux = mlaux->next;
	 }*/
     }
     aux = aux->next;
    }
  }
}

void create_dict(tnode *root) {
  root = tree_hash(root);
  create_formula_dict(root,0);
  generate_loop_bounds();
  //print_formula_dict(fd);
}

void delete_dict(void) {
  formula_hash *tmp,*tmpp;
  HASH_ITER(hf,fd,tmp,tmpp) {
    formulalist *aux = tmp->list;
    while (aux != NULL) {
      mlevels *mlaux = aux->levels_added;
      if (mlaux != NULL) {
	while (mlaux != NULL) {
	  mlevels *mlaux2 = mlaux->next;
	  free(mlaux);
	  mlaux = mlaux2;
	}
      }
      
      mlaux = aux->levels_occur;
      if (mlaux != NULL) {
	while (mlaux != NULL) {
	  mlevels *mlaux2 = mlaux->next;
	  free(mlaux);
	  mlaux = mlaux2;
	}
      }
      formulalist *aux2 = aux->next;
      free(aux);
      aux = aux2;
    }
  }
}

ren new_renaming (tnode *formula, int mlevel) {
   formula_hash *entry = NULL;
   formula_key key;
   
   key.operator = formula->type;
   key.value_number = formula->value_number;
   ren x; x.renamed_by = 0; x.added_to_level = 0;
   HASH_FIND(hf,fd,&(key),sizeof(formula_key),entry);
   if (entry == NULL) {
     return x;
   }
   else {
     formulalist *aux = entry->list;
     while (aux != NULL) {
       if (same_tree(formula,aux->formula)) {
	 mlevels *auxml = aux->levels_added;
	 while (auxml != NULL) {
	   if (auxml->mlevel == mlevel)  {//definition has already been added to the modal level
	     x.renamed_by = aux->renamed_by;
	     x.added_to_level = 1;
	     return x;
	   }
	   else auxml = auxml->next;
	 }
	 if (auxml == NULL) {
	   auxml = malloc(sizeof(mlevels));
	   auxml->mlevel = mlevel;
	   auxml->next = aux->levels_added;
	   aux->levels_added = auxml;
	   x.renamed_by = aux->renamed_by;
	   x.added_to_level = 0;
	   return x;
	 }
       }
       aux = aux->next;
     }
   }
   return x;
}

