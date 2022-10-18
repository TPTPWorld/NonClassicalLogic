typedef struct {
  int renamed_by;
  int added_to_level;
} ren;
  
typedef struct {
  int operator;
  unsigned int value_number;
} formula_key;

typedef struct formula_hash {
  formula_key key;
  unsigned int size;
  unsigned int numrepeated;
  formulalist *list;
  UT_hash_handle hf;
} formula_hash;
