#include <stdio.h>
#include <pthread.h>
#include <string.h>
#include "uthash.h"
#include "tree.h"
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

extern int mle;
extern int ml_ple;
extern int ple;
extern int unit;
extern int ml_prover;
extern int populate_usable;
extern int gen2;
extern int propagate_dia;

extern int modal_positive;
extern int modal_negative;
extern int strong_modal_positive;
extern int strong_modal_negative;
extern int numclause;
extern int numfsubsumed;
extern int numbsubsumed;
extern int nummle;
extern int numple;
extern int nummlple;
extern int numtautologies;

extern int numproofs;
extern int maxproof;

extern int newtemp;

extern struct agent_node *agentsid;
extern struct prop_node *propsid;

extern hml_pclauses *i_usable;
extern hml_pclauses *i_sos;
extern hml_pclauses *l_usable;
extern hml_pclauses *l_sos;

extern hml_mclauses *m_usable;
extern hml_mclauses *m_sos;

extern pthread_mutex_t mutexallclauses;

extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern int classify_clause (literalslist *l);
extern literalslist *simplify_clause (literalslist *l);
extern tclause *get_clause (int clause);

extern struct prop_node *propsid;
extern prop_node *find_prop (int id);

extern prop_node *insert_pnew_node (int id, int type);
extern void insert_clause_set (tclause **clause, int type, int set);
extern void insert_clause_deleted(tclause *clause);
extern clauseslist *delete_clause_list(tclause *c, clauseslist *l);
extern void delete_clause_prop (hml_pclauses **set,tclause *c);
extern void delete_clause_modal (hml_mclauses **set, tclause *c);
extern void move_clause_propositional(tclause *c, hml_pclauses **set_out, hml_pclauses **set_in);
extern void self_subsumption (void);
extern void do_mres (hml_mclauses *set);
extern void do_gen2 (hml_mclauses *set);
extern void print_out (char *);
extern void delete_clause_all(int number);
extern void propagate_unique_dia_ml (void);

extern int unit_resolution (hml_pclauses **set);
extern prop_node *insert_pos_node (char *name);

extern int clause_in_list(tclause *c, clauseslist *l);
extern agent_node *find_agent (int id);
int check_repeated_prop (tclause *clause, hml_pclauses *set);
int check_repeated_modal (tclause *clause, hml_mclauses *set);
tclause *create_definition_clause(int lit, int pos_lit, int agent, int type, int level);

void populate(void) {
  hml_pclauses *aux, *auxhml;
  hmaxclauses *hmc, *hmcaux;
  hsizeclauses *hsc, *hscaux;

  HASH_ITER(hml,l_sos,aux,auxhml) {
    HASH_ITER(hmax,aux->max,hmc,hmcaux) {
	if ((populate_usable == MAX_LIT_NEGATIVE && hmc->max < 0) ||
	    (populate_usable == MAX_LIT_POSITIVE && hmc->max > 0) ||
	    (populate_usable == NON_NEGATIVE) ||
	    (populate_usable == NON_POSITIVE) ||
	    (populate_usable == NEGATIVE && hmc->max < 0) ||
	    (populate_usable == POSITIVE && hmc->max > 0)) {
	  HASH_ITER(hsize,hmc->size,hsc,hscaux) {
	    clauseslist *l = hsc->list;
	    while (l != NULL) {
	      tclause *clause = get_clause(l->clause_number);
	      l = l->next;
	      if (((populate_usable == NON_NEGATIVE) && (clause->class != NEGATIVEC)) ||
		  ((populate_usable == NON_POSITIVE) && (clause->class != POSITIVEC)) ||
		  ((populate_usable == NEGATIVE) && (clause->class == NEGATIVEC)) ||
		  ((populate_usable == POSITIVE) && (clause->class == POSITIVEC)) ||
		  (populate_usable == MAX_LIT_NEGATIVE) ||
		  (populate_usable == MAX_LIT_POSITIVE))
		{
		  move_clause_propositional(clause,&l_sos,&l_usable);
		}
	    }
	  }
	}
    }
  }
}


void delete_clause(tclause *clause) {
  if (clause != NULL) {
    if (clause->type == INITIAL) {
      delete_clause_prop(&i_usable,clause);
      delete_clause_prop(&i_sos,clause);
    }
    else if (clause->type == LITERAL) {
      delete_clause_prop(&l_usable,clause);
      delete_clause_prop(&l_sos,clause);
    }
    else {
      delete_clause_modal(&m_usable,clause);
      delete_clause_modal(&m_sos,clause);
    }
  }
}


/* This is used for subsumption */

tclause *create_new_modal_clause(tclause *clause, int prop, int rule) {

  int left;
  literalslist *right = malloc(sizeof(literalslist));
  
  if (prop == -clause->left)
    left = CFALSE;
  else left = clause->left;

  if (prop == clause->right->literal)
    right->literal = CTRUE;
  else right->literal = clause->right->literal;
  right->next = NULL;  

  clauseslist *parents = malloc(sizeof(clauseslist));
  parents->clause_number = clause->number;
  parents->next = NULL;
  literalslist *literals = malloc(sizeof(literal_list));
  literals->literal = prop;
  literals->next = NULL;
  justification *just = malloc(sizeof(justification));
  just->rule = rule;
  just->parents = parents;
  just->literals = literals;

  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = clause->type;
  new->subtype = clause->subtype;
  new->numdiamond = clause->numdiamond;
  new->modal_level = clause->modal_level;
  new->agent = clause->agent;
  new->propagated = 0;
  new->left = left;
  new->right = right;
  new->just = just;
  new->deleted = NULL;
  new->size = size_clause(right);
  new->max_literal = max_lit_clause(right);
  new->min_literal = right->literal;
  new->class = classify_clause(new->right);
  
  insert_clause_set(&new,new->type,SOS);

  clauseslist *parent = malloc(sizeof(clauseslist));
  parent->clause_number = new->number;
  parent->next = NULL;
  justification *deleted = malloc(sizeof(justification));
  deleted->rule = BACKSUBSUMED;
  deleted->parents = parent;
  deleted->literals = NULL;
  clause->deleted = deleted;
  numbsubsumed +=1;
  
  return clause;
}

int pure_literal_elimination (void) {
  prop_node *p, *auxp;
  int try_ple = 1;
  int try = 0;

  while (numproofs < maxproof && try_ple) {
    try_ple = 0;
    HASH_ITER(hid,propsid,p,auxp) {
      if (p->id != CTRUE && p->id != CFALSE && p->id != CSTART && (
	  (p->occur_positive == 0 && p->occur_negative != 0) ||
	  (p->occur_positive != 0 && p->occur_negative == 0))) {
	try_ple = 1;
	try = 1;
	int id;
	hml_clauses *aux = NULL,*auxtmp = NULL;
	if (p->occur_negative) {
	  id = -p->id;
	}
	else {
	  id = p->id;
	}
	HASH_ITER(hml,p->clauses,aux,auxtmp) {
	  clausesid *clauses = NULL;
	  if (aux->positive == NULL)
	    clauses = aux->negative;
	  else clauses = aux->positive;
	    
	  while (clauses != NULL) {
	    tclause *clause = get_clause(clauses->id);
	    clauses = clauses->hid.next;
	    if (clause != NULL) {
	      if (clause->type == MPOSITIVE || clause->type == MNEGATIVE)
		clause = create_new_modal_clause(clause,id,PLE);
	      else {
		literalslist *literals = malloc(sizeof(literal_list));
		literals->literal = id;
		literals->next = NULL;
		justification *deleted = malloc(sizeof(justification));
		deleted->rule = PLE;
		deleted->parents = NULL;
		deleted->literals = literals;
		clause->deleted = deleted;
		numple++;
	      }
	      delete_clause(clause);
	      insert_clause_deleted(clause);
	    }
	  }
	}
      }
    }
  }
  return try;
}

int modal_level_ple (void) {
  int try_ple = 1;
  int try = 0;
  int id = 0;
  
  while (numproofs < maxproof && try_ple) {
    try_ple = 0;
    prop_node *p = NULL, *ptmp = NULL;
    HASH_ITER(hid,propsid,p,ptmp) {
      hml_clauses *clauses = NULL, *clausestmp = NULL;
      HASH_ITER(hml,p->clauses,clauses,clausestmp) {
	clausesid *working = NULL;
	if (clauses->positive != NULL && clauses->negative == NULL) {
	  working = clauses->positive;
	  id = p->id;
	}
	else if (clauses->positive == NULL && clauses->negative != NULL) {
	  working = clauses->negative;
	  id = -(p->id);
	}
	clausesid *auxw = NULL, *auxwtmp = NULL;
	if (working != NULL) {
	  HASH_ITER(hid,working,auxw,auxwtmp) {
	    if (auxw != NULL) {
	      tclause *clause = get_clause(auxw->id);
	      if (clause != NULL) {
		try_ple = 1;
		try = 1;
	      
		// clauses need to be removed from the container before adding the new clause,
		// otherwise the newly created modal clause might be mistakenly be subsumed by 
		// its parents.
	      
		if (clause->type == MPOSITIVE || clause->type == MNEGATIVE) {
		  delete_clause(clause); 
		  insert_clause_deleted(clause);
		  clause = create_new_modal_clause(clause,id,MLPLE); }
		else {
		  literalslist *literals = malloc(sizeof(literal_list));
		  literals->literal = id;
		  literals->next = NULL;
		  justification *deleted = malloc(sizeof(justification));
		  deleted->rule = MLPLE;
		  deleted->parents = NULL;
		  deleted->literals = literals;
		  clause->deleted = deleted;
		  nummlple++;
		  delete_clause(clause); 
		  insert_clause_deleted(clause);
		}
	      }
	    }
	  }
	}
      }
    }
  }
  return try;
}

int modal_level_elimination (void) {

  int try = 0;
  int internal_try = 1;
  
  hml_mclauses *aux = NULL, *auxtmp = NULL;
  hagentclauses *hag = NULL, * hagtmp = NULL;
  htypeclauses *htc = NULL, *htctmp = NULL;
  hmaxlitclauses *hmaxlit = NULL, *hmaxlittmp = NULL;

  while (internal_try) {
    internal_try = 0;
    HASH_ITER(hml,m_sos,aux,auxtmp) {
      HASH_ITER(hid,aux->id,hag,hagtmp) {
	htypeclauses *htcneg = NULL;
	htypeclauses *htcpos = NULL;
	if (hag->type->type == MPOSITIVE) {
	  htcneg = hag->type->htype.next;
	  htcpos = hag->type;
	}
	else {
	  htcneg = hag->type;
	  htcpos = hag->type->htype.next;
	}
	if (htcneg == NULL) {
	  //	  printf("\n Deleting");
	  try = 1;
	  internal_try = 1;

	  HASH_ITER(htype,htcpos,htc,htctmp) {
	    HASH_ITER(hmax,htc->lit,hmaxlit,hmaxlittmp) {
	      while (hmaxlit->list != NULL) {
		tclause *c  = get_clause(hmaxlit->list->clause_number);
		justification *deleted = malloc(sizeof(justification));
		deleted->rule = MLE;
		deleted->parents = NULL;
		deleted->literals = NULL;
		c->deleted = deleted;
		hmaxlit->list = delete_clause_list(c,hmaxlit->list);
		pthread_mutex_lock (&mutexallclauses);
		delete_clause_all(c->number);
		pthread_mutex_unlock (&mutexallclauses);
		insert_clause_deleted(c);
		nummle++;
	      }
	      HASH_DELETE(hmax,htc->lit,hmaxlit);
	      free(hmaxlit);
	      hmaxlit = NULL;
	    }
	    HASH_DELETE(htype,hag->type,htc);
	    free(htc);
	    htc = NULL;
	  }
	}
	if (hag->type == NULL) {
	  HASH_DELETE(hid,aux->id,hag);
	  free(hag);
	  hag = NULL;
	}
      }
      if (aux->id == NULL) {
	HASH_DELETE(hml,m_sos,aux);
	free(aux);
	aux = NULL;
      }
    }
  }
  return try;
}


tclause *create_pos_clause(int type, int subtype, tclause *c, int left, int right) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = type;
  new->subtype = subtype;
  new->subtype = BOX;
  new->numdiamond  = BOX;
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  if (type == MNEGATIVE) {
    new->left = left;
  }
  else {
    new->left = -left;
  }
  new->right = malloc(sizeof(literalslist));
  new->right->literal = right;
  new->right->next = NULL;
  new->right = simplify_clause(new->right);
  new->size = size_clause(new->right);
  new->max_literal = max_lit_clause(new->right);
  new->min_literal = new->right->literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = DEFINITION;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_4_clause(tclause *c,int left, int right) {//parent, left, right of new modal clause
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = MPOSITIVE;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = right;
  new->right->next = NULL;
  new->right = simplify_clause(new->right);
  new->size = size_clause(new->right);
  new->max_literal = max_lit_clause(new->right);
  new->min_literal = new->right->literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = FOUR1;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_t_clause(tclause *c, int justrule) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = LITERAL;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = 0;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = CTRUE;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = -c->left;
  new->right->next = malloc(sizeof(literalslist));
  new->right->next->literal = c->right->literal;
  new->right->next->next = NULL;
  new->right = simplify_clause(new->right);
  new->size = size_clause(new->right);
  new->max_literal = max_lit_clause(new->right);
  new->min_literal = new->right->literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = justrule;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_sym_clause(tclause *c) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = MPOSITIVE;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX; //?
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0; //?
  new->left = -(c->right->literal);
  new->right = malloc(sizeof(literalslist));
  new->right->literal = -c->left;
  new->right->next = NULL;
  // Since new->right only has one literal, there's no need to simplify
  new->size = 1;
  new->max_literal = new->right->literal;
  new->min_literal = new->max_literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = SYM;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}


tclause *create_res_1010_clause(tclause *c) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = MPOSITIVE;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = c->left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = c->right->literal;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = new->right->literal;
  new->min_literal = new->right->literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = RES_1010;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_ser_clause(tclause *c) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = MNEGATIVE;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = c->left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = c->right->literal;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = new->right->literal;
  new->min_literal = new->max_literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = SER;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_euc_clause(tclause* c, int rule, int type, int left, int right) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = type;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = c->agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = right;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = right;
  new->min_literal = right;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = rule;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_lit_clause(tclause* c, int rule, literalslist *right) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = LITERAL;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = 0;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = CTRUE;
  new->right = simplify_clause(right);
  new->size = size_clause(new->right);
  new->max_literal = max_lit_clause(new->right);
  new->min_literal = new->right->literal; // Literals were sorted by simplify_clause
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = rule;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

tclause *create_modal_clause(tclause* c, int rule, int type, int left, int right, int agent) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = type;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = right;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = right;
  new->min_literal = right;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = rule;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

int create_pos_literal(int lit) {
  char *s = NULL;
  prop_node *p;
  if (lit < 0) {
    lit = -lit;
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    int len = snprintf(NULL, 0, "_def_n_%s",p->name) + 1;
    s = (char *) malloc(len);
    len = snprintf(s, len,"_def_n_%s",p->name);
  }
  else {
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    int len = snprintf(NULL, 0, "_def_%s",p->name) + 1;
    s = (char *) malloc(len);
    len = snprintf(s, len,"_def_%s",p->name);
  }
  
  prop_node *new = insert_pos_node(s);
  return new->id;
}

tclause *create_modal_clause_rule(tclause* c, int rule, int type, int left, int right, int agent) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = type;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = agent;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = left;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = right;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = right;
  new->min_literal = right;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = rule;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}


int create_def_pos_literal(int lit, int agent) {
  char *s = NULL;
  prop_node *p;
  prop_node *new = NULL;
  if (lit < 0) {
    lit = -lit;
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    if (p != NULL)
      if (p->isdef == 1) return -p->id;
    int len = snprintf(NULL, 0, "_pos_%d_n_%s",agent,p->name) + 1;
    s = (char *) malloc(len);
    len = snprintf(s, len,"_pos_%d_n_%s",agent,p->name);
    new = insert_pos_node(s);
    p->defneg = new->id;
    new->isdef = 1;
  }
  else {
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    if (p != NULL)
      if (p->isdef == 1) return p->id;
    int len = snprintf(NULL, 0, "_pos_%d_%s",agent,p->name) + 1;
    s = (char *) malloc(len);
    len = snprintf(s, len,"_pos_%d_%s",agent,p->name);
    new = insert_pos_node(s);
    p->defpos = new->id;
    new->isdef = 1;
  }
  return new->id;
}

void add_clause(clauseslist** list, tclause* clause) {
  
  if (clause_in_list(clause, *list) ||
      check_repeated_prop(clause, l_sos) ||
      check_repeated_modal(clause, m_sos)
      ) {
    return;
  }
 
  clauseslist* new = (clauseslist*) malloc(sizeof(clauseslist));
  new->clause_number = clause->number;
  new->clause_pointer = clause;
  new->next = *list;
  *list = new;
}

void insert_into_set(clauseslist* list, int set) {
  while (list != NULL) {
    //    printf("\n list->clause_number: %d",list->clause_number);
    //    print_clause(list->clause_pointer);
    insert_clause_set(&(list->clause_pointer),list->clause_pointer->type,set);
    clauseslist *tmp = list;
    list = list->next;
    free(tmp);
  }
}

int copy_literals(int i, literalslist** dst, literalslist* src) {
  literalslist* newlit = NULL;
  while(i--) {
    newlit = (literalslist*)malloc(sizeof(literalslist));
    newlit->literal = src->literal;
    newlit->next = *dst;
    *dst = newlit;
    src = src->next;
  }
  int selected = src->literal;
  src = src->next;
  while(src != NULL) {
    newlit = (literalslist*)malloc(sizeof(literalslist));
    newlit->literal = src->literal;
    newlit->next = *dst;
    *dst = newlit;
    src = src->next;
  }
  return selected;
}

void create_res_0010_mod_clauses(agent_node* a, tclause* c, clauseslist** newclauses) {
  literalslist* lits;
  for (lits = c->right; lits != NULL; lits = lits->next) {
    add_clause(newclauses, create_modal_clause(c, RES_0010, MPOSITIVE, lits->literal, lits->literal, a->id));
  }
}

void create_res_0010_clauses(agent_node* a, tclause* c, clauseslist** newclauses) {
  int i;
  for (i = 0; i < c->size; i++) {
    // true => D v p
    // p => []l
    prop_node *p = insert_pnew_node(newtemp++,HIGH);
    literalslist* D = NULL;
    int l = copy_literals(i, &D, c->right);
    
    // p => []l
    tclause *new = malloc(sizeof(tclause));
    new->number = numclause++;
    new->type = MPOSITIVE;
    new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
    new->numdiamond = BOX;
    new->agent = a->id;
    new->modal_level = c->modal_level;
    new->propagated = 0;
    new->left = p->id;
    new->right = (literalslist*)malloc(sizeof(literalslist));
    new->right->literal = l;
    new->right->next = NULL;
    new->size = 1;
    new->max_literal = l;
    new->min_literal = l;
    new->class = classify_clause(new->right);
    
    justification *just = malloc(sizeof(justification));
    just->rule = DEFINITION;
    just->parents = malloc(sizeof(clauseslist));
    just->parents->clause_number = c->number;
    just->parents->clause_pointer = c;
    just->parents->next = NULL;
    just->literals = NULL;
    new->just = just;
    new->deleted = NULL;
    add_clause(newclauses, new);
   
    // true => D v p
    literalslist* dvp = (literalslist*)malloc(sizeof(literalslist));
    dvp->literal = p->id;
    dvp->next = D;
    new = malloc(sizeof(tclause));
    new->number = numclause++;
    new->type = LITERAL;
    new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
    new->numdiamond = BOX;
    new->agent = 0;
    new->modal_level = c->modal_level;
    new->propagated = 0;
    new->left = CTRUE;
    new->right = simplify_clause(dvp);
    new->size = size_clause(new->right);
    new->max_literal = max_lit_clause(new->right);
    new->min_literal = new->right->literal; // Literals were sorted by simplify_clause
    new->class = classify_clause(new->right);
    
    just = malloc(sizeof(justification));
    just->rule = RES_0010;
    just->parents = malloc(sizeof(clauseslist));
    just->parents->clause_number = c->number;
    just->parents->clause_pointer = c;
    just->parents->next = NULL;
    just->literals = NULL;
    new->just = just;
    new->deleted = NULL;
    add_clause(newclauses, new);
  }
}

void create_res_0001_mod_clauses(agent_node *a, tclause *c, clauseslist** newclauses) {
  literalslist* lits;
  for (lits = c->right; lits != NULL; lits = lits->next) {
    add_clause(newclauses, create_modal_clause(c, RES_0001_MOD, MNEGATIVE, lits->literal, lits->literal, a->id));
  }
}

void create_res_0001_clauses(agent_node* a, tclause* c, clauseslist** newclauses) {
  int i;
  for (i = 0; i < c->size; i++) {
    // true => D v p
    // p => ¬[]¬l
    prop_node *p = insert_pnew_node(newtemp++,HIGH);
    literalslist* D = NULL;
    int l = copy_literals(i, &D, c->right);

    //int id_plus = rename_formula(new,HIGH,set,clause->numdiamond,ml);
    
    // p => ¬[]¬l
    add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, p->id, l, a->id));
    
    // ¬p => []¬l
    // may be unnecessary
    // add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -p->id, -l, a->id));

    // true => D v p
    literalslist* dvp = (literalslist*)malloc(sizeof(literalslist));
    dvp->literal = p->id;
    dvp->next = D;
    add_clause(newclauses, create_lit_clause(c, RES_0001, dvp));
  }
}

void create_res_0011_clauses(agent_node* a, tclause* c, clauseslist** newclauses) {
  // c: true => D v l

  int i;
  for (i = 0; i < c->size; i++) {
    literalslist* D = NULL;
    int l = copy_literals(i, &D, c->right);
    int pos = create_pos_literal(l);

    // l => []pos
    add_clause(newclauses, create_modal_clause(c, RES_0011, MPOSITIVE, l, pos, a->id));

    // Definition clauses follow. (pos <=> <>l)
    // pos => ¬[]¬l
    add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos, l, a->id));

    // ¬pos => []¬l
    add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos, -l, a->id));
  }
}

void create_res_0011_mod_clauses(agent_node* a, tclause* c, clauseslist** newclauses) {
  literalslist* lits;
  for (lits = c->right; lits != NULL; lits = lits->next) {
    int pos = create_pos_literal(lits->literal); // was wrong here, fixed in c->right
    // pos => ~[]~l
    add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos, lits->literal, a->id));
    // ~pos => []~l
    add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos, -lits->literal, a->id));
    // l => []pos
    add_clause(newclauses, create_modal_clause(c, RES_0011, MPOSITIVE, lits->literal, pos, a->id));
  }
}

void create_res_0111_clauses(tclause* c, clauseslist** newclauses) {
  // c: l => []l'

  // Definition clauses: pos <=> <>l'
  int pos = create_pos_literal(c->right->literal);
  // pos => <> l'
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos, c->right->literal, c->agent));
  // ¬pos => []¬l'
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos, -c->right->literal, c->agent));
  
  // G clause: l => []pos
  add_clause(newclauses, create_modal_clause(c, RES_0111, MPOSITIVE, c->left, pos, c->agent));
}

void create_res_1101_clauses(tclause* c, clauseslist** newclauses) {
  // c: l => []l'
  //TODO: definition clauses
  int pos = create_pos_literal(c->left);
  // G clause: l => []pos
  add_clause(newclauses, create_modal_clause(c, RES_1101, MNEGATIVE, pos, c->right->literal, c->agent));
}

void create_res_1111_clauses(tclause* c, clauseslist** newclauses) {
  //c: l1 => []l2
  //--------------
  // pos_l1 => []pos_l2

  int pos_l1 = create_pos_literal(c->left);
  int pos_l2 = create_pos_literal(c->right->literal);
  // Definition clauses: pos_l1 <=> <>l1, pos_l2 <=> <>l2
  // pos_l1 => <>l1
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos_l1, c->left, c->agent));
  // ¬pos_l1 => []¬l1
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos_l1, -c->left, c->agent));
  // pos_l2 => <>l2
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos_l2, c->right->literal, c->agent));
  // ¬pos_l2 => []¬l2
  add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos_l2, -c->right->literal, c->agent));
  // G1 clause: pos_l1 => []pos_l2
  add_clause(newclauses, create_modal_clause(c, RES_1111, MPOSITIVE, pos_l1, pos_l2, c->agent));
}

void four1(tclause* clause, clauseslist** newclauses) {
  int lit = clause->right->literal;
  int pos_lit = 0;
  prop_node *p = NULL;
  if (lit < 0 ) {
    lit = -lit;
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    lit = -lit;
  }
  else HASH_FIND(hid,propsid,&lit,sizeof(int),p);
  
  if (p != NULL) {
    if (lit < 0) {
      if (p->defneg!=0) pos_lit = p->defneg;
      else if (p->isdef !=0) pos_lit = -p->id;
      else pos_lit = create_def_pos_literal(-lit,clause->agent);
    }
    else {
      if (p->defpos!=0) pos_lit = p->defpos;
      else if (p->isdef !=0) pos_lit = p->id;
      else pos_lit = create_def_pos_literal(lit,clause->agent);
    }
  }
  
  tclause *new_four_2 = create_4_clause(clause, pos_lit, pos_lit);
  add_clause(newclauses, new_four_2);
  /* note this is needed for completeness, even if t is not an axiom */
  literalslist* literals = (literalslist*) malloc(sizeof(literalslist));
  literals->literal = -clause->left;
  literals->next = (literalslist*)malloc(sizeof(literalslist));
  literals->next->literal = pos_lit;
  literals->next->next = NULL;
  add_clause(newclauses, create_lit_clause(clause, FOUR1, literals));
}

void four2(tclause* clause, clauseslist** newclauses) {
  int lit = clause->right->literal;
  int pos_lit = 0;
  prop_node *p = NULL;
  if (lit < 0 ) {
    lit = -lit;
    HASH_FIND(hid,propsid,&lit,sizeof(int),p);
    lit = -lit;
  }
  else HASH_FIND(hid,propsid,&lit,sizeof(int),p);
  
  if (p != NULL) {
    if (strncmp("_def_", p->name, 5))
      pos_lit = create_pos_literal(lit);
  }
  else pos_lit = lit;

  //lit = clause->right->literal;
  //int pos_lit = create_pos_literal(lit);
  literalslist* literals = (literalslist*)malloc(sizeof(literalslist));
  literals->literal = -clause->left;
  literals->next = (literalslist*)malloc(sizeof(literalslist));
  literals->next->literal = pos_lit;
  literals->next->next = NULL;
  add_clause(newclauses, create_lit_clause(clause, FOUR2, literals));
  add_clause(newclauses, create_euc_clause(clause, FOUR2, MPOSITIVE, pos_lit, pos_lit));
  add_clause(newclauses, create_modal_clause_rule(clause,DEFINITION,MPOSITIVE,pos_lit,lit,clause->agent));
  add_clause(newclauses, create_modal_clause_rule(clause,DEFINITION,MNEGATIVE,-pos_lit,-lit,clause->agent));
}


tclause *create_res_1000_clause(tclause *c) {

  //  int pos = create_pos_literal(c->right->literal);
    // pos => ~[]~l
  //add_clause(newclauses, create_modal_clause(c, DEFINITION, MNEGATIVE, pos, c->right->literal, c->agent));
    // ~pos => []~l
  //  add_clause(newclauses, create_modal_clause(c, DEFINITION, MPOSITIVE, -pos, -(c->right->literal), c->agent));
  // it seems there is some serious leak after adding the above.
  
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = LITERAL;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = 0;
  new->modal_level = c->modal_level;
  new->propagated = 0;
  new->left = CTRUE;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = -c->left;
  new->right->next = malloc(sizeof(literalslist));
  new->right->next->literal = c->right->literal;
  new->right->next->next = NULL;
  new->right = simplify_clause(new->right);
  new->size = size_clause(new->right);
  new->max_literal = max_lit_clause(new->right);
  new->min_literal = new->right->literal;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = RES_1000;
  just->parents = malloc(sizeof(clauseslist));
  just->parents->clause_number = c->number;
  just->parents->clause_pointer = c;
  just->parents->next = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

clauseslist* generate_axiom_clauses(agent_node* a, tclause* clause, clauseslist* newclauses) {
  unsigned int axioms = a->axioms;
  switch (clause->type) {
    case MPOSITIVE:
      if (axioms & SER) {
	if (clause->right->literal != CFALSE) 
	  add_clause(&newclauses, create_modal_clause_rule(clause,SER,MNEGATIVE,clause->left,clause->right->literal,a->id));
	else {
	  literalslist* literals = (literalslist *) malloc(sizeof(literalslist));
	  literals->literal = -clause->left;
	  literals->next = NULL;
	  add_clause(&newclauses,create_lit_clause(clause, SER, literals)); ///
	}
      }
      if (axioms & T) { // 0100
	literalslist* literals = (literalslist*)malloc(sizeof(literalslist));
        literals->literal = -clause->left;
        literals->next = (literalslist*)malloc(sizeof(literalslist));
        literals->next->literal = clause->right->literal;
        literals->next->next = NULL;
        add_clause(&newclauses, create_lit_clause(clause, T, literals));
      }
      if (axioms & SYM && clause->just->rule != SYM) { //1100
	add_clause(&newclauses, create_modal_clause_rule(clause,SYM,MPOSITIVE,-clause->right->literal,-clause->left,a->id));
      }
      if (axioms & FOUR1 && clause->just->rule != FOUR1 && clause->just->rule != DEFINITION) {
	int lit = -clause->right->literal;

	prop_node *p = NULL;
	if (lit < 0) p = find_prop(-lit);
	else p = find_prop(lit);
	if (!(p->isdef)) // TRANS is not applied to clauses where the symbol inside the box is a definition.
	  {
	    int pos_lit;

	    pos_lit = create_def_pos_literal(lit,a->id);
	    tclause *c1 = create_definition_clause(lit,pos_lit,a->id,MNEGATIVE,1);
	    tclause *c2 = create_definition_clause(-lit,-pos_lit,a->id,MPOSITIVE,1);
	
	    add_clause(&newclauses,c1);
	    add_clause(&newclauses,c2);
	
	    add_clause(&newclauses, create_modal_clause_rule(clause,FOUR1,MPOSITIVE,clause->left,-pos_lit,a->id));
	    add_clause(&newclauses, create_modal_clause_rule(clause,FOUR1,MPOSITIVE,-pos_lit,-pos_lit,a->id));
	    /* note this is needed for completeness, even if t is not an axiom */
	    literalslist* literals = (literalslist*) malloc(sizeof(literalslist));
	    literals->literal = -clause->left;
	    literals->next = (literalslist*)malloc(sizeof(literalslist));
	    literals->next->literal = -pos_lit;
	    literals->next->next = NULL;
	    add_clause(&newclauses, create_lit_clause(clause, FOUR1, literals));
	  }
	
	//        four1(clause, &newclauses);
      }
      if (axioms & FOUR2 && clause->just->rule != FOUR2 && clause->just->rule != DEFINITION) {
        four2(clause, &newclauses);
      }
      if (axioms & RES_1110  && clause->just->rule != DEFINITION) { //
	 int pos = create_def_pos_literal(clause->left,clause->agent);
	 add_clause(&newclauses, create_modal_clause_rule(clause,RES_1110,MPOSITIVE,pos,clause->right->literal,a->id));
      }
      if (axioms & EUC2 && clause->just->rule != EUC1 && clause->just->rule != EUC2 && clause->just->rule != DEFINITION) {

	int lit = clause->left;
	int pos_lit;
	prop_node *p1 = NULL;
	if (lit < 0) p1 = find_prop(-lit);
	else p1 = find_prop(lit);
	prop_node *p2 = NULL;
	if (clause->right->literal < 0) p2 = find_prop(-clause->right->literal);
	else p2 = find_prop(clause->right->literal);

	if (!((p1->isdef) && (p2->isdef))) { // EUC2 is not applied to clauses whose left-hand side is a definition or when the symbol inside the box is a definition

	  pos_lit = create_def_pos_literal(lit,a->id);
	  tclause *c1 = create_definition_clause(lit,pos_lit,a->id,MNEGATIVE,1);
	  tclause *c2 = create_definition_clause(-lit,-pos_lit,a->id,MPOSITIVE,1);
	
	  add_clause(&newclauses,c1);
	  add_clause(&newclauses,c2);

	  add_clause(&newclauses, create_modal_clause_rule(clause,EUC2,MPOSITIVE,pos_lit,clause->right->literal,a->id));
	  add_clause(&newclauses, create_modal_clause_rule(clause,EUC2,MPOSITIVE,pos_lit,pos_lit,a->id));
	}
      }

      if (axioms & RES_0111 && clause->just->rule != RES_0111 && clause->just->rule != RES_1101 && clause->just->rule != DEFINITION) {
	int pos = create_def_pos_literal(clause->right->literal,clause->agent);
	add_clause(&newclauses, create_modal_clause_rule(clause,RES_0111,MPOSITIVE,clause->left,pos,a->id));
      }

      if (axioms & RES_1101 && clause->just->rule != RES_1101 && clause->just->rule != RES_0111 && clause->just->rule != DEFINITION) {
	int pos = create_def_pos_literal(clause->left,clause->agent);
	add_clause(&newclauses, create_modal_clause_rule(clause,RES_1101,MNEGATIVE,pos,clause->right->literal,a->id));
      }

      if (axioms & RES_1111 && clause->just->rule != RES_1111 && clause->just->rule != DEFINITION) {
	int pos_l = create_def_pos_literal(clause->left,clause->agent);
	int pos_r = create_def_pos_literal(clause->right->literal,clause->agent);
	add_clause(&newclauses, create_modal_clause_rule(clause,RES_1111,MPOSITIVE,pos_l,pos_r,a->id));
      }
      if (axioms & MCK && clause->just->rule != MCK  && clause->just->rule != DEFINITION) {
	int pos_l = create_def_pos_literal(clause->left,clause->agent);
	int pos_r = create_def_pos_literal(-clause->right->literal,clause->agent);
	add_clause(&newclauses, create_modal_clause_rule(clause,MCK,MNEGATIVE,pos_l,-pos_r,a->id));
      }     
      
      break;

    case MNEGATIVE:
      if (axioms & RES_1011 && clause->just->rule != DEFINITION) {  // check if needs to be applied to definitions
	 int pos = create_def_pos_literal(clause->right->literal,clause->agent);
	 add_clause(&newclauses, create_modal_clause_rule(clause,RES_1011,MPOSITIVE,clause->left,pos,a->id));
      }
      if (axioms & EUC1 && clause->just->rule != EUC1 && clause->just->rule != EUC2 && clause->just->rule != DEFINITION && clause->just->rule != SER) {

	int lit = clause->right->literal;
	
	prop_node *p1 = NULL;
	if (lit < 0) p1 = find_prop(-lit);
	else p1 = find_prop(lit);
	prop_node *p2 = NULL;
        if (clause->left < 0) p2 =find_prop(-clause->left);
	else p2 = find_prop(clause->left);
	if (p1->isdef == 0 && p2->isdef==0)
	  { // EUC1 is not applied to clauses where the literal inside the diamond is a definition symbol or its negation
	  int pos_lit;

	  pos_lit = create_def_pos_literal(lit,a->id);
	  tclause *c1 = create_definition_clause(lit,pos_lit,a->id,MNEGATIVE,1);
	  tclause *c2 = create_definition_clause(-lit,-pos_lit,a->id,MPOSITIVE,1);
	
	  add_clause(&newclauses,c1);
	  add_clause(&newclauses,c2);
	
	  literalslist* literals = (literalslist*)malloc(sizeof(literalslist));
	  literals->literal = -clause->left;
	  literals->next = (literalslist*)malloc(sizeof(literalslist));
	  literals->next->literal = pos_lit;
	  literals->next->next = NULL;
	  add_clause(&newclauses, create_lit_clause(clause, EUC1, literals));
	  add_clause(&newclauses, create_modal_clause_rule(clause,EUC1,MPOSITIVE,pos_lit,pos_lit,a->id));
	}
      }
      if (axioms & MCK && clause->just->rule != MCK  && clause->just->rule != DEFINITION) {
	int pos_l = create_def_pos_literal(-clause->left,clause->agent);
	int pos_r = create_def_pos_literal(-clause->right->literal,clause->agent);
	add_clause(&newclauses, create_modal_clause_rule(clause,MCK,MNEGATIVE,-pos_l,-pos_r,a->id));
      }
      if (axioms & RES_1000) {
	//	        add_clause(&newclauses, create_res_1000_clause(clause));

        literalslist* literals = (literalslist*)malloc(sizeof(literalslist));
        literals->literal = -clause->left;
        literals->next = (literalslist*)malloc(sizeof(literalslist));
        literals->next->literal = clause->right->literal;
        literals->next->next = NULL;
        add_clause(&newclauses, create_lit_clause(clause, RES_1000, literals));
      }

      if (axioms & RES_1010) {
	add_clause(&newclauses, create_modal_clause_rule(clause,RES_1010,MPOSITIVE,clause->left,clause->right->literal,a->id));
      }
      
      break;
    case LITERAL:
      if (axioms & RES_0001 && clause->just->rule != RES_0001 && clause->just->rule != DEFINITION) {
        create_res_0001_clauses(a, clause, &newclauses);
      }
      if (axioms & RES_0001_MOD && clause->just->rule != RES_0001_MOD && clause->just->rule != DEFINITION) {
        create_res_0001_mod_clauses(a, clause, &newclauses);
      }
      if (axioms & RES_0010 && clause->just->rule != RES_0010 && clause->just->rule != DEFINITION) {
        create_res_0010_clauses(a, clause, &newclauses); // used to be mod
      }
      if (axioms & RES_0010_MOD && clause->just->rule != RES_0010_MOD && clause->just->rule != DEFINITION) {
        create_res_0010_mod_clauses(a, clause, &newclauses);
      }
      if (axioms & RES_0011 && clause->just->rule != RES_0011 && clause->just->rule != DEFINITION) {
        create_res_0011_clauses(a, clause, &newclauses);
      }
      if (axioms & RES_0011_MOD && clause->just->rule != RES_0011_MOD && clause->just->rule != DEFINITION) {
        create_res_0011_mod_clauses(a, clause, &newclauses);
      }
      break;
    default:
      break;
  }
  return newclauses;
}

clauseslist* generate_all_axiom_clauses(agent_node* agent, clauseslist* list) {
  clauseslist* newclauses = NULL;

  for (; list != NULL; list = list->next) {
    tclause* clause = list->clause_pointer;
    if (!clause->agent || clause->agent == agent->id) {
      newclauses = generate_axiom_clauses(agent, clause, newclauses);
    }
  }

  return newclauses;
}

tclause *create_definition_clause(int lit, int pos_lit, int agent, int type, int level) {
  tclause *new = malloc(sizeof(tclause));
  new->number = numclause++;
  new->type = type;
  new->subtype = BOX; // DEFINITIONS SHOULD BE ALWAYS AVAILABLE???
  new->numdiamond = BOX;
  new->agent = agent;
  new->modal_level = level ;
  new->propagated = 0;
  new->left = pos_lit;
  new->right = malloc(sizeof(literalslist));
  new->right->literal = lit;
  new->right->next = NULL;
  new->size = 1;
  new->max_literal = lit;
  new->min_literal = lit;
  new->class = classify_clause(new->right);
  
  justification *just = malloc(sizeof(justification));
  just->rule = DEFINITION;
  just->parents = NULL;
  just->literals = NULL;
  new->just = just;
  new->deleted = NULL;
  return new;
}

void generate_def_clauses(void) {
  agent_node *a;
  prop_node *p;
  literalslist *l = NULL, *laux = NULL;

  // iterates over the set of propositional symbols and generates the definitional symbols

  for (p = propsid; p != NULL; p = p->hid.next) {
    if (p->id != CSTART && p->id != CTRUE && p->id != CFALSE && p->isdef == 0) {
	  literalslist *new = malloc(sizeof(literalslist));
	  new->literal = p->id;
	  new->next = l;
	  l = new;
    }
  }

  for (a = agentsid; a != NULL; a = a->hid.next) {
    if ((a->axioms != 0) && ((a->axioms & T) == 0) && ((a->axioms & SYM) == 0) && ((a->axioms & SER) == 0) && ((a->axioms & EUC1) == 0) && ((a->axioms & EUC2) == 0) && ((a->axioms & FOUR1) == 0)) {
      for (laux = l; laux != NULL; laux = laux->next) {
	int lit = laux->literal;
	int pos_lit;

	pos_lit = create_def_pos_literal(lit,a->id);
	tclause *c1 = create_definition_clause(lit,pos_lit,a->id,MNEGATIVE,1);
	insert_clause_set(&c1,MNEGATIVE,SOS);
	tclause *c2 = create_definition_clause(-lit,-pos_lit,a->id,MPOSITIVE,1);
	insert_clause_set(&c2,MPOSITIVE,SOS);

	lit = -lit;
	pos_lit = create_def_pos_literal(lit,a->id);
	tclause *c3 = create_definition_clause(lit,pos_lit,a->id,MNEGATIVE,1);
	insert_clause_set(&c3,MNEGATIVE,SOS);
	tclause *c4 = create_definition_clause(-lit,-pos_lit,a->id,MPOSITIVE,1);
	insert_clause_set(&c4,MPOSITIVE,SOS);
      }
    }
  }
}


void preprocess_axioms(void) {
  clauseslist* current_clause = NULL;
  clauseslist* axiom_clauses = NULL;
  agent_node *a = NULL;

  // iterates over the set of modal clauses generating the relevant literals and clauses
  hml_mclauses *aux_m = m_sos;
  hagentclauses *hag = NULL;
  htypeclauses *htc = NULL;
  hmaxlitclauses *hmaxlit = NULL;

  for (aux_m=m_sos; aux_m != NULL; aux_m=aux_m->hml.next) {
    for (hag=aux_m->id; hag != NULL; hag=hag->hid.next) {
      agent_node *a = find_agent(hag->id);
      for (htc=hag->type; htc != NULL; htc=htc->htype.next) {
        for (hmaxlit = htc->lit; hmaxlit != NULL; hmaxlit=hmaxlit->hmax.next) {
          for (current_clause = hmaxlit->list; current_clause != NULL; current_clause = current_clause->next) {
            tclause* clause = get_clause(current_clause->clause_number);
            axiom_clauses = generate_axiom_clauses(a, clause, axiom_clauses);
          }
        }
      }
    } 
  }
  
  // iterate over the set of literal clauses generating the relevant literals and clauses
  hml_pclauses *aux_p = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL;
  a = NULL;

  for (aux_p = l_sos; aux_p != NULL; aux_p = aux_p->hml.next) {
    for (hmc = aux_p->max; hmc != NULL; hmc = hmc->hmax.next) {
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
        for (current_clause = hsc->list; current_clause != NULL; current_clause = current_clause->next) {
          for (a = agentsid; a != NULL; a = a->hid.next) {
            tclause *clause = get_clause(current_clause->clause_number);
            axiom_clauses = generate_axiom_clauses(a, clause, axiom_clauses);
          }
        }
      }
    }
  }

  // Create new axiom clauses from the previously generated ones
  for(agent_node* a = agentsid; a != NULL; a = a->hid.next) {
    while (axiom_clauses != NULL) {
      clauseslist* newclauses = generate_all_axiom_clauses(a, axiom_clauses);
      insert_into_set(axiom_clauses, SOS);
      axiom_clauses = newclauses;
    }
  }
}


void preprocessing (int option) {
  int try = 1;

  while (numproofs < maxproof && try) {
    try = 0;
    int try2 = 0;
    if (propagate_dia == ON)
      propagate_unique_dia_ml();
    
    if (numproofs < maxproof && mle == ON) {
      try = modal_level_elimination();
    }
    if (numproofs < maxproof && ple == ON) {
      try2 = pure_literal_elimination();
      try = MAX(try,try2);
      print_out("PLE");
    }
    if (numproofs < maxproof && ml_ple == ON) {
      try2 = modal_level_ple();
      try = MAX(try,try2);
      print_out("ML_PLE");
    }
    if (l_sos != NULL && numproofs < maxproof && unit == ON) {
      try2 = unit_resolution(&l_sos);
      try = MAX(try,try2);
      print_out("Unit Resolution");
    }
  }

  if(!option) {
    do_mres(m_sos);
    print_out("MRES");
    
    if (gen2 | (!modal_negative && !modal_positive && !strong_modal_positive && !strong_modal_negative)) {
      do_gen2(m_sos);
      print_out("GEN2");
    }
  }
  
  self_subsumption();
  print_out("Self Subsumption");

  if (option && populate_usable) {
    populate();
    print_out("Populated Usable");
  }
  print_out("Pre-processing");
}
