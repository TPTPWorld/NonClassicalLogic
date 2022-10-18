#include <stdio.h>
#include <stdarg.h>
#include "tree.h"
#include "symbol_table.h"
#include "prover.h"
#include "newdict.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern void create_clauses (int set, tnode *s);
extern literalslist *simplify_disjunction(literal_list *l);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern void insert_clause_set (tclause **clause, int type, int set);

extern int is_literal (tnode *);
extern tnode *create_tnode(int type, int id, int mdepth, tnode *left, tnode *right, formulalist *list);
extern void copy_node(tnode *t1, tnode *t2);
extern tnode *copy_tree(tnode *s);
extern int same_tree(tnode *t1, tnode *t2); 
extern tnode *free_tree (tnode *s);


extern tnode *tree_hash(tnode *node);
extern unsigned int hash_tree (tnode *t);
extern void print_dict(void);
//extern unsigned int hash_list (formulalist *l);

extern agent_node *find_agent (int id);   
extern void create_formula_dict(tnode *formula, int underbox);
extern ren new_renaming (tnode *formula, int mlevel);
extern int print_tree(tnode *t);

extern int numprops;

extern int ires;
extern int ml_prover;
extern int numclause;
extern int global2local;
extern int mdepth;
extern int mlbound;

justification *create_justification(int r, clauseslist *p, literalslist *l) {
  justification *just = malloc(sizeof(justification));
  just->rule = r;
  just->parents = p;
  just->literals = l;
  return just;
}


formulalist *create_disjunction(int n, tnode *t,...) {
  va_list va;
  int i;
  
  va_start(va,t);
  formulalist *list = NULL;
  for (i = 0; i < n; i++) {
    formulalist *new = malloc(sizeof(formulalist));
    new->formula = t;
    t = va_arg(va,tnode*);
    new->next = list;
    list = new;
  }
  va_end(va);
  
  return list;
}


tnode *negate_literal(tnode *s) {
  if (s->type == NEGATION) return s->left;
  else return create_tnode(NEGATION,NEGATION,0,s,NULL,NULL);
}

tnode *create_tnode_lit(int id){
  tnode *new = create_tnode(PROP,id,0,NULL,NULL,NULL);
  if (id < 0) {
    new->id = -new->id;
    tnode *neg = create_tnode(NEGATION,NEGATION,0,new,NULL,NULL);
    new = neg;
  }
  return new;
}

void create_clause_snf_local(int set, int type, int subtype, int modal_level, int agent, int numdiamond, tnode *left, formulalist  *right, justification *just) {

  tclause *clause = malloc(sizeof(tclause));
  clause->number = numclause++;
  clause->type = type;
  
  clause->subtype = subtype;
  clause->numdiamond = numdiamond;
  
  if (!ml_prover)
    clause->modal_level = 1;
  else
    clause->modal_level = modal_level;
  clause->agent = agent;

  if (type == INITIAL) clause->left = CSTART;
  else if (type == LITERAL) clause->left = CTRUE;
  else if (left->type == NEGATION) clause->left = -left->left->id;
  else clause->left = left->id;

  literal_list *dis = NULL;
  if (left->type != CONSTANT && (type == LITERAL || type == INITIAL)) {
    dis = malloc(sizeof(literal_list));
    dis->literal = negate_literal(left);
    dis->next = NULL;
  }
 
  formulalist *aux = right;
  while (aux != NULL) {
    literal_list *newdis = malloc(sizeof(literal_list));
    newdis->literal = aux->formula;
    newdis->next = dis;
    dis = newdis;
    aux = aux->next;
  }
    
  clause->right = simplify_disjunction(dis);
  clause->just = just;
  clause->deleted = NULL;
  clause->propagated = 0;
  clause->size = size_clause(clause->right);
  clause->max_literal = max_lit_clause(clause->right);
  clause->min_literal = clause->right->literal;
  clause->class = classify_clause(clause->right);
  insert_clause_set(&clause,clause->type,set);
}


/* The input formula is an implication */
int get_snf_local (int set, int type, int subtype, int mlevel, tnode *s, int recur) {


  if (s == NULL) return 0;
  else if ((mlbound !=0 ) && (mlevel > mlbound)) {
  }
  else if (s->type != IMPLICATION) {
    printf("\n SNF is taking argument of wrong type: %d \n", s->type);
  }
  else {
    switch (s->right->type) {
    case PROP:
    case CONSTANT:
    case NEGATION: // this must be a literal
	{
	  //tnode *left = copy_tree(s->left);
	  tnode *left = s->left;
	  formulalist *aux = malloc(sizeof(formulalist));
	  //aux->formula = copy_tree(s->right);
	  aux->formula = s->right;
	  aux->next = NULL;

	  justification *just = create_justification(recur,NULL,NULL);
	  create_clause_snf_local(set,LITERAL,subtype,mlevel,PROP,1,left,aux,just);
	  free(aux);
	}
      break;
    case CONJUNCTION:
      {
	formulalist *list = s->right->list;
	while (list != NULL) {
	  //	  tnode *left1 = copy_tree(s->left);
	  int flag = 0;
	  tnode *right1 = NULL;
	  if (!(is_literal(list->formula))) {
	    int flag2 = 1;
	    if (list->formula->type == BOX || list->formula->type == DIAMOND) {
	      agent_node *a = find_agent(list->formula->id);
	      if (a->axioms == 0) flag2 = 0;
	      right1 = list->formula;
	    }
	    if (flag2) {
	      ren def = new_renaming(list->formula,mlevel);
	      flag = 1;
	      right1 = create_tnode(PROP,def.renamed_by,s->mdepth,NULL,NULL,NULL);
	      if (!def.added_to_level) {
	      //	      tnode *left2 = copy_tree(right1);
		tnode *left2 = right1;
		  //	      tnode *right2 = copy_tree(list->formula);
		tnode *right2 = list->formula;
		tnode *newimp2 = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,left2,right2,NULL);
		get_snf_local(set,type,subtype,mlevel,newimp2,recur);
		  free(newimp2);
	      }
	    }
	  }
	  //	  else right1 = copy_tree(list->formula);
	  else right1 = list->formula;
	  tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,s->left,right1,NULL);
	  get_snf_local(set,type,subtype,mlevel,newimp,recur);
	  list = list->next;
	  free(newimp);
	  if (flag) free_tree(right1);
	}
      }
      break;
    case DISJUNCTION:
      {
	formulalist *right = s->right->list;
	formulalist *newlist = NULL;
	while (right != NULL) {
	  if (!(is_literal(right->formula))) {
	    ren def = new_renaming(right->formula,mlevel);
	    tnode *new_lit_1 = create_tnode_lit(def.renamed_by);
	    if (!def.added_to_level) {
	      tnode *new_lit_2 = create_tnode_lit(def.renamed_by);
	      //	      tnode *right_2 = copy_tree(right->formula);
	      tnode *right_2 = right->formula;
	      tnode *new_imp2 = create_tnode(IMPLICATION,IMPLICATION,s->right->mdepth,new_lit_2,right_2,NULL);
	      get_snf_local(set,type,subtype,mlevel,new_imp2,recur);
	      free(new_imp2); free_tree(new_lit_2);
	    }
	    formulalist *aux = malloc(sizeof(formulalist));
	    aux->formula = new_lit_1;
	    aux->next = newlist;
	    newlist = aux;
	  }
	  else {
	    formulalist *aux = malloc(sizeof(formulalist));
	    //	    aux->formula = copy_tree(right->formula);
	    aux->formula = copy_tree(right->formula); //I'm keeping the copy of the literal, so that I know that I can delete the whole newlist afterwards;
	    aux->next = newlist;
	    newlist = aux;
	  }
	  right = right->next;
	}

	justification *just = create_justification(recur,NULL,NULL);
	//	tnode *left = copy_tree(s->left);
	tnode *left = s->left;
	create_clause_snf_local(set,LITERAL,subtype,mlevel,PROP,1,left,newlist,just);
	formulalist *aux = newlist;
	while (aux != NULL) {
	  formulalist *auxl = aux->next;
	  free_tree(aux->formula);
	  free(aux);
	  aux = auxl;
	}
      }
      break;
    case DIAMOND:
    case BOX:
      {
	int flag = 0;
	int clause_type = MPOSITIVE;
	if (s->right->type == DIAMOND) clause_type = MNEGATIVE;
	int clause_subtype = s->right->numdiamond;

	tnode *new_right = NULL;
	agent_node *a = find_agent(s->right->id);
	
	if (!(is_literal(s->right->left))) {
	  ren def = new_renaming(s->right->left,mlevel+1);
	  flag = 1;
	  new_right = create_tnode_lit(def.renamed_by);
	  if (!def.added_to_level) {
	    tnode *new_lit_2 = create_tnode_lit(def.renamed_by);
	    tnode *new_imp = create_tnode(IMPLICATION,IMPLICATION,s->right->mdepth,new_lit_2,s->right->left,NULL);
	    if (ml_prover == ON) 
	      get_snf_local(set,clause_type,clause_subtype,mlevel+1,new_imp,recur);
	    else get_snf_local(set,clause_type,clause_subtype,1,new_imp,recur);
	    free_tree(new_lit_2);
	  }
	}
	else new_right = s->right->left;
	
	justification *just = create_justification(recur,NULL,NULL);
	formulalist *list = malloc(sizeof(formulalist));
	list->formula = new_right;
	list->next = NULL;

	create_clause_snf_local(set,clause_type,clause_subtype,mlevel,s->right->id,s->left->numdiamond,s->left,list,just);
	if (flag) free_tree(new_right);
	free(list);

	// Either we apply T or D, but not both
	// If T is set, then it does not apply D
	
	if (clause_type == MPOSITIVE && ((a->axioms & T) != 0)) {
	  if (!same_tree(s->left,s->right->left)) {
	    if (is_literal(s->right->left)) {
	      tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,s->left,s->right->left,NULL);
	      get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,T);
	      free(newimp);
	    }
	    else {
	      ren def = new_renaming(s->right->left,mlevel+1);
	      tnode *right1 = create_tnode(PROP,def.renamed_by,s->mdepth,NULL,NULL,NULL);
	      tnode *imp1 = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,s->left,right1,NULL);
	      get_snf_local(set,LITERAL,clause_subtype,mlevel,imp1,T);
	      def = new_renaming(s->right->left,mlevel);
	      if (!def.added_to_level) {
		tnode *imp2 = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,right1,s->right->left,NULL);
		get_snf_local(set,LITERAL,clause_subtype,mlevel,imp2,T);
		free(imp2);
	      }
	      free_tree(right1); free(imp1);
	    }
	  }
	}
        else if (clause_type == MPOSITIVE && ((a->axioms & SER) != 0) && (recur != SER)) {
	  if ((s->right->left->type == CONSTANT) && (s->right->left->id == CFALSE)) {
	    tnode *left = create_tnode(CONSTANT,CTRUE,s->mdepth,NULL,NULL,NULL);
	    tnode *right = create_tnode(PROP,s->left->id,s->mdepth,NULL,NULL,NULL);
	    tnode *not = create_tnode(NEGATION,NEGATION,s->mdepth,right,NULL,NULL);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,left,not,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,SER);
	    free(newimp);
	    free(not);
	    free(right);
	    free(left);
	  }
	  else {
	    tnode *dia = create_tnode(DIAMOND,s->right->id,s->mdepth,s->right->left,NULL,NULL);
	    dia->value_number = hash_tree(dia);
	    // I am not very sure why I need to add this to the dictionary...
	    create_formula_dict(dia,0); //underbox doesn't matter here, so it is set to zero.
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,s->left,dia,NULL);
	    get_snf_local(set,MNEGATIVE,clause_subtype,mlevel,newimp,SER);
	    free(newimp);
	  }
	}
	
	// SYM is only applied to modal levels greater than 1
	// It is not applied if we have both SYM and FOUR because there is dedicated code for it
	// It does not apply if we have both FOUR and FIVE because this implies symmetry
	// It does not recur on SYM, but only on SNF added to mlevel-1



	if (mlevel != 1 && clause_type == MPOSITIVE && ((a->axioms & SYM) != 0) && ((a->axioms & FOUR) == 0) && ((a->axioms & FOUR & FIVE) == 0) && (recur != B4) && (recur != K45) && (recur != SYM)) {

	  /* the clause is t_([a]phi) => []phi */
	  /* t_([a]phi => [a] eta(phi) is done by K */
	  
	  /* [a]~t_([a]phi) */
	  /* we first need to check that the left-hand side of the implicaion is indeed the renaming for the right-had side */
	  ren newdefB = new_renaming(s->right,mlevel);

	  tnode *leftB = NULL;
	  if (newdefB.renamed_by != s->left->id) { // t -> []q, but t2 renames []q, so we add (t => t2) and t2 => []q
	    //	    printf("\n **** Is entering here ***");
	    tnode *leftB = create_tnode(PROP,newdefB.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *newimpB = create_tnode(IMPLICATION,IMPLICATION,mlevel,leftB,s->left,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimpB,SNF);
	    /** to be added here t2 => [] q **/
	    free(newimpB);
	  }
	  else leftB = copy_tree(s->left);

	  // This creates the surrogate
	  tnode *neg = create_tnode(NEGATION,NEGATION,s->mdepth+1,leftB,NULL,NULL);
	  tnode *box = create_tnode(BOX,s->right->id,s->mdepth,neg,NULL,NULL);
	  box->mlevel = mlevel - 1;
	  box->value_number = hash_tree(box);
	  ren newdefSur = new_renaming(box,mlevel-1);
	  if (newdefSur.renamed_by == 0) {
	    create_formula_dict(box,0); //underbox doesn't matter here, so it is set to zero.
	    newdefSur = new_renaming(box,mlevel-1);
	  }
	  tnode *propdef = create_tnode(PROP,newdefSur.renamed_by,s->mdepth,NULL,NULL,NULL);
	  //	  tnode *newimpdef = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,propdef,box,NULL);
	  /* t_([a]~t_([a]phi)) => []~t_([a]phi) */

	  justification *just1 = create_justification(SYM,NULL,NULL);
	  formulalist *list1 = malloc(sizeof(formulalist));
	  list1->formula = box->left;
	  list1->next = NULL;

	  // does not recur
	  create_clause_snf_local(set,MPOSITIVE,clause_subtype,mlevel-1,box->id,s->left->numdiamond,propdef,list1,just1);
	  //	  get_snf_local(set,MPOSITIVE,clause_subtype,mlevel-1,newimpdef,SNF); 
	  //	  free(newimpdef);

	  /* eta(phi) \/ t_([a]~t) : in the predecessor */
	  tnode *left = create_tnode(CONSTANT,CTRUE,s->mdepth,NULL,NULL,NULL);
	  tnode *right2 = propdef;
	  ren newdef2;
	  formulalist *newlist;
	  if (!(is_literal(s->right->left))) {
	    // Note that if the formula in the scope of the box is not a literal, then the definition needs to be added to the predecessor
	    newdef2 = new_renaming(s->right->left,mlevel-1);
	    if (newdef2.renamed_by == 0) {
	      if (s->right->left->type == NEGATION)  newdef2.renamed_by = s->right->left->left->id;
	      else newdef2.renamed_by = s->right->left->id;
	    }

	    tnode *propB = create_tnode(PROP,newdef2.renamed_by,s->mdepth,NULL,NULL,NULL);
	    newlist = create_disjunction(2,propB,propdef);

	    /* eta(phi) => phi : in the predecessor */
	    /* the definition in the successor is added by K */

	    if (!newdef2.added_to_level) {
	      //	      printf("\n Entering here (2)");
	      tnode *left3 = create_tnode(PROP,newdef2.renamed_by,s->mdepth,NULL,NULL,NULL);
	      tnode *newimpred = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,left3,s->right->left,NULL);
	      get_snf_local(set,LITERAL,clause_subtype,mlevel-1,newimpred,SNF);
	      free(newimpred);
	    }
	  }
	  else newlist = create_disjunction(2,s->right->left,propdef);
	  tnode *disj = create_tnode(DISJUNCTION,DISJUNCTION,s->mdepth,NULL,NULL,newlist);

	  justification *just2 = create_justification(SYM,NULL,NULL);

	  // does not recur
	  create_clause_snf_local(set,LITERAL,clause_subtype,mlevel-1,0,s->left->numdiamond,left,newlist,just2);
	}

	// In the following we have all the procedures that have FOUR set
	// The first is K4
	// FIVE should not be set, because there is dedicated code for K45
	// SYM should not be set, because there is dedicated code for K4B
	// It shouldn't recur for any clause generated by FOUR, K45, K4B or SYM
	
	if (clause_type == MPOSITIVE && ((a->axioms & FOUR) != 0) && ((a->axioms & SYM) == 0) && ((a->axioms & FIVE) == 0) && (recur != FOUR) && (recur != SYM) && (recur != B4) && (recur != K45)) {
	  int levels = 0;
	  ren newdef = new_renaming(s->right,mlevel);

	  if (newdef.renamed_by != s->left->id) { // t -> []q, but t2 renames []q, so we add (~t | t2)
	    //	    printf("\n **** Is entering here ***");
	    tnode *left = create_tnode(PROP,newdef.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,mlevel,left,s->left,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,FOUR);
	    free(newimp);
	    }

	  int loop_bound;
	  loop_bound = 2 + a->maxleveldia + ((a->numdifdia)*(a->numdifbox));
	  //	  printf("\n%d", loop_bound);
	  // We have different bounds if we have either T or D
	  if (((a->axioms & SER) != 0) && ((a->axioms & T) == 0)) loop_bound = 2 + a->maxleveldia + (MAX(1,(a->numdifdia))*(a->numdifbox));
	  if (mlbound != 0) loop_bound = mlbound;
	  // The following was set experimentally for the CADE-28 paper, considering the benchmarks we had
	  // if (mlbound != 0) loop_bound = mlbound; else loop_bound = mdepth + 2;
	  for (levels = mlevel; levels <= loop_bound; levels++) { //t->[]q, t2 renames []q
	    //	    printf("\n mlevel, loop_bound: %d, %d",mlevel,loop_bound); 

	    // add t2 => []q to levels
	    if (levels > mlevel) { // this is added by K in the current level
	      tnode *left1 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	      tnode *newimp1 = create_tnode(IMPLICATION,IMPLICATION,levels,left1,s->right,NULL);
	      get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp1,FOUR);
	      free_tree(left1); free(newimp1); 
	    }
	    
	    // add t2 =>[]t2 to levels
	    tnode *left2 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL); //add t2 ->[]t2 to levels
	    tnode *right2 = create_tnode(PROP,newdef.renamed_by,levels+1,NULL,NULL,NULL);
	    tnode *box = create_tnode(BOX,s->right->id,levels,right2,NULL,NULL);
	    tnode *newimp2 = create_tnode(IMPLICATION,IMPLICATION,levels,left2,box,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp2,FOUR);
	    free_tree(newimp2);
	   
	    if (levels > mlevel && !(is_literal(s->right->left))) { // q is not a literal, then definition needs to be added to levels+1, but not in the case of the current level, as this is added by K.
	      ren newdef2 = new_renaming(s->right->left,levels+1);
	      if (newdef2.renamed_by == 0) {
		if (s->right->left->type == NEGATION) { newdef2.renamed_by = s->right->left->left->id;}
		else newdef2.renamed_by = s->right->left->id;
	      }
	      if (!newdef.added_to_level) {
		tnode *left4 = create_tnode(PROP,newdef2.renamed_by,levels+1,NULL,NULL,NULL);
		tnode *newimpred = create_tnode(IMPLICATION,IMPLICATION,levels+1,left4,s->right->left,NULL);
		get_snf_local(set,LITERAL,clause_subtype,levels+1,newimpred,SNF);
		free_tree(left4); free(newimpred);
	      }
	    }
	  }
	}
	// This is K45
	// It is not K4 and it is not K5
	// It should not recur on any clause generated by 4 or 5
	else if (clause_type == MPOSITIVE && ((a->axioms & FOUR) != 0) && ((a->axioms & FIVE) != 0) && (a->axioms != FOUR) && (a->axioms != FIVE) && (a->axioms != B4) && (recur != K45) && (recur != FOUR) && (recur != B4) && (recur != FIVE)) {
	  int levels = 0;
	  ren newdef = new_renaming(s->right,mlevel);
	  if (newdef.renamed_by != s->left->id) {
	    //	    printf("\n is entering here");
	    tnode *left = create_tnode(PROP,newdef.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,mlevel,left,s->left,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,K45);
	    free(newimp);
	  }
	  if (mlevel == 1) {
	    tnode *left1 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *left2 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *box = create_tnode(BOX,s->right->id,mlevel,left2,NULL,NULL);
	    tnode *newimp1 = create_tnode(IMPLICATION,IMPLICATION,levels,left1,box,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,1,newimp1,K45);
	    free_tree(left1); free(newimp1); 
	  }
	  
	  int loop_bound;
	  if (mlbound != 0) loop_bound = mlbound; else loop_bound = 2 + a->maxleveldia + a->numdifdia;
	  // The following was set experimentally for the CADE-28 paper, considering the benchmarks we had
	  // if (mlbound != 0) loop_bound = mlbound; else loop_bound = mdepth + 2;
	  for (levels = 1; levels <= loop_bound; levels++) {
	    // t_box_p -> []eta(p)
	    if (levels != mlevel) { // definition is added to the current level by K; Note that this is being added to all levels
	      tnode *left1 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	      tnode *newimp1 = create_tnode(IMPLICATION,IMPLICATION,levels,left1,s->right,NULL);
	      get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp1,K45);
	      free_tree(left1); free(newimp1);
	    }

	    // t_dia_t_box_p -> dia t_box_p
	    tnode *right2 = create_tnode(PROP,newdef.renamed_by,levels+1,NULL,NULL,NULL);
	    tnode *dia = create_tnode(DIAMOND,s->right->id,levels,right2,NULL,NULL);
	    dia->value_number = hash_tree(dia);
	    create_formula_dict(dia,0); //underbox doesn't matter here, so it is set to zero.
	    ren newdef2 = new_renaming(dia,levels);
	    tnode *left2 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *newimp2 = create_tnode(IMPLICATION,IMPLICATION,levels,left2,dia,NULL);
	    get_snf_local(set,MNEGATIVE,clause_subtype,levels,newimp2,K45);
	    free_tree(left2); free(newimp2);
	    // cannot free the tree, because the diamond is in the dictionary

	    // ~t_dia_t_box_p -> []~ t_box_p
	    tnode *right3 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *neg1 = create_tnode(NEGATION,NEGATION,levels,right3,NULL,NULL);
	    tnode *box = create_tnode(BOX,s->right->id,levels,neg1,NULL,NULL);
	    tnode *left3 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *neg2 = create_tnode(NEGATION,NEGATION,levels,left3,NULL,NULL);
	    tnode *newimp3 = create_tnode(IMPLICATION,IMPLICATION,levels,neg2,box,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp3,K45);
	    free_tree(newimp3);

	    // t_dia_t_box_p -> []t_dia_t_box_p
	    tnode *left4 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *right4 = create_tnode(PROP,newdef2.renamed_by,levels+1,NULL,NULL,NULL);
	    tnode *box2 = create_tnode(BOX,s->right->id,levels,right4,NULL,NULL);
	    tnode *newimp4 = create_tnode(IMPLICATION,IMPLICATION,levels,left4,box2,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp4,K45);
	    free_tree(newimp4);

	    // ~t_dia_t_box_p v t_box_p

	    tnode *left5 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *right5 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *newimp5 = create_tnode(IMPLICATION,IMPLICATION,levels,left5,right5,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,levels,newimp5,K45);
	    free_tree(newimp5);
	    
	    if (levels != mlevel && !(is_literal(s->right->left))) {
	      ren newdef3 = new_renaming(s->right->left,levels+1);
	      if (newdef3.renamed_by == 0) {
		if (s->right->left->type == NEGATION)  newdef3.renamed_by = s->right->left->left->id;
		else newdef3.renamed_by = s->right->left->id;
	      }
	      if (!newdef3.added_to_level) {
		tnode *left6 = create_tnode(PROP,newdef3.renamed_by,levels,NULL,NULL,NULL);
		tnode *newimpred = create_tnode(IMPLICATION,IMPLICATION,levels+1,left6,s->right->left,NULL);
		get_snf_local(set,LITERAL,clause_subtype,levels+1,newimpred,SNF);
		free_tree(left6);free(newimpred);
	      }
	    }
	  }
	}
	// This is K4B
	// It should not be applied to any clauses that are generated by axioms including 4, including K45 (because that is already implemented above
	else if (clause_type == MPOSITIVE && ((a->axioms & FOUR) != 0) && ((a->axioms & B4) != 0) && (a->axioms != SYM)  && (a->axioms != FOUR) && (a->axioms != FIVE) && (recur != FOUR) && (recur != SYM) && (recur != B4) && (recur != K45)) {
	  int levels = 0;
	  ren newdef = new_renaming(s->right,mlevel);

	  if (newdef.renamed_by != s->left->id) { // t -> []q, but t2 renames []q, so we add (~t | t2)
	    tnode *left = create_tnode(PROP,newdef.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,mlevel,left,s->left,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,B4);
	    free(newimp);
	  }

	  int loop_bound;
	  if (mlbound != 0) loop_bound = mlbound; else loop_bound =  2 + a->maxleveldia + a->numdifdia;
	  // The following was set experimentally for the CADE-28 paper, considering the benchmarks we had
	  // if (mlbound != 0) loop_bound = mlbound; else loop_bound = mdepth + 2;
	  for (levels = 1; levels <= loop_bound; levels++) { //t->[]q, t_q renames []q
	    
	    // add t_q => []q to all levels
	    tnode *left1 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *newimp1 = create_tnode(IMPLICATION,IMPLICATION,levels,left1,s->right,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp1,B4);
	    free_tree(left1); free(newimp1); 
	    
	    // add t_q =>[]t_q to all levels
	    tnode *left2 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL); 
	    tnode *right2 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *box = create_tnode(BOX,s->right->id,levels,right2,NULL,NULL);
	    tnode *newimp2 = create_tnode(IMPLICATION,IMPLICATION,levels,left2,box,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp2,B4);
	    free_tree(newimp2);
	      
	    /* t_([a]~t_[a]q) => [a]~t_[a] q: to all levels */
	    tnode *neg = create_tnode(NEGATION,NEGATION,s->mdepth,s->left,NULL,NULL);
	    tnode *box2 = create_tnode(BOX,s->right->id,s->mdepth,neg,NULL,NULL);
	    box->value_number = hash_tree(box2);
	    create_formula_dict(box2,0); //underbox doesn't matter here, so it is set to zero.
	    ren newdef2 = new_renaming(box2,levels);
	    tnode *propnewdef = create_tnode(PROP,newdef2.renamed_by,s->mdepth,NULL,NULL,NULL);
	    tnode *newimpdef = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,propnewdef,box2,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimpdef,B4);
	    free(newimpdef);

	    /* t_q \/ t_([a]~t_[a]q) : to all levels */
	    tnode *left = create_tnode(CONSTANT,CTRUE,s->mdepth,NULL,NULL,NULL);
	    tnode *right3 = propnewdef;
	    formulalist *newlist = create_disjunction(2,s->right->left,right3);
	    tnode *disj = create_tnode(DISJUNCTION,DISJUNCTION,s->mdepth,NULL,NULL,newlist);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,left,disj,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,levels,newimp,B4);
	    free(newimp);

	    /* t_[a]q \?  t_([a]~t_[a]_q: in the predecessor */
	    tnode *leftb4 = create_tnode(PROP,newdef.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *rightb4 = propnewdef;
	    formulalist *newlistb4 = create_disjunction(2,leftb4,rightb4);
	    tnode *disjb4 = create_tnode(DISJUNCTION,DISJUNCTION,s->mdepth,NULL,NULL,newlistb4);
	    tnode *constb4 = create_tnode(CONSTANT,CTRUE,s->mdepth,NULL,NULL,NULL);
	    tnode *newimpb4 = create_tnode(IMPLICATION,IMPLICATION,s->mdepth,constb4,disjb4,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,levels,newimpb4,B4);
	    free(newimpb4);

	    /* And finally */
	   
	    if (levels > mlevel && !(is_literal(s->right->left))) { // q is not a literal, then definition needs to be added to levels+1, but not in the case of the current level, as this is added by K.
	      ren newdef2 = new_renaming(s->right->left,levels+1);
	      if (newdef2.renamed_by == 0) {
		if (s->right->left->type == NEGATION) { newdef2.renamed_by = s->right->left->left->id;}
		else newdef2.renamed_by = s->right->left->id;
	      }
	      if (!newdef2.added_to_level) {
		tnode *left4 = create_tnode(PROP,newdef2.renamed_by,levels+1,NULL,NULL,NULL);
		tnode *newimpred = create_tnode(IMPLICATION,IMPLICATION,levels+1,left4,s->right->left,NULL);
		get_snf_local(set,LITERAL,clause_subtype,levels,newimpred,SNF);
		free_tree(left4); free(newimpred);
	      }
	      }
	  }
	}

	// This is K5
	// It should not be applied to any combinations with 4, because this is treated above
	if (clause_type == MPOSITIVE && ((a->axioms & FIVE) != 0) && ((a->axioms & FOUR) == 0) && (recur != FIVE) && (recur != K45) && (recur != SYM)) {
	  int levels = 0;
	  ren newdef = new_renaming(s->right,mlevel);
	  if (newdef.renamed_by != s->left->id) {
	    //	    printf("\n is entering here");
	    tnode *left = create_tnode(PROP,newdef.renamed_by,mlevel,NULL,NULL,NULL);
	    tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,mlevel,left,s->left,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,mlevel,newimp,FIVE);
	    free(newimp);
	  }
	  int loop_bound;
	  loop_bound = 2 + a->maxleveldia + a->numdifdia;
	  if (((a->axioms & SER) != 0) && ((a->axioms & T) == 0)) loop_bound = 2 + a->maxleveldia + MAX(1,a->numdifdia);
	  if (mlbound != 0) loop_bound = mlbound; 
	  // The following was set experimentally for the CADE-28 paper, considering the benchmarks we had
	  // if (mlbound != 0) loop_bound = mlbound; else loop_bound = mdepth + 2;
	  for (levels = 1; levels <= loop_bound; levels++) {
	    if (levels != mlevel) { // definition is added to the current level by K; Note that this is being added to all levels
	      tnode *left1 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	      tnode *newimp1 = create_tnode(IMPLICATION,IMPLICATION,levels,left1,s->right,NULL);
	      get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp1,FIVE);
	      free_tree(left1); free(newimp1);
	    }
	    
	    tnode *right2 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *dia = create_tnode(DIAMOND,s->right->id,levels,right2,NULL,NULL);
	    dia->value_number = hash_tree(dia);
	    create_formula_dict(dia,0); //underbox doesn't matter here, so it is set to zero.
	    ren newdef2 = new_renaming(dia,levels);
	    tnode *left2 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *newimp2 = create_tnode(IMPLICATION,IMPLICATION,levels,left2,dia,NULL);
	    get_snf_local(set,MNEGATIVE,clause_subtype,levels,newimp2,FIVE);
	    free_tree(left2); free(newimp2);
	    // cannot free the tree, because the diamond is in the dictionary

	    tnode *right3 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *neg1 = create_tnode(NEGATION,NEGATION,levels,right3,NULL,NULL);
	    tnode *box = create_tnode(BOX,s->right->id,levels,neg1,NULL,NULL);
	    tnode *left3 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *neg2 = create_tnode(NEGATION,NEGATION,levels,left3,NULL,NULL);
	    tnode *newimp3 = create_tnode(IMPLICATION,IMPLICATION,levels,neg2,box,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp3,FIVE);
	    free_tree(newimp3);

	    tnode *left4 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *right4 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *box2 = create_tnode(BOX,s->right->id,levels,right4,NULL,NULL);
	    tnode *newimp4 = create_tnode(IMPLICATION,IMPLICATION,levels,left4,box2,NULL);
	    get_snf_local(set,MPOSITIVE,clause_subtype,levels,newimp4,FIVE);
	    free_tree(newimp4);

	    tnode *left5 = create_tnode(PROP,newdef2.renamed_by,levels,NULL,NULL,NULL);
	    tnode *right5 = create_tnode(PROP,newdef.renamed_by,levels,NULL,NULL,NULL);
	    tnode *newimp5 = create_tnode(IMPLICATION,IMPLICATION,levels,left5,right5,NULL);
	    get_snf_local(set,LITERAL,clause_subtype,levels,newimp5,FIVE);
	    free_tree(newimp5);
	    
	    if (levels != mlevel && !(is_literal(s->right->left))) {
	      ren newdef3 = new_renaming(s->right->left,levels+1);
	      if (newdef3.renamed_by == 0) {
		if (s->right->left->type == NEGATION)  newdef3.renamed_by = s->right->left->left->id;
		else newdef3.renamed_by = s->right->left->id;
	      }
	      if (!newdef3.added_to_level) {
		tnode *left6 = create_tnode(PROP,newdef3.renamed_by,levels,NULL,NULL,NULL);
		tnode *newimpred = create_tnode(IMPLICATION,IMPLICATION,levels+1,left6,s->right->left,NULL);
		get_snf_local(set,LITERAL,clause_subtype,levels+1,newimpred,SNF);
		free_tree(left6);free(newimpred);
	      }
	    }
	  }
	}
      }
      break;
    }
  }
  return 0;
}



int anchor_snf_local (tnode *root, int set, int mlevel) {
  if (root == NULL) return 0;
  switch (root->type) {
  case SETC: {
    create_clauses(SETC,root->left);
    if (root->right != NULL) 
      anchor_snf_local(root->right, set, mlevel);
  } break;
  case SETF: {
    anchor_snf_local(root->left, SETF, mlevel);
    if (root->right != NULL) 
      anchor_snf_local(root->right, set, mlevel);
  } break;
  default: {
      ren def = new_renaming(root,1);
      tnode *new1 = create_tnode(PROP,def.renamed_by,0,NULL,NULL,NULL);
      tnode *new2 = create_tnode(PROP,def.renamed_by,0,NULL,NULL,NULL);

      formulalist *dis = create_disjunction(1,new1);
      justification *just = create_justification(SNF,NULL,NULL);

      int type = LITERAL;
      tnode *left = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
      if (ires) {
	type = INITIAL;
	left->id = CSTART;
      }
      
      create_clause_snf_local(set,type,BOX,mlevel,PROP,1,left,dis,just);
      tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,root->mdepth,new2,root,NULL);
      get_snf_local(set,LITERAL,BOX,mlevel,newimp,SNF);
      
      free(newimp); free(new1); free(new2); free(dis);
    } break;
  }
  return 1;
}
