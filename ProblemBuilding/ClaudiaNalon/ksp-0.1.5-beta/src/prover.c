#include <limits.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <pthread.h>
#include "parser.tab.h"
#include "prover.h"
#include "clauses.h"

FILE *out;

int clausesize = 0;
int snfclausesize = 0;
int formulasize = 0;
int numproofs = 0;
int numclause = 1;
int numlevels = 0;
int numinitialclauses;
int numtautologies = 0;
int numfsubsumed = 0;
int numbsubsumed = 0;
int nummle = 0;
int numple = 0;
int nummlple = 0;
int numearlyple = 0;
int numearlymlple = 0;
int numsat = 0;
int numsimp = 0;
int numpropagateunique = 0;
int numctepropagated = 0;
int mdepth;
int cycles;
int phase = 0;
int snfnumprops = 0, snfnumclauses = 0, snfpostppprops = 0, snfpostppclauses = 0;

/* global variables for the prover options */

int configfile = OFF;
int verbose = OFF;
int maxproof = 1;
int print_numclauses = OFF;
int print_chosen = OFF;
int print_generated = OFF;
int print_deleted = OFF;
int print_proof = OFF;
int print_proof_size = OFF;
int print_proof_max = OFF;
int print_renaming = OFF;
int print_levels = OFF;
int print_kept = OFF;
int time_stamp = OFF;

int parallel_prover = OFF;
int processors = 1;
int ml_prover = ON;
int global = OFF;

int kill_at_proof = OFF;

int normal_renaming = ON;
int mild_renaming = OFF;             
int strong_renaming = OFF;
int conjunction_renaming = OFF;

int modal_negative = OFF;
int modal_positive = OFF;
int strong_modal_positive = OFF;
int strong_modal_negative = OFF;
int improved_snf_plus = OFF;
int prenex = OFF;
int antiprenex = OFF;
int cnf = OFF;
int small_cnf = OFF;
int global2local = OFF;
int mlbound = 0;

int nnfsimp = OFF;
int bnf = OFF;
int bnfsimp = OFF;
int simp_while_reading = OFF;

int satmle = OFF;
int mle = OFF;
int ple = OFF;
int ml_ple = OFF;
int early_ple = OFF;
int early_mlple = OFF;
int diamond_restricted_res = OFF;
int interleave_ires = OFF;

int propagate_box = OFF;
int propagate_dia = OFF;

int mres = OFF;
int ires = OFF;
int gen2 = OFF;
int unit = OFF;
int lhs_unit = OFF;

int order_level = NONE;
int process_by_level = OFF;
int literal_selection = SATURATE; 
int clause_selection = SHORTEST;

int forward_subsumption = OFF;
int backward_subsumption = OFF;
int sos_subsumption = OFF;
int full_check_repeated = OFF;

int populate_usable = OFF;

int satsolver = OFF;

/* global mutex variables for parallelisation */

pthread_mutex_t mutexnumclause;
pthread_mutex_t mutexnumtautologies;
pthread_mutex_t mutexnumfsubsumed;
pthread_mutex_t mutexnumbsubsumed;
pthread_mutex_t mutexnumproofs;
pthread_mutex_t mutexpnodes;
pthread_mutex_t mutexallclauses;
pthread_mutex_t mutexdeletedclauses;
pthread_mutex_t mutexproofs;
pthread_mutex_t mutexprops;

/* variables in tokeniser.l */

extern FILE *yyin;
extern int yylex_destroy();
extern void yyrestart( FILE *new_file );

extern int numtokens;
extern int numlines;
extern int numcolumns;
extern int inputsize;

/* global variables for parser.y */

extern int yy_scan_string(const char *);

extern int numerrors;
extern int numagents;
extern int numprops;

extern void symbol_table_init(void);

extern tnode *get_snf (int set, int subtype, int modal_level, tnode *s);

extern void snf_plus (void);
extern void snf_minus (void);

extern tnode *input_preprocessing (tnode *);
extern void preprocessing (int option);
extern void generate_def_clauses(void);
extern void preprocess_axioms(void);
extern int processing (int);
extern int processing_by_level (int);
extern int t_processing (int,int);

char *getBoxName (char *);

tnode *root; // pointer for the root of the syntatic tree
int newtemp; // number of new propositional symbols

extern void clear_hashes (void);
extern void free_clauses (void);
extern void clear_all (void);

extern void print_out (char *);
extern void print_short (void);
extern void print_very_short (void);
extern void print_kept_clauses (void);

extern int print_tree(tnode *s);
extern tnode *free_tree (tnode *s);
extern tnode *tree_hash(tnode *s);
extern void clean_ren_hash(void);
extern void print_ren_hash(void);
extern void print_dimacs_pclauses (hml_pclauses *set);
extern hml_pclauses *l_usable;
extern hml_pclauses *l_sos;

//extern void preprocess_axioms(void);
extern int do_initial(int);

extern void print_clauses (void);
extern void print_symbols_tables(void);
extern void print_dict(void);
extern int anchor_snf_local (tnode *root, int set, int mlevel);
extern void create_dict(tnode *root);

extern void delete_dict(void);

//extern void free_cnf_clauses();

int check_input(tnode *root) {
  int flag = 0;
  if (root->left->type == CONSTANT) {
    if (root->left->id == CTRUE) {
      flag = 1;
    }
    else if (root->left->id == CFALSE) {
	flag = 1;
	numproofs = 1;
      }
  }
  return flag;
}

int main(int argc, char* argv[]){

  int i = 1;
  int preprocessing_only = OFF;
  int pp_only = OFF;
  int snf_only = OFF;
  int snf_plus_only = OFF;
  
  int fromfile = 0, tofile = 0;

  /*
   Options in the configuration file are overriden by those in command line.
   Processing file first.
  */

  
  while (i < argc) {
    if (!strcmp(argv[i],"-c")) {
      yyin = fopen(argv[++i],"r");
      if (yyin == NULL) {
	printf(" Configuration file not found: %s\n", argv[i]);
	return 0;
      }
      else {
	configfile = OFF;
	yyparse();
	yyrestart(yyin);
	fclose(yyin);
	configfile = ON;
      }
    }
    i++;
  }

  /*
    Processing command line.
  */
  
  i = 1;

  while (i < argc) {
    if (!strcmp(argv[i],"-v")) verbose = atoi(argv[++i]);
    else if (!strcmp(argv[i],"-mlbound")) mlbound = atoi(argv[++i]);
    else if (!strcmp(argv[i],"-p")) {parallel_prover = ON; processors = atoi(argv[++i]);}
    else if (!strcmp(argv[i],"-maxproof")) maxproof = atoi(argv[++i]);
    else if (!strcmp(argv[i],"-time_stamp")) time_stamp = ON;
    else if (!strcmp(argv[i],"-b")) kill_at_proof = ON;
    else if (!strcmp(argv[i],"-ppi_only")) preprocessing_only = ON;
    else if (!strcmp(argv[i],"-pp_only")) pp_only = ON;
    else if (!strcmp(argv[i],"-snf_only")) snf_only = ON;
    else if (!strcmp(argv[i],"-snf_plus_only")) snf_plus_only = ON;
    /* Ignores the configuration file */
    else if (!strcmp(argv[i],"-c")) i++; 
    else if (!strcmp(argv[i],"-g")) {global = ON; ml_prover = OFF;} // global
    else if (!strcmp(argv[i],"-l")) {global = OFF; ml_prover = ON;} // local = mlevel
    else if (!strcmp(argv[i],"-unit")) unit = ON;
    else if (!strcmp(argv[i],"-lhs_unit")) {unit = ON; lhs_unit = ON;}
    else if (!strcmp(argv[i],"-ple")) ple = ON;
    else if (!strcmp(argv[i],"-mle")) mle = ON;
    else if (!strcmp(argv[i],"-early_ple")) early_ple = ON;
    else if (!strcmp(argv[i],"-early_mlple")) early_mlple = ON;
    else if (!strcmp(argv[i],"-mlple")) ml_ple = ON;
    else if (!strcmp(argv[i],"-satmle")) satmle = ON;
    else if (!strcmp(argv[i],"-propbox")) propagate_box = ON;
    else if (!strcmp(argv[i],"-propdia")) propagate_dia = ON;
    else if (!strcmp(argv[i],"-fsub")) forward_subsumption = ON;
    else if (!strcmp(argv[i],"-bsub")) backward_subsumption = ON;
    else if (!strcmp(argv[i],"-sos_sub")) sos_subsumption = ON;
    else if (!strcmp(argv[i],"-diares")) diamond_restricted_res = ON;
    else if (!strcmp(argv[i],"-full_check_repeated")) full_check_repeated = ON;
    else if (!strcmp(argv[i],"-sat")) literal_selection = SATURATE;
    else if (!strcmp(argv[i],"-ord")) literal_selection = ORDERED;
    else if (!strcmp(argv[i],"-neg")) literal_selection = NEGATIVE;
    else if (!strcmp(argv[i],"-pos")) literal_selection = POSITIVE;
    else if (!strcmp(argv[i],"-negord")) literal_selection = NEGORDERED;
    else if (!strcmp(argv[i],"-ordselect")) literal_selection = ORDSELECT;
    else if (!strcmp(argv[i],"-ordlevel_ascend")) order_level = ASCENDING;
    else if (!strcmp(argv[i],"-ordlevel_descend")) order_level = DESCENDING;
    else if (!strcmp(argv[i],"-ordlevel_shuffle")) order_level = SHUFFLE;
    else if (!strcmp(argv[i],"-short")) clause_selection = SHORTEST;
    else if (!strcmp(argv[i],"-new")) clause_selection = NEWEST;
    else if (!strcmp(argv[i],"-old")) clause_selection = OLDEST;
    else if (!strcmp(argv[i],"-smallest")) clause_selection = SMALLEST;
    else if (!strcmp(argv[i],"-greatest")) clause_selection = GREATEST;
    else if (!strcmp(argv[i],"-pchosen")) print_chosen = ON;
    else if (!strcmp(argv[i],"-pgen")) print_generated = ON;
    else if (!strcmp(argv[i],"-pdel")) print_deleted = ON;
    else if (!strcmp(argv[i],"-pproof")) print_proof = ON;
    else if (!strcmp(argv[i],"-pproofsize")) print_proof_size = ON;
    else if (!strcmp(argv[i],"-pproofmaxlevel")) print_proof_max = ON;
    else if (!strcmp(argv[i],"-pren")) print_renaming = ON;
    else if (!strcmp(argv[i],"-pkept")) print_kept = ON;
    else if (!strcmp(argv[i],"-plevels")) print_levels = ON;
    else if (!strcmp(argv[i],"-pnumclauses")) print_numclauses = ON;
    else if (!strcmp(argv[i],"-nnfsimp")) nnfsimp = ON;
    else if (!strcmp(argv[i],"-bnfsimp")) {bnf = ON; bnfsimp = ON; nnfsimp = ON;}
    else if (!strcmp(argv[i],"-simp_while_reading")) simp_while_reading = ON;
    else if (!strcmp(argv[i],"-normal_renaming")) {normal_renaming = ON; mild_renaming = OFF; strong_renaming = OFF;}
    else if (!strcmp(argv[i],"-limited_reuse_renaming")) {normal_renaming = OFF; mild_renaming = ON; strong_renaming = OFF;}
    else if (!strcmp(argv[i],"-extensive_reuse_renaming")) {normal_renaming = OFF; mild_renaming = OFF; strong_renaming = ON;}
    else if (!strcmp(argv[i],"-conjunct_renaming")) conjunction_renaming = ON;
    else if (!strcmp(argv[i],"-snf+")) modal_positive = ON;
    else if (!strcmp(argv[i],"-snf-")) modal_negative = ON;
    else if (!strcmp(argv[i],"-snf++")) strong_modal_positive = ON;
    else if (!strcmp(argv[i],"-snf--")) strong_modal_negative = ON;
    else if (!strcmp(argv[i],"-improved_extended_snf")) improved_snf_plus = ON;
    else if (!strcmp(argv[i],"-aprenex")) antiprenex = prenex + 1;
    else if (!strcmp(argv[i],"-prenex")) prenex = antiprenex + 1;
    else if (!strcmp(argv[i],"-cnf")) cnf = ON;
    else if (!strcmp(argv[i],"-small_cnf")) small_cnf = ON;
    else if (!strcmp(argv[i],"-global2local")) global2local = ON;
    else if (!strcmp(argv[i],"-ires")) ires = ON;
    else if (!strcmp(argv[i],"-interires")) interleave_ires = ON;
    else if (!strcmp(argv[i],"-mres")) mres = ON;
    else if (!strcmp(argv[i],"-gen2")) gen2 = ON;
    else if (!strcmp(argv[i],"-populate_non_negative")) populate_usable = NON_NEGATIVE;
    else if (!strcmp(argv[i],"-populate_non_positive")) populate_usable = NON_POSITIVE;
    else if (!strcmp(argv[i],"-populate_negative")) populate_usable = NEGATIVE;
    else if (!strcmp(argv[i],"-populate_positive")) populate_usable = POSITIVE;
    else if (!strcmp(argv[i],"-populate_max_lit_negative")) populate_usable = MAX_LIT_NEGATIVE;
    else if (!strcmp(argv[i],"-populate_max_lit_positive")) populate_usable =  MAX_LIT_POSITIVE;
    else if (!strcmp(argv[i],"-satsolver")) satsolver = ON;
    else if (!strcmp(argv[i],"-i")) {
      ++i;
      if (verbose > 0) {
	printf("\n From file: %s",argv[i]);
      }
      fromfile = 1;
      yyin=fopen(argv[i], "r");
      if (yyin == NULL) {
	  printf("\n Input file not found: %s\n",argv[i]);
	return 0;
      }
    }
    else if (!strcmp(argv[i],"-o")) {
      tofile = 1;
      out=fopen(argv[++i], "w");
      if (out == NULL) {
	printf("\n Could not open output file: %s\n",argv[i]);
	return 0;
      }
    }
    else if (!strcmp(argv[i],"-f")) {
      char *formula =  malloc(snprintf(NULL, 0, "sos(formulas). %s. end_of_list.", argv[++i]) + 1);
      sprintf(formula,"sos(formulas). %s. end_of_list.",argv[i]);
      yy_scan_string(formula);
      free(formula);
    }
    else {
      printf("\n Unknown flag: %s\n",argv[i]);
      return 0;
    }
    i++;
  }

  symbol_table_init();
  //print_out("INIT");
  
  yyparse();
  if (fromfile) fclose(yyin);
  yylex_destroy();

  formulasize = inputsize;
  mdepth = root->mdepth;
  clear_hashes();
  simp_while_reading = OFF;
  print_out("Parsing");
   
  if (numerrors != 0) {
    printf("\n Number of syntactical errors: %d\n",numerrors);
    exit(1);
  }
  else {
    root = input_preprocessing(root);
    if (check_input(root)) goto output;
    if (preprocessing_only) goto output;

    clausesize = formulasize;

    if (!normal_renaming)
      root = tree_hash(root);
    /*
      Create and init mutex variables after execution.
      Note that this is needed even if the prover is not running in parallel.
    */
    
    pthread_mutex_init(&mutexnumclause, NULL);
    pthread_mutex_init(&mutexnumtautologies, NULL);
    pthread_mutex_init(&mutexnumfsubsumed, NULL);
    pthread_mutex_init(&mutexnumbsubsumed, NULL);
    pthread_mutex_init(&mutexnumproofs, NULL);
    pthread_mutex_init(&mutexpnodes, NULL);
    pthread_mutex_init(&mutexallclauses, NULL);
    pthread_mutex_init(&mutexdeletedclauses, NULL);
    pthread_mutex_init(&mutexproofs, NULL);
    pthread_mutex_init(&mutexprops, NULL);

    /* numprops is reserved for t_0 */

    phase = SNF; // Do not remove. This changes the comparison function for formulae.
    
    if (global2local == ON) {
        newtemp = numprops;
	create_dict(root);
	if (print_renaming == ON) print_dict();
	anchor_snf_local(root,0,1);
	//	if (print_renaming == ON) print_dict();
    }
    else {
      newtemp = numprops + 1;
      get_snf(0,BOX,1,root);
      if (print_renaming == ON) print_ren_hash();
    }

    snfclausesize = clausesize;
    if (root != NULL)
      root = free_tree(root);
    print_out("SNF");    

    snfnumprops = newtemp - 2;
    snfnumclauses = numclause - 1;

    if (snf_only) goto output;

    //    generate_def_clauses();
    if (global2local == OFF) preprocess_axioms();
    preprocessing(0);

    if (modal_positive || strong_modal_positive) {
      snf_plus();
      //      generate_def_clauses();
      print_out("SNF_PLUS");
    }
    else if (modal_negative || strong_modal_negative) {
      snf_minus();
      //      generate_def_clauses();
      print_out("SNF_MINUS");
    }

    snfpostppprops = newtemp - 2;
    snfpostppclauses = numclause - 1;

    if (snf_plus_only) goto output;

    /*
    if (global2local == OFF) {
      generate_def_clauses();
      preprocess_axioms();
    }
    */
    
    preprocessing(1);

    if (pp_only) goto output;

    numinitialclauses = numclause;


    delete_dict();
    //    print_symbols_tables();
    if (!normal_renaming)
      clean_ren_hash();

    if (ires == ON && interleave_ires == ON)
      cycles = do_initial(cycles);
    
    if (parallel_prover)
      cycles = t_processing(0,processors);
    else if (process_by_level)
      cycles = processing_by_level(0);
    else cycles = processing(0);

    if (numproofs < maxproof && ires == ON) {
      cycles = do_initial(cycles);
    }

    /*
      Destroy mutex variables after execution
    */
  
    pthread_mutex_destroy(&mutexnumclause);
    pthread_mutex_destroy(&mutexnumtautologies);
    pthread_mutex_destroy(&mutexnumfsubsumed);
    pthread_mutex_destroy(&mutexnumbsubsumed);
    pthread_mutex_destroy(&mutexnumproofs);
    pthread_mutex_destroy(&mutexpnodes);
    pthread_mutex_destroy(&mutexallclauses);
    pthread_mutex_destroy(&mutexdeletedclauses);
    pthread_mutex_destroy(&mutexproofs);
    pthread_mutex_destroy(&mutexprops); 
  
  output:
    if (verbose > 0 && (print_generated || print_deleted || print_renaming || print_kept || ((print_proof || print_proof_size || print_proof_max) && numproofs > 0) || print_levels)) printf("\n");
    if (print_kept == ON) print_kept_clauses();
    if (print_numclauses == ON) printf("Number of clauses: %d\n", numclause - 1);
    if (print_levels == ON) printf("Number of levels: %d\n",numlevels);
    if (numproofs == 0)
      printf("\n Satisfiable.\n");
    else printf("\n Unsatisfiable.\n");
    if (verbose == 1) print_very_short();
    if (verbose == 2) {print_short(); print_very_short();}
  }

  //  print_symbols_tables();
  if (kill_at_proof) exit(0);
  
  // clean_all:
  if (print_kept == ON) print_kept_clauses();
  if (tofile) fclose(out);
  root = free_tree(root);
  clean_ren_hash();
  free_clauses();
  //  if (satsolver) free_cnf_clauses();
  clear_all();
  return 0;
}

