/* Options for the prover */

#define ON  1
#define OFF 0

/* Clause selection options */

#define SHORTEST 0
#define NEWEST   1
#define OLDEST   2
#define SMALLEST 3
#define GREATEST 4

/* Level selection options */

#define NONE 0
#define ASCENDING 1
#define DESCENDING 2
#define SHUFFLE 3

/* Literal selection options */

#define ORDERED      0
#define NEGATIVE     1
#define POSITIVE     2
#define SATURATE     3
#define NEGORDERED   4
#define ORDSELECT    5

/* Pre-processing options */

#define NON_NEGATIVE 400
#define NON_POSITIVE 401
#define MAX_LIT_POSITIVE 402
#define MAX_LIT_NEGATIVE 403

/* Logic Symbols */

#define PROP        0
#define BOX         1
#define DIAMOND     2
#define NEGATION    3
#define CONJUNCTION 4
#define DISJUNCTION 5
#define IMPLICATION 6
#define DOUBLEIMP   7
#define CONSTANT    8

/* Axioms */

#define FOUR1        (1 << 1)
#define FOUR2        (1 << 2)
#define FOUR         (FOUR1 | FOUR2)
#define EUC1         (1 << 3)
#define EUC2         (1 << 4)
#define FIVE         (EUC1 | EUC2)
#define T            (1 << 5)
#define SYM          (1 << 6)
#define SER          (1 << 7)
#define RES_0001     (1 << 8)
#define RES_0001_MOD (1 << 9)
#define RES_0010     (1 << 10)
#define RES_0010_MOD (1 << 11)
#define RES_0011     (1 << 12)
#define RES_0011_MOD (1 << 13)
#define RES_0111     (1 << 14)
#define RES_1000     (1 << 15)
#define RES_1010     (1 << 16)
#define RES_1101     (1 << 17)
#define RES_1111     (1 << 18)
#define RES_1011     (1 << 19)
#define RES_1110     (1 << 20)
#define AXIOM        (1 << 21)
#define DEFINITION   (1 << 22)
#define MCK          (1 << 23)
#define B4           (FOUR1 | SYM)
#define K45          (FOUR1 | FIVE)


// Constants

#define CSTART      0
#define CTRUE       1
#define CFALSE     -1

// Sets

#define SETF       -30
#define SETC       -31
#define SOS        -40
#define USABLE     -41

// Clauses

#define INITIAL    -50
#define LITERAL    -51
#define MNEGATIVE  -52
#define MPOSITIVE  -53

// Inference Rules and other justifications

#define PLE          100 // Pure Literal Elimination
#define BACKSUBSUMED 101 // Back Subsumption
#define SUBSUMED     102 // Subsumption
#define UNIT         103 // Unit Resolution
#define REPEATED     104
#define LHSUNIT      105 // Unit Resolution on the left hand side of modal clauses
#define UNITGEN1     106 // Unit Resolution on the right hand side of negative modal clauses
#define UNITGEN3     107 // Unit Resolution on the right hand side of positive modal clauses
#define RETIRED      108 // Modal clause is moved to modal usable
#define SNF          001 // From transformation
#define GIVEN        201 // As given by user
#define TAUTOLOGY    202 
#define MRES         203
#define GEN1         204
#define GEN2         205
#define GEN3         206
#define LRES         207
#define IRES1        208
#define IRES2        209
#define MLPLE        210
#define SNF_PLUS     211
#define SNF_MINUS    212
#define SAT          213
#define MLE          214
#define PROPUNIQUEDIA   215
#define PROPUNIQUEBOX   216
#define SIMP         217
#define BOXFALSE     218
#define SAT_SOLVER 219
#define FORWARD_SUBSUMES     302 // Subsumption
#define FORWARD_SUBSUMED     303 // Subsumption
