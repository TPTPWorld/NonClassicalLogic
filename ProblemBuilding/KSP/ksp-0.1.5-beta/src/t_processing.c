#include <stdio.h>
#include <pthread.h>
#include <math.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

typedef struct hml_pclauses_list {
  hml_pclauses *ml;
  struct hml_pclauses_list *next;
} hml_pclauses_list;
  
typedef struct pthread_list {
  pthread_t thread;
  hml_pclauses_list *ml;
  struct pthread_list *next;
} pthread_list;


extern void move_clause_propositional (tclause *c, hml_pclauses **set_out, hml_pclauses **set_in);
extern int do_initial (int cycle);
extern int chosen (hml_pclauses **hmlp);
extern tclause *get_clause (int clause);
extern void print_out (char *);

extern int modal_level_elimination (void);
extern int pure_literal_elimination (void);
extern int modal_level_ple (void);
extern int unit_resolution(hml_pclauses **);

void forward_subsumes (tclause *clause, hml_pclauses **set);
int forward_subsumed (tclause **clause, hml_pclauses *set);
void backward_subsumes (tclause *clause, hml_pclauses **set);
int backward_subsumed (tclause **clause, hml_pclauses *set);

extern void do_lres (int clause);
extern void do_gen3 (int clause);
extern void do_gen1 (int clause);
extern void do_ires (int clause);

extern hml_pclauses *l_sos;
extern hml_pclauses *l_usable;

extern int cycles;
extern int ires;
extern int global;
extern int modal_positive;
extern int modal_negative;
extern int strong_modal_positive;
extern int strong_modal_negative;
extern int literal_selection;
extern int numclause;
extern int mle;
extern int ple;
extern int ml_ple;
extern int unit;
extern int forward_subsumption;
extern int backward_subsumption;
extern int clause_selection;
extern int maxproof;
extern int numproofs;

void *t_do_gen(void *par) {
  clauseslist *clauses = ((clauseslist *) par);

  while (clauses != NULL) {
   int clause = clauses->clause_number;
   tclause *c = get_clause(clause);
   if (c != NULL) {
     if (((strong_modal_positive || modal_positive) && c->class == NEGATIVEC) ||
	 ((modal_negative || strong_modal_negative) && c->class == POSITIVEC) ||
	 (!strong_modal_positive && !modal_positive && !modal_negative && !strong_modal_negative)) {
   do_gen3(clause);
   do_gen1(clause);
     }
   }
   clauses = clauses->next;
  }
  free(par);
  return NULL;
}

void *t_lres(void *par) {
  int subsumed = 0;
  clauseslist *clauses = ((clauseslist *) par);

  while (clauses != NULL) {
    int clause = clauses->clause_number;
    tclause *c = get_clause(clause);
    if (c != NULL) {
  
      if (forward_subsumption == ON) {
	subsumed = forward_subsumed(&c,l_usable); // this removes c, if it is subsumed by any clause in usable
	if (!subsumed) {
	  forward_subsumes(c,&l_usable); // this removes clauses from usable that are subsumed by c
	}
      }
      if (!subsumed) {
	if (backward_subsumption == ON) {
	  backward_subsumes(c,&l_usable);
	  subsumed=backward_subsumed(&c,l_usable);
	}
	if (!subsumed) {
	  do_lres(clause);
	}
      }
    }
    clauses = clauses->next;
  }
  free(par);
  return NULL;
}

void *t_res(void *par) {
  int subsumed = 0;
  hml_pclauses_list *mls = ((hml_pclauses_list *) par);

  while (numproofs < maxproof && mls != NULL) {

    hml_pclauses *hmlp = mls->ml;

    while (numproofs < maxproof && hmlp != NULL) {
      int try = 1;
      int try2 = 0;
      while (numproofs < maxproof && try) {
	try = 0;
	if (numproofs < maxproof && mle == ON)
	  try = modal_level_elimination();
	if (numproofs < maxproof && ple == ON) {
	  try2 = pure_literal_elimination();
	  try = MAX(try,try2);
	}
	if (numproofs < maxproof && ml_ple == ON) {
	  try2 = modal_level_ple();
	  try = MAX(try,try2);
	}
	if (numproofs < maxproof && unit == ON) {
	  try2 = unit_resolution(&l_sos);
	  try = MAX(try,try2);
	}
      }
      
      int clause = chosen(&(hmlp));
      hmlp = hmlp->hml.next;
      tclause *c = get_clause(clause);
      if (numproofs < maxproof && c != NULL) {
	if (forward_subsumption == ON) {
	  subsumed = forward_subsumed(&c,l_usable); // this removes c, if it is subsumed by any clause in usable
	  if (!subsumed) {
	    forward_subsumes(c,&l_usable); // this removes clauses from usable that are subsumed by c
	  }
	}
	if (!subsumed) {
	  if (backward_subsumption == ON) {
	    backward_subsumes(c,&l_usable);
	    subsumed=backward_subsumed(&c,l_usable);
	  }
	  if (!subsumed) {
	    do_lres(clause);	  
	    if ((numproofs < maxproof) &&
		(((strong_modal_positive || modal_positive) && c->class == NEGATIVEC) ||
		((modal_negative || strong_modal_negative) && c->class == POSITIVEC) ||
		 (!strong_modal_positive && !modal_positive && !modal_negative && !strong_modal_negative))) {
	      do_gen3(clause);
	      do_gen1(clause);
	    }
	    move_clause_propositional(c,&l_sos,&l_usable);
	  }
	}
      }
    }
    mls = mls->next;
  }
  free(par);
  return NULL;
}


int t_processing (int cycle, int processors) {
  cycles = cycle;
  while (l_sos != NULL && numproofs < maxproof)  {
    hml_pclauses *hmlp = l_sos;
    cycles++;
    int try = 1;
    int try2 = 0;
    while (numproofs < maxproof && try) {
      try = 0;
      if (numproofs < maxproof && mle == ON)
	try = modal_level_elimination();
      if (numproofs < maxproof && ple == ON) {
	try2 = pure_literal_elimination();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && ml_ple == ON) {
	try2 = modal_level_ple();
	try = MAX(try,try2);
      }
      if (numproofs < maxproof && unit == ON) {
	try2 = unit_resolution(&l_sos);
	try = MAX(try,try2);
      }
    }
    
    
    hmlp = l_sos;  
    int load = 0;

    while (hmlp != NULL) {
      load++;
      hmlp = hmlp->hml.next;
    }

    int cycle_load = ceil(((double)load)/processors);

    hmlp = l_sos;
    pthread_list *threadlist = NULL;

    int start_load = 0;
    while (hmlp != NULL) {
      if (start_load == 0) {
	pthread_list *new = malloc(sizeof(pthread_list));
	new->next = threadlist;
	new->ml = NULL;
	threadlist = new;
      }
      hml_pclauses_list *newlist = malloc(sizeof(hml_pclauses_list));
      newlist->ml = hmlp;
      newlist->next = threadlist->ml;
      threadlist->ml = newlist;
      start_load++;
      if (start_load == cycle_load)
	start_load = 0;
      hmlp = hmlp->hml.next;
    }

    pthread_list *aux = threadlist;
    while (aux != NULL) {
      hml_pclauses_list *arg = malloc(sizeof(*arg));
      *arg = *aux->ml;
      pthread_create(&(aux->thread),NULL,t_res,arg);
      aux = aux->next;
    }

    aux = threadlist;
    while (aux != NULL && numproofs < maxproof) {
      pthread_join(aux->thread,NULL);
      pthread_list *aux2 = aux;      
      aux = aux->next;
      free(aux2);
    }
  }

  print_out("Parallel LRES, GEN1, GEN3");
  
  if (!global && ires) {
    cycles = do_initial(cycles);
  }
  
  return cycles;
}

