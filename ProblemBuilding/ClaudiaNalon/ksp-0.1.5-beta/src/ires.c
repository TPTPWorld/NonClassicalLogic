#include <stdio.h>
#include "prover.h"
#include "symbol_table.h"
#include "clauses.h"

extern void insert_clause_set (tclause **clause, int type, int set);
extern int size_clause (literalslist *l);
extern int max_lit_clause (literalslist *l);
extern tclause *get_clause (int clause);
extern literalslist *simplify_clause(literalslist *l);

extern int maxproof;
extern int numproofs;

extern hml_pclauses *l_usable;
extern hml_pclauses *i_usable;

extern void do_res(int literal, tclause *chosen, clauseslist *candidates);
extern void do_lres(int clause);
extern void do_initial (int cycle);

/* Applies interleaved initial resolution */
/* It takes a literal modal clause and applies resolution between this clause and the clauses in the initial usable */

void do_mod_ordires (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);
  int maxlit = -chosen->max_literal;
  clauseslist *candidates;

  HASH_FIND(hml,i_usable,&(chosen->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    HASH_FIND(hmax,hmlp->max,&maxlit,sizeof(int),hmc);
    if (hmc != NULL)
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	candidates = hsc->list;
	do_res(chosen->max_literal,chosen,candidates);
      }
  }

  do_initial(0);
}

void do_ordires (int clause) {
  hml_pclauses *hmlp = NULL;
  hmaxclauses *hmc = NULL;
  hsizeclauses *hsc = NULL; 

  tclause *chosen = get_clause(clause);
  int maxlit = -chosen->max_literal;
  clauseslist *candidates;

  /* IRES2 */

  
  HASH_FIND(hml,i_usable,&(chosen->modal_level),sizeof(int),hmlp);
  if (hmlp != NULL) {
    HASH_FIND(hmax,hmlp->max,&maxlit,sizeof(int),hmc);
    if (hmc != NULL)
      for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	candidates = hsc->list;
	do_res(chosen->max_literal,chosen,candidates);
      }
  }

  /* IRES1 */
  
  if (numproofs < maxproof) {
    HASH_FIND(hml,l_usable,&(chosen->modal_level),sizeof(int),hmlp);
    if (hmlp != NULL) {
      HASH_FIND(hmax,hmlp->max,&maxlit,sizeof(int),hmc);
      if (hmc != NULL)
	for (hsc = hmc->size; hsc != NULL; hsc = hsc->hsize.next) {
	  candidates = hsc->list;
	  do_res(chosen->max_literal,chosen,candidates);
	}
    }
  }
}

void do_ires(int clause) {
    do_ordires(clause);
}
