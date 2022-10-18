typedef struct mlevels {
  int mlevel;
  struct mlevels *next;
} mlevels;
  
typedef struct formulalist {
  int mdepth;
  int mlevel;
  int renamed_by;
  mlevels *levels_added;
  mlevels *levels_occur;
  int definition_added;
  unsigned int value_number;
  struct tnode *formula;
  struct tnode *parent;
  struct formulalist *next;
} formulalist;
  
typedef struct tnode {
  int type;
  int id;
  int numdiamond;
  int mdepth;
  int mlevel;
  int polarity;
  int renamed_by;
  int definition_added;
  int pfunction;
  int npfunction;
  int rfunction;
  int afactor;
  int bfactor;
  int distribute;
  int b2k_added;
  unsigned int value_number;
  struct tnode *left;
  struct tnode *right;
  struct formulalist *list;
  struct tnode *parent;
} tnode;
