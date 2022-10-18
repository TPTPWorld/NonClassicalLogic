typedef struct hclauses {
  int id;
  tclause *clause;
  UT_hash_handle hid;
} hclauses;

typedef struct hsizeclauses {
  int size;
  clauseslist *list;
  UT_hash_handle hsize;
} hsizeclauses;

typedef struct hmaxclauses {
  int max;
  hsizeclauses *size;
  UT_hash_handle hmax;
} hmaxclauses;

typedef struct hmaxlitclauses {
  int max;
  clauseslist *list;
  UT_hash_handle hmax;
} hmaxlitclauses;
  
typedef struct htypeclauses {
  int type;
  hmaxlitclauses *lit;
  //  clauseslist *list;
  UT_hash_handle htype;
} htypeclauses;

typedef struct hagentclauses {
  int id;
  htypeclauses *type;
  UT_hash_handle hid;
} hagentclauses;

typedef struct hml_pclauses {
  int ml;
  clauseslist *list_selection;
  clauseslist *last_selection; // this is just a pointer for the last element in list_selection 
  hmaxclauses *max;
  UT_hash_handle hml;
} hml_pclauses;

typedef struct hml_mclauses {
  int ml;
  hagentclauses *id;
  UT_hash_handle hml;
} hml_mclauses;

