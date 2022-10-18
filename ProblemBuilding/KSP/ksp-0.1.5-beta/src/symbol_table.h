#include <string.h>
#include <stdlib.h>  /* malloc */
#include "uthash.h"

#define MAX_INT 2147483646

// Polarity of propositional symbols

#define POSITIVEP    1
#define NEGATIVEP    -1

// Classification of clauses

#define POSITIVEC     1
#define NEGATIVEC    -1
#define MIXEDC        0

// Ordering

#define HIGH  1
#define LOW   0

typedef struct literalslist {
  int literal;
  struct literalslist *next;
} literalslist;


typedef struct literal_list {
  struct tnode *literal;
  struct literal_list *next;
} literal_list;


typedef struct tclause {
  int number;
  int type; // literal or modal (negative, positive)
  int subtype; // this is the unique identifier of the diamond a clause is in the scope of
  int numdiamond; //this is needed to record the number of the diamond
  int size;
  int max_literal;
  int min_literal;
  int modal_level;
  int agent;
  int class;
  int left;
  int propagated;
  struct literalslist *right;
  struct justification *just;
  struct justification *deleted;
} tclause;


typedef struct clauseslist {
  int clause_number;
  tclause *clause_pointer;
  struct clauseslist *next;
} clauseslist;

typedef struct justification {
  int rule;
  struct clauseslist *parents;
  struct literalslist *literals;
} justification;


typedef struct clausesid {
  int id;
  UT_hash_handle hid;
} clausesid;

typedef struct hml_clauses {
  int ml;
  int occur_positive;
  int occur_negative;
  clausesid *positive;
  clausesid *negative;
  UT_hash_handle hml;
} hml_clauses;


typedef struct hptr_nodes {
  struct tnode *node;
  int deleted;
  UT_hash_handle hptr;
} hptr_nodes;
  
typedef struct hml_props {
  int ml;
  int ml_occur_positive;
  int ml_occur_negative;
  literal_list *positive;
  literal_list *negative;
  UT_hash_handle hml;
} hml_props;

typedef struct prop_node {
  char *name;
  int id;
  int isdef;
  int defpos;
  int defneg;
  int occur;
  int occur_positive;
  int occur_negative;
  int renposby;
  int rennegby;
  hptr_nodes *positions;
  hml_props *hmlpropsposition; // for propositional symbols
  unsigned int value_number;
  hml_clauses *clauses;
  UT_hash_handle hh;
  UT_hash_handle hid;
} prop_node;

typedef struct agent_node {
  char *name; //this is the concat of name and index of the modal operator
  int id;
  int occur;
  unsigned int axioms;
  int maxleveldia;
  int numdifdia;
  int numdifbox;
  UT_hash_handle hh;
  UT_hash_handle hid;
} agent_node;

