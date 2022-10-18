/* A Bison parser, made by GNU Bison 3.7.4.  */

/* Skeleton implementation for Bison GLR parsers in C

   Copyright (C) 2002-2015, 2018-2020 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C GLR parser skeleton written by Paul Hilfinger.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30704

/* Bison version string.  */
#define YYBISON_VERSION "3.7.4"

/* Skeleton name.  */
#define YYSKELETON_NAME "glr.c"

/* Pure parsers.  */
#define YYPURE 1






/* First part of user prologue.  */
#line 53 "parser.y"

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "prover.h"
#include "uthash.h"

  
  /* flex functions */

  extern int yylex () ;
  extern char *yytext;
  extern FILE *yyin;

  /* Max stack size for parsing */
  
#define YYMAXDEPTH 136854775807
    
  /* symbol table functions in symbol_table.c" */

#define MAX(X, Y) (((X) > (Y)) ? (X) : (Y))

  /* prototype for the error function */

  void yyerror (char const *s);
 
  /* global variables from tokenizer.l */

  extern int numtokens;
  extern int numlines;
  extern int numcolumns;

  /* global variables for parser.y */

  int numerrors = 0;  
  int numagents = 1;
  int numprops = 2; // 1 and -1 are reserved for CTRUE an CFALSE, 0 is reserved for CSTART
  int inputsize = 0;

  /* global variables for the prover */

  extern int configfile;
  extern int verbose;
  extern int print_deleted;
  extern int print_chosen;
  extern int print_generated;
  extern int print_proof;
  extern int print_kept;
  extern int print_proof_size;
  extern int print_proof_max;
  extern int print_levels;
  extern int print_numclauses;
  extern int ml_prover;
  extern int bnf;
  extern int bnfsimp;
  extern int nnfsimp;
  extern int simp_while_reading;
  extern int normal_renaming;
  extern int mild_renaming;             
  extern int strong_renaming;
  extern int modal_positive;
  extern int modal_negative;
  extern int conjunction_renaming;
  extern int strong_modal_positive;
  extern int strong_modal_negative;
  extern int improved_snf_plus;
  extern int prenex;
  extern int antiprenex;
  extern int cnf;
  extern int small_cnf;
  extern int unit;
  extern int lhs_unit;
  extern int ple;
  extern int mle;
  extern int early_ple;
  extern int early_mlple;
  extern int ml_ple;
  extern int propagate_box;
  extern int propagate_dia;
  extern int satmle;
  extern int literal_selection;
  extern int order_level;
  extern int clause_selection;
  extern int forward_subsumption;
  extern int backward_subsumption;
  extern int sos_subsumption;
  extern int full_check_repeated;
  extern int diamond_restricted_res;
  extern int maxproof;
  extern int global;
  extern int parallel_prover;
  extern int processors;
  extern int ires;
  extern int interleave_ires;
  extern int mres;
  extern int gen2;
  extern int populate_usable;
  extern int satsolver;
  extern int process_by_level;
  extern int global2local;

    

#line 162 "parser.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.tab.h"

/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_TOBOX = 3,                      /* TOBOX  */
  YYSYMBOL_TODIA = 4,                      /* TODIA  */
  YYSYMBOL_5_modal_operator_delimiter_open_ = 5, /* "modal operator delimiter (open)"  */
  YYSYMBOL_TCBOX = 6,                      /* TCBOX  */
  YYSYMBOL_TCDIA = 7,                      /* TCDIA  */
  YYSYMBOL_8_modal_operator_delimiter_close_ = 8, /* "modal operator delimiter (close)"  */
  YYSYMBOL_TIFF = 9,                       /* "double implication"  */
  YYSYMBOL_TIMPLY = 10,                    /* "implication"  */
  YYSYMBOL_TONLYIF = 11,                   /* "only if"  */
  YYSYMBOL_TOR = 12,                       /* "disjunction"  */
  YYSYMBOL_TAND = 13,                      /* "conjunction"  */
  YYSYMBOL_TNOT = 14,                      /* "negation"  */
  YYSYMBOL_TPOSSIBLE = 15,                 /* "diamond operator"  */
  YYSYMBOL_TNECESSARY = 16,                /* "box operator"  */
  YYSYMBOL_TNAME = 17,                     /* "identifier"  */
  YYSYMBOL_TNUMBER = 18,                   /* "number"  */
  YYSYMBOL_TSTART = 19,                    /* TSTART  */
  YYSYMBOL_TTRUE = 20,                     /* TTRUE  */
  YYSYMBOL_TFALSE = 21,                    /* "constant"  */
  YYSYMBOL_TSET = 22,                      /* "set option command"  */
  YYSYMBOL_TDOT = 23,                      /* "."  */
  YYSYMBOL_TCOMMA = 24,                    /* ","  */
  YYSYMBOL_TCLAUSES = 25,                  /* "clauses"  */
  YYSYMBOL_TFORMULAS = 26,                 /* "formulas"  */
  YYSYMBOL_TSOS = 27,                      /* "sos"  */
  YYSYMBOL_TUSABLE = 28,                   /* "usable"  */
  YYSYMBOL_TEND = 29,                      /* "end of list"  */
  YYSYMBOL_TLPAREN = 30,                   /* "("  */
  YYSYMBOL_TRPAREN = 31,                   /* ")"  */
  YYSYMBOL_YYACCEPT = 32,                  /* $accept  */
  YYSYMBOL_file = 33,                      /* file  */
  YYSYMBOL_declarations = 34,              /* declarations  */
  YYSYMBOL_declaration = 35,               /* declaration  */
  YYSYMBOL_option = 36,                    /* option  */
  YYSYMBOL_axioms = 37,                    /* axioms  */
  YYSYMBOL_sets = 38,                      /* sets  */
  YYSYMBOL_set = 39,                       /* set  */
  YYSYMBOL_clauses = 40,                   /* clauses  */
  YYSYMBOL_clause = 41,                    /* clause  */
  YYSYMBOL_initial_clause = 42,            /* initial_clause  */
  YYSYMBOL_literal_clause = 43,            /* literal_clause  */
  YYSYMBOL_modal_clause = 44,              /* modal_clause  */
  YYSYMBOL_disjunction_literals = 45,      /* disjunction_literals  */
  YYSYMBOL_literal = 46,                   /* literal  */
  YYSYMBOL_formulas = 47,                  /* formulas  */
  YYSYMBOL_formula = 48,                   /* formula  */
  YYSYMBOL_propositions_list = 49,         /* propositions_list  */
  YYSYMBOL_modal_arg = 50,                 /* modal_arg  */
  YYSYMBOL_proposition = 51                /* proposition  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;


/* Default (constant) value used for initialization for null
   right-hand sides.  Unlike the standard yacc.c template, here we set
   the default value of $$ to a zeroed-out value.  Since the default
   value is undefined, this behavior is technically correct.  */
static YYSTYPE yyval_default;



#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif
#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YYFREE
# define YYFREE free
#endif
#ifndef YYMALLOC
# define YYMALLOC malloc
#endif
#ifndef YYREALLOC
# define YYREALLOC realloc
#endif

#ifdef __cplusplus
  typedef bool yybool;
# define yytrue true
# define yyfalse false
#else
  /* When we move to stdbool, get rid of the various casts to yybool.  */
  typedef signed char yybool;
# define yytrue 1
# define yyfalse 0
#endif

#ifndef YYSETJMP
# include <setjmp.h>
# define YYJMP_BUF jmp_buf
# define YYSETJMP(Env) setjmp (Env)
/* Pacify Clang and ICC.  */
# define YYLONGJMP(Env, Val)                    \
 do {                                           \
   longjmp (Env, Val);                          \
   YY_ASSERT (0);                               \
 } while (yyfalse)
#endif

#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* The _Noreturn keyword of C11.  */
#ifndef _Noreturn
# if (defined __cplusplus \
      && ((201103 <= __cplusplus && !(__GNUC__ == 4 && __GNUC_MINOR__ == 7)) \
          || (defined _MSC_VER && 1900 <= _MSC_VER)))
#  define _Noreturn [[noreturn]]
# elif (!defined __cplusplus                     \
        && (201112 <= (defined __STDC_VERSION__ ? __STDC_VERSION__ : 0)  \
            || 4 < __GNUC__ + (7 <= __GNUC_MINOR__) \
            || (defined __apple_build_version__ \
                ? 6000000 <= __apple_build_version__ \
                : 3 < __clang_major__ + (5 <= __clang_minor__))))
   /* _Noreturn works as-is.  */
# elif 2 < __GNUC__ + (8 <= __GNUC_MINOR__) || 0x5110 <= __SUNPRO_C
#  define _Noreturn __attribute__ ((__noreturn__))
# elif 1200 <= (defined _MSC_VER ? _MSC_VER : 0)
#  define _Noreturn __declspec (noreturn)
# else
#  define _Noreturn
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  12
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   281

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  32
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  20
/* YYNRULES -- Number of rules.  */
#define YYNRULES  75
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  156
/* YYMAXRHS -- Maximum number of symbols on right-hand side of rule.  */
#define YYMAXRHS 9
/* YYMAXLEFT -- Maximum number of symbols to the left of a handle
   accessed by $0, $-1, etc., in any rule.  */
#define YYMAXLEFT 0

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   286

/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31
};

#if YYDEBUG
/* YYRLINE[YYN] -- source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   219,   219,   222,   226,   230,   236,   237,   238,   242,
     245,   327,   339,   382,   398,   410,   413,   414,   421,   430,
     432,   439,   448,   457,   466,   478,   486,   490,   503,   507,
     511,   515,   518,   527,   536,   549,   566,   579,   594,   606,
     623,   636,   651,   665,   676,   682,   690,   691,   700,   704,
     708,   720,   727,   734,   741,   749,   767,   773,   789,   807,
     817,   830,   846,   864,   874,   885,   889,   893,   896,   905,
     916,   917,   920,   936,   943,   951
};
#endif

#define YYPACT_NINF (-78)
#define YYTABLE_NINF (-73)

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     111,   -29,   -18,   -15,    26,    13,   -78,    34,   -78,    42,
      27,    94,   -78,    90,   113,   -78,    31,    36,    19,    61,
      63,    74,    83,   -78,    34,   -78,   -78,   -78,    45,    49,
     137,   -78,    93,   133,   134,   152,   143,   -78,    45,   -78,
     -78,   148,   203,   107,   203,   107,    45,   -78,   159,   154,
     260,   -78,   171,   172,   -78,   243,   157,   -78,   -78,   -78,
     -78,   176,   173,   -78,   -78,    65,   118,   191,   128,   128,
     -78,   -78,   191,   174,   228,   -78,   175,   178,   -78,   -78,
     -78,   -78,   243,   243,     4,   -78,   215,   260,    87,   191,
     187,   191,   189,   -78,    -6,   -78,   191,   -78,   191,    11,
     149,   191,   191,   191,   191,   191,   229,   170,   176,   176,
     -78,   179,   -78,   -78,    79,   144,   251,   251,   -78,   191,
     -78,   191,   -78,   -78,   -78,   180,   228,   241,    76,   147,
     196,   -78,   190,   192,   -78,   260,   208,   260,   211,   -78,
     260,   -78,   260,   -78,   -78,   -78,   -78,   -78,   -78,   260,
     -78,   260,   -78,   -78,   -78,   -78
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,     0,     0,     0,     0,     7,     5,    19,     0,
       0,     0,     1,     3,     0,    15,     0,    10,     0,     0,
       0,     0,     0,     8,     4,    20,    71,    70,    16,     0,
       0,     9,     0,     0,     0,     0,    17,    14,    16,    68,
      11,    12,     0,     0,     0,     0,    16,    13,     0,     0,
       0,    72,    73,    74,    75,     0,     0,    26,    28,    29,
      30,    34,    44,    46,    67,     0,     0,     0,     0,     0,
      73,    74,     0,     0,    49,    66,     0,     0,    18,    69,
      31,    47,     0,     0,     0,    44,     0,     0,     0,     0,
       0,     0,     0,    56,    71,    64,     0,    60,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    32,    33,
      45,     0,    27,    43,     0,     0,     0,     0,    59,     0,
      63,     0,    62,    58,    65,     0,    50,    51,    52,    53,
      54,    55,     0,     0,    23,     0,     0,     0,     0,    40,
       0,    36,     0,    57,    61,    21,    24,    22,    38,     0,
      42,     0,    39,    35,    37,    41
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -78,   -78,   -78,   206,   -78,   -28,   212,   213,   184,   -77,
     -78,   -78,   -78,   -44,   -36,   186,   -35,   -78,   -38,   -42
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     4,     5,     6,    18,    37,     7,     8,    56,    57,
      58,    59,    60,    61,    62,    73,    74,    41,    29,    75
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      63,     9,    63,   -72,   -72,   -72,   -72,   -72,    63,   112,
      47,    84,    10,    63,    81,    11,    87,   -72,    78,    85,
     101,   102,   103,   104,   105,   -72,    12,    90,    92,   112,
      96,    98,    93,    95,    97,   110,    13,    99,   108,   109,
      63,    63,   124,    15,    63,    63,    85,    85,    26,    27,
      31,   113,    19,    20,   118,    28,   120,    14,    16,    17,
      30,   122,    36,   123,    63,   126,   127,   128,   129,   130,
     131,    89,   126,    38,    63,    63,   136,   138,   140,   142,
     139,   141,    26,    27,   143,   135,   144,   103,   104,   105,
     114,   115,    32,    63,    33,    63,    26,    27,    63,   148,
      63,   150,   116,   117,   152,    34,   153,    63,    64,    63,
      65,    66,     1,   154,    35,   155,    42,     2,     3,    21,
      22,    67,    68,    69,    51,    91,    70,    71,    54,    64,
     -48,    65,    66,     1,    -6,    26,    27,    72,     2,     3,
       2,     3,    67,    68,    69,    94,    27,    70,    71,    54,
      64,   137,    65,    66,    39,    40,    43,    44,    72,   104,
     105,    26,    27,    67,    68,    69,    51,    46,    70,    71,
      54,    64,    48,    65,    66,    45,    79,    80,   125,    72,
      86,    82,    83,    88,    67,    68,    69,    51,    87,    70,
      71,    54,    64,   119,    65,    66,   121,   100,   106,   133,
      72,   107,   134,   145,    49,    67,    68,    69,    51,   105,
      70,    71,    54,   146,   149,   147,    49,    50,   151,    23,
      51,    72,    52,    53,    54,    24,   -25,    25,    76,    50,
      49,    77,    51,    55,    52,    53,    54,   101,   102,   103,
     104,   105,     0,    50,   111,    55,    51,     0,    52,    53,
      54,   102,   103,   104,   105,     0,     0,    50,   132,    55,
      51,     0,    70,    71,    54,    50,     0,     0,    94,    27,
      70,    71,    54,    55,    50,     0,     0,    51,     0,    70,
      71,    54
};

static const yytype_int16 yycheck[] =
{
      42,    30,    44,     9,    10,    11,    12,    13,    50,    86,
      38,    55,    30,    55,    50,    30,    12,    23,    46,    55,
       9,    10,    11,    12,    13,    31,     0,    65,    66,   106,
      68,    69,    67,    68,    69,    31,    23,    72,    82,    83,
      82,    83,    31,     1,    86,    87,    82,    83,    17,    18,
      31,    87,    25,    26,    89,    24,    91,    23,    16,    17,
      24,    96,    17,    98,   106,   100,   101,   102,   103,   104,
     105,     6,   107,    24,   116,   117,   114,   115,   116,   117,
     116,   117,    17,    18,   119,     6,   121,    11,    12,    13,
       3,     4,    31,   135,    31,   137,    17,    18,   140,   135,
     142,   137,    15,    16,   140,    31,   142,   149,     1,   151,
       3,     4,    22,   149,    31,   151,    23,    27,    28,    25,
      26,    14,    15,    16,    17,     7,    19,    20,    21,     1,
      23,     3,     4,    22,    23,    17,    18,    30,    27,    28,
      27,    28,    14,    15,    16,    17,    18,    19,    20,    21,
       1,     7,     3,     4,    17,    18,    23,    23,    30,    12,
      13,    17,    18,    14,    15,    16,    17,    24,    19,    20,
      21,     1,    24,     3,     4,    23,    17,    23,    29,    30,
      23,    10,    10,    10,    14,    15,    16,    17,    12,    19,
      20,    21,     1,     6,     3,     4,     7,    23,    23,    29,
      30,    23,    23,    23,     1,    14,    15,    16,    17,    13,
      19,    20,    21,    23,     6,    23,     1,    14,     7,    13,
      17,    30,    19,    20,    21,    13,    23,    14,    44,    14,
       1,    45,    17,    30,    19,    20,    21,     9,    10,    11,
      12,    13,    -1,    14,    29,    30,    17,    -1,    19,    20,
      21,    10,    11,    12,    13,    -1,    -1,    14,    29,    30,
      17,    -1,    19,    20,    21,    14,    -1,    -1,    17,    18,
      19,    20,    21,    30,    14,    -1,    -1,    17,    -1,    19,
      20,    21
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    22,    27,    28,    33,    34,    35,    38,    39,    30,
      30,    30,     0,    23,    23,     1,    16,    17,    36,    25,
      26,    25,    26,    35,    38,    39,    17,    18,    24,    50,
      24,    31,    31,    31,    31,    31,    17,    37,    24,    17,
      18,    49,    23,    23,    23,    23,    24,    37,    24,     1,
      14,    17,    19,    20,    21,    30,    40,    41,    42,    43,
      44,    45,    46,    51,     1,     3,     4,    14,    15,    16,
      19,    20,    30,    47,    48,    51,    40,    47,    37,    17,
      23,    46,    10,    10,    45,    46,    23,    12,    10,     6,
      50,     7,    50,    48,    17,    48,    50,    48,    50,    48,
      23,     9,    10,    11,    12,    13,    23,    23,    45,    45,
      31,    29,    41,    46,     3,     4,    15,    16,    48,     6,
      48,     7,    48,    48,    31,    29,    48,    48,    48,    48,
      48,    48,    29,    29,    23,     6,    50,     7,    50,    46,
      50,    46,    50,    48,    48,    23,    23,    23,    46,     6,
      46,     7,    46,    46,    46,    46
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_int8 yyr1[] =
{
       0,    32,    33,    33,    33,    33,    34,    34,    34,    35,
      36,    36,    36,    36,    36,    36,    37,    37,    37,    38,
      38,    39,    39,    39,    39,    40,    40,    40,    41,    41,
      41,    41,    42,    43,    43,    44,    44,    44,    44,    44,
      44,    44,    44,    45,    45,    45,    46,    46,    47,    47,
      47,    48,    48,    48,    48,    48,    48,    48,    48,    48,
      48,    48,    48,    48,    48,    48,    48,    48,    49,    49,
      50,    50,    51,    51,    51,    51
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     3,     1,     0,     1,     3,     4,
       1,     3,     3,     4,     3,     1,     0,     1,     3,     1,
       3,     9,     9,     9,     9,     0,     1,     3,     1,     1,
       1,     2,     3,     3,     1,     5,     4,     6,     5,     5,
       4,     6,     5,     3,     1,     3,     1,     2,     0,     1,
       3,     3,     3,     3,     3,     3,     2,     4,     3,     3,
       2,     4,     3,     3,     2,     3,     1,     1,     1,     3,
       1,     1,     1,     1,     1,     1
};


/* YYDPREC[RULE-NUM] -- Dynamic precedence of rule #RULE-NUM (0 if none).  */
static const yytype_int8 yydprec[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0
};

/* YYMERGER[RULE-NUM] -- Index of merging function for rule #RULE-NUM.  */
static const yytype_int8 yymerger[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0
};

/* YYIMMEDIATE[RULE-NUM] -- True iff rule #RULE-NUM is not to be deferred, as
   in the case of predicates.  */
static const yybool yyimmediate[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0
};

/* YYCONFLP[YYPACT[STATE-NUM]] -- Pointer into YYCONFL of start of
   list of conflicting reductions corresponding to action entry for
   state STATE-NUM in yytable.  0 means no conflicts.  The list in
   yyconfl is terminated by a rule number of 0.  */
static const yytype_int8 yyconflp[] =
{
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     1,     3,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0
};

/* YYCONFL[I] -- lists of conflicting rule numbers, each terminated by
   0, pointed into by YYCONFLP.  */
static const short yyconfl[] =
{
       0,    73,     0,    74,     0
};




#undef yynerrs
#define yynerrs (yystackp->yyerrcnt)
#undef yychar
#define yychar (yystackp->yyrawchar)
#undef yylval
#define yylval (yystackp->yyval)
#undef yylloc
#define yylloc (yystackp->yyloc)


enum { YYENOMEM = -2 };

typedef enum { yyok, yyaccept, yyabort, yyerr } YYRESULTTAG;

#define YYCHK(YYE)                              \
  do {                                          \
    YYRESULTTAG yychk_flag = YYE;               \
    if (yychk_flag != yyok)                     \
      return yychk_flag;                        \
  } while (0)

/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   SIZE_MAX < YYMAXDEPTH * sizeof (GLRStackItem)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif

/* Minimum number of free items on the stack allowed after an
   allocation.  This is to allow allocation and initialization
   to be completed by functions that call yyexpandGLRStack before the
   stack is expanded, thus insuring that all necessary pointers get
   properly redirected to new data.  */
#define YYHEADROOM 2

#ifndef YYSTACKEXPANDABLE
#  define YYSTACKEXPANDABLE 1
#endif

#if YYSTACKEXPANDABLE
# define YY_RESERVE_GLRSTACK(Yystack)                   \
  do {                                                  \
    if (Yystack->yyspaceLeft < YYHEADROOM)              \
      yyexpandGLRStack (Yystack);                       \
  } while (0)
#else
# define YY_RESERVE_GLRSTACK(Yystack)                   \
  do {                                                  \
    if (Yystack->yyspaceLeft < YYHEADROOM)              \
      yyMemoryExhausted (Yystack);                      \
  } while (0)
#endif

/** State numbers. */
typedef int yy_state_t;

/** Rule numbers. */
typedef int yyRuleNum;

/** Item references. */
typedef short yyItemNum;

typedef struct yyGLRState yyGLRState;
typedef struct yyGLRStateSet yyGLRStateSet;
typedef struct yySemanticOption yySemanticOption;
typedef union yyGLRStackItem yyGLRStackItem;
typedef struct yyGLRStack yyGLRStack;

struct yyGLRState {
  /** Type tag: always true.  */
  yybool yyisState;
  /** Type tag for yysemantics.  If true, yysval applies, otherwise
   *  yyfirstVal applies.  */
  yybool yyresolved;
  /** Number of corresponding LALR(1) machine state.  */
  yy_state_t yylrState;
  /** Preceding state in this stack */
  yyGLRState* yypred;
  /** Source position of the last token produced by my symbol */
  YYPTRDIFF_T yyposn;
  union {
    /** First in a chain of alternative reductions producing the
     *  nonterminal corresponding to this state, threaded through
     *  yynext.  */
    yySemanticOption* yyfirstVal;
    /** Semantic value for this state.  */
    YYSTYPE yysval;
  } yysemantics;
};

struct yyGLRStateSet {
  yyGLRState** yystates;
  /** During nondeterministic operation, yylookaheadNeeds tracks which
   *  stacks have actually needed the current lookahead.  During deterministic
   *  operation, yylookaheadNeeds[0] is not maintained since it would merely
   *  duplicate yychar != YYEMPTY.  */
  yybool* yylookaheadNeeds;
  YYPTRDIFF_T yysize;
  YYPTRDIFF_T yycapacity;
};

struct yySemanticOption {
  /** Type tag: always false.  */
  yybool yyisState;
  /** Rule number for this reduction */
  yyRuleNum yyrule;
  /** The last RHS state in the list of states to be reduced.  */
  yyGLRState* yystate;
  /** The lookahead for this reduction.  */
  int yyrawchar;
  YYSTYPE yyval;
  /** Next sibling in chain of options.  To facilitate merging,
   *  options are chained in decreasing order by address.  */
  yySemanticOption* yynext;
};

/** Type of the items in the GLR stack.  The yyisState field
 *  indicates which item of the union is valid.  */
union yyGLRStackItem {
  yyGLRState yystate;
  yySemanticOption yyoption;
};

struct yyGLRStack {
  int yyerrState;


  int yyerrcnt;
  int yyrawchar;
  YYSTYPE yyval;

  YYJMP_BUF yyexception_buffer;
  yyGLRStackItem* yyitems;
  yyGLRStackItem* yynextFree;
  YYPTRDIFF_T yyspaceLeft;
  yyGLRState* yysplitPoint;
  yyGLRState* yylastDeleted;
  yyGLRStateSet yytops;
};

#if YYSTACKEXPANDABLE
static void yyexpandGLRStack (yyGLRStack* yystackp);
#endif

_Noreturn static void
yyFail (yyGLRStack* yystackp, const char* yymsg)
{
  if (yymsg != YY_NULLPTR)
    yyerror (yymsg);
  YYLONGJMP (yystackp->yyexception_buffer, 1);
}

_Noreturn static void
yyMemoryExhausted (yyGLRStack* yystackp)
{
  YYLONGJMP (yystackp->yyexception_buffer, 2);
}

/** Accessing symbol of state YYSTATE.  */
static inline yysymbol_kind_t
yy_accessing_symbol (yy_state_t yystate)
{
  return YY_CAST (yysymbol_kind_t, yystos[yystate]);
}

#if 1
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "TOBOX", "TODIA",
  "\"modal operator delimiter (open)\"", "TCBOX", "TCDIA",
  "\"modal operator delimiter (close)\"", "\"double implication\"",
  "\"implication\"", "\"only if\"", "\"disjunction\"", "\"conjunction\"",
  "\"negation\"", "\"diamond operator\"", "\"box operator\"",
  "\"identifier\"", "\"number\"", "TSTART", "TTRUE", "\"constant\"",
  "\"set option command\"", "\".\"", "\",\"", "\"clauses\"",
  "\"formulas\"", "\"sos\"", "\"usable\"", "\"end of list\"", "\"(\"",
  "\")\"", "$accept", "file", "declarations", "declaration", "option",
  "axioms", "sets", "set", "clauses", "clause", "initial_clause",
  "literal_clause", "modal_clause", "disjunction_literals", "literal",
  "formulas", "formula", "propositions_list", "modal_arg", "proposition", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#if YYDEBUG

# ifndef YYFPRINTF
#  define YYFPRINTF fprintf
# endif

# define YY_FPRINTF                             \
  YY_IGNORE_USELESS_CAST_BEGIN YY_FPRINTF_

# define YY_FPRINTF_(Args)                      \
  do {                                          \
    YYFPRINTF Args;                             \
    YY_IGNORE_USELESS_CAST_END                  \
  } while (0)

# define YY_DPRINTF                             \
  YY_IGNORE_USELESS_CAST_BEGIN YY_DPRINTF_

# define YY_DPRINTF_(Args)                      \
  do {                                          \
    if (yydebug)                                \
      YYFPRINTF Args;                           \
    YY_IGNORE_USELESS_CAST_END                  \
  } while (0)

/* This macro is provided for backward compatibility. */
# ifndef YY_LOCATION_PRINT
#  define YY_LOCATION_PRINT(File, Loc) ((void) 0)
# endif



/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                  \
  do {                                                                  \
    if (yydebug)                                                        \
      {                                                                 \
        YY_FPRINTF ((stderr, "%s ", Title));                            \
        yy_symbol_print (stderr, Kind, Value);        \
        YY_FPRINTF ((stderr, "\n"));                                    \
      }                                                                 \
  } while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;

static void yypstack (yyGLRStack* yystackp, YYPTRDIFF_T yyk)
  YY_ATTRIBUTE_UNUSED;
static void yypdumpstack (yyGLRStack* yystackp)
  YY_ATTRIBUTE_UNUSED;

#else /* !YYDEBUG */

# define YY_DPRINTF(Args) do {} while (yyfalse)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)

#endif /* !YYDEBUG */

#ifndef yystrlen
# define yystrlen(S) (YY_CAST (YYPTRDIFF_T, strlen (S)))
#endif

#ifndef yystpcpy
# if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#  define yystpcpy stpcpy
# else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
# endif
#endif

#ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYPTRDIFF_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYPTRDIFF_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (yyres)
    return yystpcpy (yyres, yystr) - yyres;
  else
    return yystrlen (yystr);
}
#endif


/** Fill in YYVSP[YYLOW1 .. YYLOW0-1] from the chain of states starting
 *  at YYVSP[YYLOW0].yystate.yypred.  Leaves YYVSP[YYLOW1].yystate.yypred
 *  containing the pointer to the next state in the chain.  */
static void yyfillin (yyGLRStackItem *, int, int) YY_ATTRIBUTE_UNUSED;
static void
yyfillin (yyGLRStackItem *yyvsp, int yylow0, int yylow1)
{
  int i;
  yyGLRState *s = yyvsp[yylow0].yystate.yypred;
  for (i = yylow0-1; i >= yylow1; i -= 1)
    {
#if YYDEBUG
      yyvsp[i].yystate.yylrState = s->yylrState;
#endif
      yyvsp[i].yystate.yyresolved = s->yyresolved;
      if (s->yyresolved)
        yyvsp[i].yystate.yysemantics.yysval = s->yysemantics.yysval;
      else
        /* The effect of using yysval or yyloc (in an immediate rule) is
         * undefined.  */
        yyvsp[i].yystate.yysemantics.yyfirstVal = YY_NULLPTR;
      s = yyvsp[i].yystate.yypred = s->yypred;
    }
}


/** If yychar is empty, fetch the next token.  */
static inline yysymbol_kind_t
yygetToken (int *yycharp, yyGLRStack* yystackp)
{
  yysymbol_kind_t yytoken;
  if (*yycharp == YYEMPTY)
    {
      YY_DPRINTF ((stderr, "Reading a token\n"));
      *yycharp = yylex (&yylval);
    }
  if (*yycharp <= YYEOF)
    {
      *yycharp = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YY_DPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (*yycharp);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }
  return yytoken;
}

/* Do nothing if YYNORMAL or if *YYLOW <= YYLOW1.  Otherwise, fill in
 * YYVSP[YYLOW1 .. *YYLOW-1] as in yyfillin and set *YYLOW = YYLOW1.
 * For convenience, always return YYLOW1.  */
static inline int yyfill (yyGLRStackItem *, int *, int, yybool)
     YY_ATTRIBUTE_UNUSED;
static inline int
yyfill (yyGLRStackItem *yyvsp, int *yylow, int yylow1, yybool yynormal)
{
  if (!yynormal && yylow1 < *yylow)
    {
      yyfillin (yyvsp, *yylow, yylow1);
      *yylow = yylow1;
    }
  return yylow1;
}

/** Perform user action for rule number YYN, with RHS length YYRHSLEN,
 *  and top stack item YYVSP.  YYLVALP points to place to put semantic
 *  value ($$), and yylocp points to place for location information
 *  (@$).  Returns yyok for normal return, yyaccept for YYACCEPT,
 *  yyerr for YYERROR, yyabort for YYABORT.  */
static YYRESULTTAG
yyuserAction (yyRuleNum yyn, int yyrhslen, yyGLRStackItem* yyvsp,
              yyGLRStack* yystackp,
              YYSTYPE* yyvalp)
{
  yybool yynormal YY_ATTRIBUTE_UNUSED = yystackp->yysplitPoint == YY_NULLPTR;
  int yylow;
  YYUSE (yyvalp);
  YYUSE (yyrhslen);
# undef yyerrok
# define yyerrok (yystackp->yyerrState = 0)
# undef YYACCEPT
# define YYACCEPT return yyaccept
# undef YYABORT
# define YYABORT return yyabort
# undef YYERROR
# define YYERROR return yyerrok, yyerr
# undef YYRECOVERING
# define YYRECOVERING() (yystackp->yyerrState != 0)
# undef yyclearin
# define yyclearin (yychar = YYEMPTY)
# undef YYFILL
# define YYFILL(N) yyfill (yyvsp, &yylow, (N), yynormal)
# undef YYBACKUP
# define YYBACKUP(Token, Value)                                              \
  return yyerror (YY_("syntax error: cannot back up")),     \
         yyerrok, yyerr

  yylow = 1;
  if (yyrhslen == 0)
    *yyvalp = yyval_default;
  else
    *yyvalp = yyvsp[YYFILL (1-yyrhslen)].yystate.yysemantics.yysval;
  switch (yyn)
    {
  case 2: /* file: %empty  */
#line 219 "parser.y"
     {
       root = NULL;
     }
#line 1310 "parser.tab.c"
    break;

  case 3: /* file: declarations "."  */
#line 223 "parser.y"
     {
       root = NULL;
     }
#line 1318 "parser.tab.c"
    break;

  case 4: /* file: declarations "." sets  */
#line 227 "parser.y"
     {
       root = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
     }
#line 1326 "parser.tab.c"
    break;

  case 5: /* file: sets  */
#line 231 "parser.y"
     {
       root = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
     }
#line 1334 "parser.tab.c"
    break;

  case 10: /* option: "identifier"  */
#line 246 "parser.y"
       {
	 if (!configfile) {
	   char *option = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	   // strategies that can be combined with others
	   if (!strcmp(option,"unit")) unit = ON;
	   else if (!strcmp(option,"lhs_unit")) {unit = ON; lhs_unit = ON;}
	   else if (!strcmp(option,"mlple")) ml_ple = ON;
	   else if (!strcmp(option,"ple")) ple = ON;
	   else if (!strcmp(option,"mle")) mle = ON;
	   else if (!strcmp(option,"satmle")) satmle = ON;
	   else if (!strcmp(option,"early_ple")) early_ple = ON;
	   else if (!strcmp(option,"early_mlple")) early_mlple = ON;
	   else if (!strcmp(option,"propbox")) propagate_box = ON;
	   else if (!strcmp(option,"propdia")) propagate_dia = ON;
	   else if (!strcmp(option,"diamond_restricted_resolution")) diamond_restricted_res = ON;
	   // subsumption
	   else if (!strcmp(option,"forward")) forward_subsumption = ON;
	   else if (!strcmp(option,"backward")) backward_subsumption = ON;
	   else if (!strcmp(option,"sos_subsumption")) sos_subsumption = ON;
	   else if (!strcmp(option,"full_check_repeated")) full_check_repeated = ON;
           // clause selection
	   else if (!strcmp(option,"newest")) clause_selection = NEWEST;
	   else if (!strcmp(option,"oldest")) clause_selection = OLDEST;
	   else if (!strcmp(option,"shortest")) clause_selection = SHORTEST;
	   else if (!strcmp(option,"smallest")) clause_selection = SMALLEST;
	   else if (!strcmp(option,"greatest")) clause_selection = GREATEST;
	   // literal selection
	   else if (!strcmp(option,"ordered")) literal_selection = ORDERED;
	   else if (!strcmp(option,"negative")) literal_selection = NEGATIVE;
	   else if (!strcmp(option,"positive")) literal_selection = POSITIVE;
	   else if (!strcmp(option,"negative_ordered")) literal_selection = NEGORDERED;
	   else if (!strcmp(option,"ordered_selection")) literal_selection = ORDSELECT;
	   // normal form
	   else if (!strcmp(option,"bnfsimp")) {bnf = ON; bnfsimp = ON; nnfsimp = ON;}
	   else if (!strcmp(option,"nnfsimp")) nnfsimp = ON;
	   else if (!strcmp(option,"simp_while_reading")) simp_while_reading = ON;
	   else if (!strcmp(option,"normal_renaming")) {normal_renaming = ON; mild_renaming = OFF; strong_renaming = OFF;}
	   else if (!strcmp(option,"limited_reuse_renaming")) {normal_renaming = OFF; mild_renaming = ON; strong_renaming = OFF;}
	   else if (!strcmp(option,"extensive_reuse_renaming")) {normal_renaming = OFF; mild_renaming = OFF; strong_renaming = ON;}
	   else if (!strcmp(option,"conjunct_renaming")) conjunction_renaming = ON;
	   else if (!strcmp(option,"snf+")) modal_positive = ON;
	   else if (!strcmp(option,"snf-")) modal_negative = ON;
	   else if (!strcmp(option,"snf++")) strong_modal_positive = ON;
	   else if (!strcmp(option,"snf--")) strong_modal_negative = ON;
	   else if (!strcmp(option,"improved_extended_snf")) improved_snf_plus = ON;
	   else if (!strcmp(option,"prenex")) prenex = antiprenex + 1;
	   else if (!strcmp(option,"antiprenex")) antiprenex = prenex + 1;
	   else if (!strcmp(option,"cnf")) cnf = ON;
	   else if (!strcmp(option,"small_cnf")) small_cnf = ON;
	   else if (!strcmp(option,"global2local")) global2local = ON;
	   // inference rules
	   else if (!strcmp(option,"ires")) ires = ON;
	   else if (!strcmp(option,"interleave_ires")) interleave_ires = ON;
	   else if (!strcmp(option,"mres")) mres = ON;
	   else if (!strcmp(option,"gen2")) gen2 = ON;
	   // prover modes
	
	   else if (!strcmp(option,"global")) {global = ON; ml_prover = OFF;}
	   else if (!strcmp(option,"local")) {global = OFF; ml_prover = ON;}
       else if (!strcmp(option,"satsolver")) {satsolver = ON;}
       else if (!strcmp(option, "process_by_level")) {process_by_level = ON;}
	   // printing options
	   else if (!strcmp(option,"print_chosen")) print_chosen = ON;
	   else if (!strcmp(option,"print_deleted")) print_deleted = ON;
	   else if (!strcmp(option,"print_proofs")) print_proof = ON;
	   else if (!strcmp(option,"print_generated")) print_generated = ON;
	   else if (!strcmp(option,"print_proof_size")) print_proof_size = ON;
	   else if (!strcmp(option,"print_proof_maxlevel")) print_proof_max = ON;
	   else if (!strcmp(option,"print_kept")) print_kept = ON;
	   else if (!strcmp(option,"print_levels")) print_levels = ON;
	   else if (!strcmp(option,"print_numclauses")) print_numclauses = ON;
	   else {
	     yyerror(option);
	     numerrors++;
	   }
	   free(option);

	 }
	 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));

       }
#line 1420 "parser.tab.c"
    break;

  case 11: /* option: "identifier" "," "number"  */
#line 328 "parser.y"
       {
       	 if (!configfile) {
	   char *option = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	   if (!strcmp(option,"verbosity")) verbose = atoi((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	   else if (!strcmp(option,"maxproof")) maxproof = atoi((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	   else if (!strcmp(option,"parallel")) {parallel_prover = ON; processors = atoi((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));}
	   free(option);
	 }
	 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
       }
#line 1436 "parser.tab.c"
    break;

  case 12: /* option: "identifier" "," propositions_list  */
#line 340 "parser.y"
       {
	 //if (!configfile) {
	   char *option = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	   if (!strcmp(option,"order")) {
	     process_ordering((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.prop_list));
	   }
	   else if (!strcmp(option,"populate_usable")) {
	     prop_list *populate = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.prop_list);
	     if (!strcmp(populate->prop,"non_negative")) 
	       populate_usable = NON_NEGATIVE;
	     else if (!strcmp(populate->prop,"non_positive"))
	       populate_usable = NON_POSITIVE;
	     if (!strcmp(populate->prop,"negative")) 
	       populate_usable = NEGATIVE;
	     else if (!strcmp(populate->prop,"positive"))
	       populate_usable = POSITIVE;
	     else if (!strcmp(populate->prop,"max_lit_positive"))
	       populate_usable = MAX_LIT_POSITIVE;
	     else if (!strcmp(populate->prop,"max_lit_negative"))
	       populate_usable = MAX_LIT_NEGATIVE;
	   }
	   else if (!strcmp(option,"order_level")) {
	     prop_list *option = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.prop_list);
	     if (!strcmp(option->prop,"ascending"))
	       order_level = ASCENDING;
	     else if (!strcmp(option->prop,"descending"))
	       order_level = DESCENDING;
	     if (!strcmp(option->prop,"shuffle"))
	       order_level = SHUFFLE;
	   }
	   prop_list *aux = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.prop_list);
	   while (aux != NULL) {
	     prop_list *auxtmp = aux->next;
	     if (aux->prop != NULL)
	       free(aux->prop);
	     free(aux);
	     aux = auxtmp;
	   }
	     //}
	   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	   free(option);
       }
#line 1483 "parser.tab.c"
    break;

  case 13: /* option: "box operator" modal_arg "," axioms  */
#line 383 "parser.y"
       {
	 if (!configfile) {
	   agent_node *a;
	   char *pname, *index;
	   pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.strValue));
	   if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue) != NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));} else index=NULL;
	   char * s = malloc(snprintf(NULL, 0, "%s %s", pname, index) + 1);
	   sprintf(s, "%s %s", pname, index);
	   a = insert_a_node(s);
	   a->occur -= 1;
	   a->axioms = (a->axioms | (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.axioms));
	   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.strValue));
	   if (index != NULL) free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	 }
       }
#line 1503 "parser.tab.c"
    break;

  case 14: /* option: "box operator" "," axioms  */
#line 399 "parser.y"
       {
	 if (!configfile) {
	   agent_node *a;
	   char *pname;
	   pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	   a = insert_a_node(pname);
	   a->occur -= 1;
	   a->axioms = (a->axioms | (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.axioms));
	   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	 }
       }
#line 1519 "parser.tab.c"
    break;

  case 15: /* option: error  */
#line 410 "parser.y"
               {numerrors++;}
#line 1525 "parser.tab.c"
    break;

  case 16: /* axioms: %empty  */
#line 413 "parser.y"
         {((*yyvalp).axioms)=0;}
#line 1531 "parser.tab.c"
    break;

  case 17: /* axioms: "identifier"  */
#line 415 "parser.y"
       {
	 if (!configfile) {
	   ((*yyvalp).axioms) = process_axiom((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	 }
       }
#line 1542 "parser.tab.c"
    break;

  case 18: /* axioms: "identifier" "," axioms  */
#line 422 "parser.y"
       {
	 if (!configfile) {
	   ((*yyvalp).axioms) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.axioms) | process_axiom((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	 }
       }
#line 1553 "parser.tab.c"
    break;

  case 19: /* sets: set  */
#line 431 "parser.y"
       {((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);}
#line 1559 "parser.tab.c"
    break;

  case 20: /* sets: sets "." set  */
#line 433 "parser.y"
       {
	 ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
         ((*yyvalp).tnode)->right = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode);
       }
#line 1568 "parser.tab.c"
    break;

  case 21: /* set: "sos" "(" "formulas" ")" "." formulas "." "end of list" "."  */
#line 440 "parser.y"
     {
       tnode *new = create_tnode(SETF,SETF,0,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),NULL,NULL);
       ((*yyvalp).tnode) = new;
       if (((*yyvalp).tnode) != NULL) {
	 ((*yyvalp).tnode)->id = SOS;
	 ((*yyvalp).tnode)->mdepth = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth;
       }
     }
#line 1581 "parser.tab.c"
    break;

  case 22: /* set: "usable" "(" "formulas" ")" "." formulas "." "end of list" "."  */
#line 449 "parser.y"
     {
       tnode *new = create_tnode(SETF,SETF,0,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),NULL,NULL);
       ((*yyvalp).tnode) = new;
       if (((*yyvalp).tnode) != NULL) {
	 ((*yyvalp).tnode)->id = USABLE;
	 ((*yyvalp).tnode)->mdepth = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth;
       }
     }
#line 1594 "parser.tab.c"
    break;

  case 23: /* set: "sos" "(" "clauses" ")" "." clauses "." "end of list" "."  */
#line 458 "parser.y"
     {
       tnode *new = create_tnode(SETC,SETC,0,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),NULL,NULL);
       ((*yyvalp).tnode) = new;
       if (((*yyvalp).tnode) != NULL) {
	 ((*yyvalp).tnode)->id = SOS;
	 ((*yyvalp).tnode)->mdepth = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth;
       }
     }
#line 1607 "parser.tab.c"
    break;

  case 24: /* set: "usable" "(" "clauses" ")" "." clauses "." "end of list" "."  */
#line 467 "parser.y"
     {
       tnode *new = create_tnode(SETC,SETC,0,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),NULL,NULL);
       ((*yyvalp).tnode) = new;
       if (((*yyvalp).tnode) != NULL) {
	 ((*yyvalp).tnode)->id = USABLE;
	 ((*yyvalp).tnode)->mdepth = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth;
       }
     }
#line 1620 "parser.tab.c"
    break;

  case 25: /* clauses: %empty  */
#line 478 "parser.y"
        {
	  tnode *newconst1 = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
	  tnode *newconst2 = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
	  formulalist *list = tree_to_list(DISJUNCTION,newconst2,NULL);
	  tnode *newdis = create_tnode(DISJUNCTION,DISJUNCTION,0,NULL,NULL,list);
	  tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,0,newconst1,newdis,NULL);
	  ((*yyvalp).tnode) = newimp;
	}
#line 1633 "parser.tab.c"
    break;

  case 26: /* clauses: clause  */
#line 487 "parser.y"
        {
	  ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	}
#line 1641 "parser.tab.c"
    break;

  case 27: /* clauses: clauses "." clause  */
#line 491 "parser.y"
        {
	  if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode) != NULL) {
	    int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	    formulalist *newlist = tree_to_list(CONJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode));
	    tnode *new = create_tnode(CONJUNCTION,CONJUNCTION,mdepth,NULL,NULL,newlist);
	    ((*yyvalp).tnode) = new;
	  }
	  else ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	}
#line 1655 "parser.tab.c"
    break;

  case 28: /* clause: initial_clause  */
#line 504 "parser.y"
        {
	  ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode); 
	}
#line 1663 "parser.tab.c"
    break;

  case 29: /* clause: literal_clause  */
#line 508 "parser.y"
        {
	  ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	}
#line 1671 "parser.tab.c"
    break;

  case 30: /* clause: modal_clause  */
#line 512 "parser.y"
        {
	 ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	}
#line 1679 "parser.tab.c"
    break;

  case 31: /* clause: error "."  */
#line 515 "parser.y"
                     {numerrors++;}
#line 1685 "parser.tab.c"
    break;

  case 32: /* initial_clause: TSTART "implication" disjunction_literals  */
#line 519 "parser.y"
                 {
		   inputsize += 2;
	           tnode *newst = create_tnode(CONSTANT,CSTART,0,NULL,NULL,NULL);
		   tnode *new = create_tnode(IMPLICATION,IMPLICATION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth,newst,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL);
		   ((*yyvalp).tnode) = new;
                 }
#line 1696 "parser.tab.c"
    break;

  case 33: /* literal_clause: TTRUE "implication" disjunction_literals  */
#line 528 "parser.y"
                 {
		   inputsize += 2;
	           tnode *newconst = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
		   prop_node *p = find_prop(CSTART);
		   insert_p_position(p,newconst);
		   tnode *new = create_tnode(IMPLICATION,IMPLICATION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth,newconst,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL);
		   ((*yyvalp).tnode) = new;
                 }
#line 1709 "parser.tab.c"
    break;

  case 34: /* literal_clause: disjunction_literals  */
#line 537 "parser.y"
                 {
	           //tnode *newconst = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
		   //prop_node *p = find_prop(CTRUE);
		   //insert_p_position(p,newconst);
		   //tnode *new = create_tnode(IMPLICATION,IMPLICATION,$1->mdepth,newconst,$1,NULL);
		   //$$ = new;
		   ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
		 }
#line 1722 "parser.tab.c"
    break;

  case 35: /* modal_clause: literal "implication" "box operator" modal_arg literal  */
#line 550 "parser.y"
               {
		inputsize += 2;
	        agent_node *a;
                char *pname, *index;
                pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
                if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));} else index=NULL;
                char *s = malloc(snprintf(NULL, 0, "%s %s", pname, index) + 1);
	        sprintf(s, "%s %s", pname, index);
	        a=insert_a_node(s);
	        tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode)->mdepth);
		tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode),new,NULL);
		((*yyvalp).tnode) = newimp;
		free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
		if (index != NULL) free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	       }
#line 1743 "parser.tab.c"
    break;

  case 36: /* modal_clause: literal "implication" "box operator" literal  */
#line 567 "parser.y"
               { 
		 inputsize += 2;
		 agent_node *a;
		 char *pname;
		 pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
		 a=insert_a_node(pname);
		 tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
		 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	       }
#line 1760 "parser.tab.c"
    break;

  case 37: /* modal_clause: literal "implication" TOBOX modal_arg TCBOX literal  */
#line 580 "parser.y"
               { 
		 inputsize += 2;
		 agent_node *a;
		 char *index;
		 if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));} else index=NULL;
		 char *s = malloc(snprintf(NULL, 0, "box %s", index) + 1);
		 sprintf(s, "box %s", index);
		 a=insert_a_node(s);
		 tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
		 if (index != NULL) free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	       }
#line 1779 "parser.tab.c"
    break;

  case 38: /* modal_clause: literal "implication" TOBOX TCBOX literal  */
#line 595 "parser.y"
               {
		 inputsize += 2;
		 agent_node *a;
		 char * s = malloc(snprintf(NULL, 0, "box") + 1);
		 sprintf(s, "box");	  
		 a=insert_a_node(s);
		 tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
	       }
#line 1795 "parser.tab.c"
    break;

  case 39: /* modal_clause: literal "implication" "diamond operator" modal_arg literal  */
#line 607 "parser.y"
               { 
		 inputsize += 2;
		 agent_node *a;
		 char *pname, *index;
		 pname = getBoxName(strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue)));
		 if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));} else index=NULL;
		 char *s = malloc(snprintf(NULL, 0, "%s %s", pname, index) + 1);
		 sprintf(s, "%s %s", pname, index);
		 a=insert_a_node(s);
		 tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth + 1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
		 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
		 if (index != NULL) free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	       }
#line 1816 "parser.tab.c"
    break;

  case 40: /* modal_clause: literal "implication" "diamond operator" literal  */
#line 624 "parser.y"
               { 
		 inputsize += 2;
		 agent_node *a;
		 char *pname;
		 pname = getBoxName(strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue)));
		 a = insert_a_node(pname);
		 tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth + 1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-3)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
		 free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	       }
#line 1833 "parser.tab.c"
    break;

  case 41: /* modal_clause: literal "implication" TODIA modal_arg TCDIA literal  */
#line 637 "parser.y"
               { 
		 inputsize += 2;
		 agent_node *a;
		 char *index;
		 if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));} else index=NULL;
		 char *s = malloc(snprintf(NULL, 0, "box %s", index) + 1);
		 sprintf(s, "box %s", index);
		 a=insert_a_node(s);
		 tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-5)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
		 if (index != NULL) free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	       }
#line 1852 "parser.tab.c"
    break;

  case 42: /* modal_clause: literal "implication" TODIA TCDIA literal  */
#line 652 "parser.y"
               {
		 inputsize += 2;
		 agent_node *a;
		 char *s = malloc(snprintf(NULL, 0, "box") + 1);
		 sprintf(s, "box");	  
		 a=insert_a_node(s);
		 tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
		 int md = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode)->mdepth);
		 tnode *newimp = create_tnode(IMPLICATION,IMPLICATION,md,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-4)].yystate.yysemantics.yysval.tnode),new,NULL);
		 ((*yyvalp).tnode) = newimp;
	       }
#line 1868 "parser.tab.c"
    break;

  case 43: /* disjunction_literals: disjunction_literals "disjunction" literal  */
#line 666 "parser.y"
                     {
		       inputsize += 1;
		       if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode) != NULL) {
                         int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
			 formulalist *list = tree_to_list(DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode));
			 tnode *new = create_tnode(DISJUNCTION,DISJUNCTION,mdepth,NULL,NULL,list);
			 ((*yyvalp).tnode) = new;
		       }
		       else ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
		     }
#line 1883 "parser.tab.c"
    break;

  case 44: /* disjunction_literals: literal  */
#line 677 "parser.y"
                     {
		       formulalist *list = tree_to_list(DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL);
		       tnode *new = create_tnode(DISJUNCTION,DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth,NULL,NULL,list);
		       ((*yyvalp).tnode) = new;
		     }
#line 1893 "parser.tab.c"
    break;

  case 45: /* disjunction_literals: "(" disjunction_literals ")"  */
#line 683 "parser.y"
                     {
		       formulalist *list = tree_to_list(DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.tnode),NULL);
		       tnode *new = create_tnode(DISJUNCTION,DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.tnode)->mdepth,NULL,NULL,list);
		       ((*yyvalp).tnode) = new;
		     }
#line 1903 "parser.tab.c"
    break;

  case 46: /* literal: proposition  */
#line 690 "parser.y"
                      {((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);}
#line 1909 "parser.tab.c"
    break;

  case 47: /* literal: "negation" literal  */
#line 692 "parser.y"
        {
	  inputsize += 1;
	  tnode *new = create_tnode(NEGATION,NEGATION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
        }
#line 1919 "parser.tab.c"
    break;

  case 48: /* formulas: %empty  */
#line 700 "parser.y"
         {
	   tnode *new = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
	   ((*yyvalp).tnode) = new;
	 }
#line 1928 "parser.tab.c"
    break;

  case 49: /* formulas: formula  */
#line 705 "parser.y"
         {
	   ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	 }
#line 1936 "parser.tab.c"
    break;

  case 50: /* formulas: formulas "." formula  */
#line 709 "parser.y"
         {
	   if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode) != NULL) {
	     int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	     formulalist *newlist = tree_to_list(CONJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode));
	     tnode *new = create_tnode(CONJUNCTION,CONJUNCTION,mdepth,NULL,NULL,newlist);
	     ((*yyvalp).tnode) = new;
	   }
	   else ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
	 }
#line 1950 "parser.tab.c"
    break;

  case 51: /* formula: formula "double implication" formula  */
#line 721 "parser.y"
          { // double-implications are not treated as abbreviations.
	    inputsize += 1;
	    int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	    tnode *new = create_tnode(DOUBLEIMP,DOUBLEIMP,mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL);
	    ((*yyvalp).tnode) = new;
        }
#line 1961 "parser.tab.c"
    break;

  case 52: /* formula: formula "implication" formula  */
#line 728 "parser.y"
        {
	  inputsize += 1;
	  int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	  tnode *new = create_tnode(IMPLICATION,IMPLICATION,mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL);
	  ((*yyvalp).tnode) = new;
        }
#line 1972 "parser.tab.c"
    break;

  case 53: /* formula: formula "only if" formula  */
#line 735 "parser.y"
        {
	  inputsize += 1;
	  int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	  tnode *new = create_tnode(IMPLICATION,IMPLICATION,mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),NULL);
	  ((*yyvalp).tnode) = new;
        }
#line 1983 "parser.tab.c"
    break;

  case 54: /* formula: formula "disjunction" formula  */
#line 742 "parser.y"
        {
	  inputsize += 1;
	  int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	  formulalist *newlist = tree_to_list(DISJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode));
	  tnode *new = create_tnode(DISJUNCTION,DISJUNCTION,mdepth,NULL,NULL,newlist);
	  ((*yyvalp).tnode) = new;
        }
#line 1995 "parser.tab.c"
    break;

  case 55: /* formula: formula "conjunction" formula  */
#line 750 "parser.y"
        {
	  inputsize += 1;
	  int mdepth = MAX((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth);
	  formulalist *newlist = tree_to_list(CONJUNCTION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.tnode),(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode));
	  tnode *new = create_tnode(CONJUNCTION,CONJUNCTION,mdepth,NULL,NULL,newlist);

	  /*formulalist *aux = newlist;
	  while (aux != NULL) {
	    aux->formula->parent = new;
	    aux = aux->next;
	    }*/
	  
	  ((*yyvalp).tnode) = new;
	  //printf("\n Formula (AND): \n");
	  //print_tree($$);

        }
#line 2017 "parser.tab.c"
    break;

  case 56: /* formula: "negation" formula  */
#line 768 "parser.y"
        {
	  inputsize += 1;
          tnode *new = create_tnode(NEGATION,NEGATION,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	}
#line 2027 "parser.tab.c"
    break;

  case 57: /* formula: TOBOX modal_arg TCBOX formula  */
#line 774 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
          char *index;
          if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));} else index=NULL;
          char * s = malloc(snprintf(NULL, 0, "box %s", index) + 1);
	  sprintf(s, "box %s", index);
	  a=insert_a_node(s);
	  tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  if (index != NULL) {
	    free(index);
	    free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	  }
	}
#line 2047 "parser.tab.c"
    break;

  case 58: /* formula: "box operator" modal_arg formula  */
#line 790 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
          char *pname, *index;
          pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
          if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));} else index=NULL;
          char * s = malloc(snprintf(NULL, 0, "%s %s", pname, index) + 1);
	  sprintf(s, "%s %s", pname, index);
	  a=insert_a_node(s);
	  tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	  if (index != NULL) {
	    free(index);
	    free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	  }
        }
#line 2069 "parser.tab.c"
    break;

  case 59: /* formula: TOBOX TCBOX formula  */
#line 808 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
	  char *s = malloc(snprintf(NULL, 0, "box") + 1);
	  sprintf(s, "box");	  
	  a=insert_a_node(s);
          tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
        }
#line 2083 "parser.tab.c"
    break;

  case 60: /* formula: "box operator" formula  */
#line 818 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
          char *pname;
          pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	  a=insert_a_node(pname);
          tnode *new = create_tnode(BOX,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  //printf("\n Formula (BOX): \n");
	  //print_tree($$);
	  free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
        }
#line 2100 "parser.tab.c"
    break;

  case 61: /* formula: TODIA modal_arg TCDIA formula  */
#line 831 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
          char *index;
          if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));} else index=NULL;
          char *s = malloc(snprintf(NULL, 0, "box %s", index) + 1);
	  sprintf(s, "box %s", index);
	  a=insert_a_node(s);
	  tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  if (index != NULL) {
	    free(index);
	    free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	  }
	}
#line 2120 "parser.tab.c"
    break;

  case 62: /* formula: "diamond operator" modal_arg formula  */
#line 847 "parser.y"
        { 
	  inputsize += 1; // the modal_args count as zero (as part of the operator);
	  agent_node *a;
          char *pname, *index;
          pname = getBoxName(strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue)));
          if ((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue) !=NULL) {index = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));} else index=NULL;
          char *s = malloc(snprintf(NULL, 0, "%s %s", pname, index) + 1);
	  sprintf(s, "%s %s", pname, index);
	  a=insert_a_node(s);
	  tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth + 1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.strValue));
	  if (index != NULL) {
	    free(index);
	    free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	  }
        }
#line 2142 "parser.tab.c"
    break;

  case 63: /* formula: TODIA TCDIA formula  */
#line 865 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
	  char * s = malloc(snprintf(NULL, 0, "box") + 1);
	  sprintf(s, "box");	  
	  a=insert_a_node(s);
          tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth+1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
        }
#line 2156 "parser.tab.c"
    break;

  case 64: /* formula: "diamond operator" formula  */
#line 875 "parser.y"
        { 
	  inputsize += 1;
	  agent_node *a;
          char *pname;
          pname = getBoxName(strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue)));
	  a = insert_a_node(pname);
	  tnode *new = create_tnode(DIAMOND,a->id,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode)->mdepth + 1,(YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode),NULL,NULL);
	  ((*yyvalp).tnode) = new;
	  free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.strValue));
	}
#line 2171 "parser.tab.c"
    break;

  case 65: /* formula: "(" formula ")"  */
#line 886 "parser.y"
        {
	  ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-1)].yystate.yysemantics.yysval.tnode);
	}
#line 2179 "parser.tab.c"
    break;

  case 66: /* formula: proposition  */
#line 890 "parser.y"
        { 
	  ((*yyvalp).tnode) = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.tnode);
        }
#line 2187 "parser.tab.c"
    break;

  case 67: /* formula: error  */
#line 893 "parser.y"
                 {numerrors++;}
#line 2193 "parser.tab.c"
    break;

  case 68: /* propositions_list: "identifier"  */
#line 897 "parser.y"
                 {
		   char *prop = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
		   prop_list *new = malloc(sizeof(prop_list));
		   new->prop = prop;
		   new->next = NULL;
		   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
		   ((*yyvalp).prop_list) = new;
		 }
#line 2206 "parser.tab.c"
    break;

  case 69: /* propositions_list: propositions_list "," "identifier"  */
#line 906 "parser.y"
                 {
		   char *prop = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
		   prop_list *new = malloc(sizeof(prop_list));
		   new->prop = prop;
		   new->next = (YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (-2)].yystate.yysemantics.yysval.prop_list);
		   free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
		   ((*yyvalp).prop_list) = new;
		 }
#line 2219 "parser.tab.c"
    break;

  case 72: /* proposition: "identifier"  */
#line 921 "parser.y"
           {
	     inputsize += 1;
             prop_node *p;
             char *pname = strdup((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));

	     char *s = malloc(snprintf(NULL, 0, "%s", pname) + 1);
	     sprintf(s, "%s", pname);
	     
	     p = insert_p_node(s);
	     tnode *new = create_tnode(PROP,p->id,0,NULL,NULL,NULL);
	     //	     p = insert_p_position(p,new);
	     ((*yyvalp).tnode) = new;
	     free(pname);
	     free((YY_CAST (yyGLRStackItem const *, yyvsp)[YYFILL (0)].yystate.yysemantics.yysval.strValue));
	   }
#line 2239 "parser.tab.c"
    break;

  case 73: /* proposition: TSTART  */
#line 937 "parser.y"
           {
	     inputsize += 1;
	     // prop_node *p = find_prop(CSTART);
	     tnode *new = create_tnode(CONSTANT,CSTART,0,NULL,NULL,NULL);
	     ((*yyvalp).tnode)  = new;
	   }
#line 2250 "parser.tab.c"
    break;

  case 74: /* proposition: TTRUE  */
#line 944 "parser.y"
           {
	     inputsize += 1;
	     prop_node *p = find_prop(CTRUE);
	     tnode *new = create_tnode(CONSTANT,CTRUE,0,NULL,NULL,NULL);
	     p = insert_p_position(p,new);
	     ((*yyvalp).tnode)  = new;
	   }
#line 2262 "parser.tab.c"
    break;

  case 75: /* proposition: "constant"  */
#line 952 "parser.y"
           {
	     inputsize += 1;
	     prop_node *p = find_prop(CFALSE);
	     tnode *new = create_tnode(CONSTANT,CFALSE,0,NULL,NULL,NULL);
	     p = insert_p_position(p,new);
	     ((*yyvalp).tnode) = new;
	   }
#line 2274 "parser.tab.c"
    break;


#line 2278 "parser.tab.c"

      default: break;
    }

  return yyok;
# undef yyerrok
# undef YYABORT
# undef YYACCEPT
# undef YYERROR
# undef YYBACKUP
# undef yyclearin
# undef YYRECOVERING
}


static void
yyuserMerge (int yyn, YYSTYPE* yy0, YYSTYPE* yy1)
{
  YYUSE (yy0);
  YYUSE (yy1);

  switch (yyn)
    {

      default: break;
    }
}

                              /* Bison grammar-table manipulation.  */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}

/** Number of symbols composing the right hand side of rule #RULE.  */
static inline int
yyrhsLength (yyRuleNum yyrule)
{
  return yyr2[yyrule];
}

static void
yydestroyGLRState (char const *yymsg, yyGLRState *yys)
{
  if (yys->yyresolved)
    yydestruct (yymsg, yy_accessing_symbol (yys->yylrState),
                &yys->yysemantics.yysval);
  else
    {
#if YYDEBUG
      if (yydebug)
        {
          if (yys->yysemantics.yyfirstVal)
            YY_FPRINTF ((stderr, "%s unresolved", yymsg));
          else
            YY_FPRINTF ((stderr, "%s incomplete", yymsg));
          YY_SYMBOL_PRINT ("", yy_accessing_symbol (yys->yylrState), YY_NULLPTR, &yys->yyloc);
        }
#endif

      if (yys->yysemantics.yyfirstVal)
        {
          yySemanticOption *yyoption = yys->yysemantics.yyfirstVal;
          yyGLRState *yyrh;
          int yyn;
          for (yyrh = yyoption->yystate, yyn = yyrhsLength (yyoption->yyrule);
               yyn > 0;
               yyrh = yyrh->yypred, yyn -= 1)
            yydestroyGLRState (yymsg, yyrh);
        }
    }
}

/** Left-hand-side symbol for rule #YYRULE.  */
static inline yysymbol_kind_t
yylhsNonterm (yyRuleNum yyrule)
{
  return YY_CAST (yysymbol_kind_t, yyr1[yyrule]);
}

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

/** True iff LR state YYSTATE has only a default reduction (regardless
 *  of token).  */
static inline yybool
yyisDefaultedState (yy_state_t yystate)
{
  return yypact_value_is_default (yypact[yystate]);
}

/** The default reduction for YYSTATE, assuming it has one.  */
static inline yyRuleNum
yydefaultAction (yy_state_t yystate)
{
  return yydefact[yystate];
}

#define yytable_value_is_error(Yyn) \
  0

/** The action to take in YYSTATE on seeing YYTOKEN.
 *  Result R means
 *    R < 0:  Reduce on rule -R.
 *    R = 0:  Error.
 *    R > 0:  Shift to state R.
 *  Set *YYCONFLICTS to a pointer into yyconfl to a 0-terminated list
 *  of conflicting reductions.
 */
static inline int
yygetLRActions (yy_state_t yystate, yysymbol_kind_t yytoken, const short** yyconflicts)
{
  int yyindex = yypact[yystate] + yytoken;
  if (yytoken == YYSYMBOL_YYerror)
    {
      // This is the error token.
      *yyconflicts = yyconfl;
      return 0;
    }
  else if (yyisDefaultedState (yystate)
           || yyindex < 0 || YYLAST < yyindex || yycheck[yyindex] != yytoken)
    {
      *yyconflicts = yyconfl;
      return -yydefact[yystate];
    }
  else if (! yytable_value_is_error (yytable[yyindex]))
    {
      *yyconflicts = yyconfl + yyconflp[yyindex];
      return yytable[yyindex];
    }
  else
    {
      *yyconflicts = yyconfl + yyconflp[yyindex];
      return 0;
    }
}

/** Compute post-reduction state.
 * \param yystate   the current state
 * \param yysym     the nonterminal to push on the stack
 */
static inline yy_state_t
yyLRgotoState (yy_state_t yystate, yysymbol_kind_t yysym)
{
  int yyr = yypgoto[yysym - YYNTOKENS] + yystate;
  if (0 <= yyr && yyr <= YYLAST && yycheck[yyr] == yystate)
    return yytable[yyr];
  else
    return yydefgoto[yysym - YYNTOKENS];
}

static inline yybool
yyisShiftAction (int yyaction)
{
  return 0 < yyaction;
}

static inline yybool
yyisErrorAction (int yyaction)
{
  return yyaction == 0;
}

                                /* GLRStates */

/** Return a fresh GLRStackItem in YYSTACKP.  The item is an LR state
 *  if YYISSTATE, and otherwise a semantic option.  Callers should call
 *  YY_RESERVE_GLRSTACK afterwards to make sure there is sufficient
 *  headroom.  */

static inline yyGLRStackItem*
yynewGLRStackItem (yyGLRStack* yystackp, yybool yyisState)
{
  yyGLRStackItem* yynewItem = yystackp->yynextFree;
  yystackp->yyspaceLeft -= 1;
  yystackp->yynextFree += 1;
  yynewItem->yystate.yyisState = yyisState;
  return yynewItem;
}

/** Add a new semantic action that will execute the action for rule
 *  YYRULE on the semantic values in YYRHS to the list of
 *  alternative actions for YYSTATE.  Assumes that YYRHS comes from
 *  stack #YYK of *YYSTACKP. */
static void
yyaddDeferredAction (yyGLRStack* yystackp, YYPTRDIFF_T yyk, yyGLRState* yystate,
                     yyGLRState* yyrhs, yyRuleNum yyrule)
{
  yySemanticOption* yynewOption =
    &yynewGLRStackItem (yystackp, yyfalse)->yyoption;
  YY_ASSERT (!yynewOption->yyisState);
  yynewOption->yystate = yyrhs;
  yynewOption->yyrule = yyrule;
  if (yystackp->yytops.yylookaheadNeeds[yyk])
    {
      yynewOption->yyrawchar = yychar;
      yynewOption->yyval = yylval;
    }
  else
    yynewOption->yyrawchar = YYEMPTY;
  yynewOption->yynext = yystate->yysemantics.yyfirstVal;
  yystate->yysemantics.yyfirstVal = yynewOption;

  YY_RESERVE_GLRSTACK (yystackp);
}

                                /* GLRStacks */

/** Initialize YYSET to a singleton set containing an empty stack.  */
static yybool
yyinitStateSet (yyGLRStateSet* yyset)
{
  yyset->yysize = 1;
  yyset->yycapacity = 16;
  yyset->yystates
    = YY_CAST (yyGLRState**,
               YYMALLOC (YY_CAST (YYSIZE_T, yyset->yycapacity)
                         * sizeof yyset->yystates[0]));
  if (! yyset->yystates)
    return yyfalse;
  yyset->yystates[0] = YY_NULLPTR;
  yyset->yylookaheadNeeds
    = YY_CAST (yybool*,
               YYMALLOC (YY_CAST (YYSIZE_T, yyset->yycapacity)
                         * sizeof yyset->yylookaheadNeeds[0]));
  if (! yyset->yylookaheadNeeds)
    {
      YYFREE (yyset->yystates);
      return yyfalse;
    }
  memset (yyset->yylookaheadNeeds,
          0,
          YY_CAST (YYSIZE_T, yyset->yycapacity) * sizeof yyset->yylookaheadNeeds[0]);
  return yytrue;
}

static void yyfreeStateSet (yyGLRStateSet* yyset)
{
  YYFREE (yyset->yystates);
  YYFREE (yyset->yylookaheadNeeds);
}

/** Initialize *YYSTACKP to a single empty stack, with total maximum
 *  capacity for all stacks of YYSIZE.  */
static yybool
yyinitGLRStack (yyGLRStack* yystackp, YYPTRDIFF_T yysize)
{
  yystackp->yyerrState = 0;
  yynerrs = 0;
  yystackp->yyspaceLeft = yysize;
  yystackp->yyitems
    = YY_CAST (yyGLRStackItem*,
               YYMALLOC (YY_CAST (YYSIZE_T, yysize)
                         * sizeof yystackp->yynextFree[0]));
  if (!yystackp->yyitems)
    return yyfalse;
  yystackp->yynextFree = yystackp->yyitems;
  yystackp->yysplitPoint = YY_NULLPTR;
  yystackp->yylastDeleted = YY_NULLPTR;
  return yyinitStateSet (&yystackp->yytops);
}


#if YYSTACKEXPANDABLE
# define YYRELOC(YYFROMITEMS, YYTOITEMS, YYX, YYTYPE)                   \
  &((YYTOITEMS)                                                         \
    - ((YYFROMITEMS) - YY_REINTERPRET_CAST (yyGLRStackItem*, (YYX))))->YYTYPE

/** If *YYSTACKP is expandable, extend it.  WARNING: Pointers into the
    stack from outside should be considered invalid after this call.
    We always expand when there are 1 or fewer items left AFTER an
    allocation, so that we can avoid having external pointers exist
    across an allocation.  */
static void
yyexpandGLRStack (yyGLRStack* yystackp)
{
  yyGLRStackItem* yynewItems;
  yyGLRStackItem* yyp0, *yyp1;
  YYPTRDIFF_T yynewSize;
  YYPTRDIFF_T yyn;
  YYPTRDIFF_T yysize = yystackp->yynextFree - yystackp->yyitems;
  if (YYMAXDEPTH - YYHEADROOM < yysize)
    yyMemoryExhausted (yystackp);
  yynewSize = 2*yysize;
  if (YYMAXDEPTH < yynewSize)
    yynewSize = YYMAXDEPTH;
  yynewItems
    = YY_CAST (yyGLRStackItem*,
               YYMALLOC (YY_CAST (YYSIZE_T, yynewSize)
                         * sizeof yynewItems[0]));
  if (! yynewItems)
    yyMemoryExhausted (yystackp);
  for (yyp0 = yystackp->yyitems, yyp1 = yynewItems, yyn = yysize;
       0 < yyn;
       yyn -= 1, yyp0 += 1, yyp1 += 1)
    {
      *yyp1 = *yyp0;
      if (*YY_REINTERPRET_CAST (yybool *, yyp0))
        {
          yyGLRState* yys0 = &yyp0->yystate;
          yyGLRState* yys1 = &yyp1->yystate;
          if (yys0->yypred != YY_NULLPTR)
            yys1->yypred =
              YYRELOC (yyp0, yyp1, yys0->yypred, yystate);
          if (! yys0->yyresolved && yys0->yysemantics.yyfirstVal != YY_NULLPTR)
            yys1->yysemantics.yyfirstVal =
              YYRELOC (yyp0, yyp1, yys0->yysemantics.yyfirstVal, yyoption);
        }
      else
        {
          yySemanticOption* yyv0 = &yyp0->yyoption;
          yySemanticOption* yyv1 = &yyp1->yyoption;
          if (yyv0->yystate != YY_NULLPTR)
            yyv1->yystate = YYRELOC (yyp0, yyp1, yyv0->yystate, yystate);
          if (yyv0->yynext != YY_NULLPTR)
            yyv1->yynext = YYRELOC (yyp0, yyp1, yyv0->yynext, yyoption);
        }
    }
  if (yystackp->yysplitPoint != YY_NULLPTR)
    yystackp->yysplitPoint = YYRELOC (yystackp->yyitems, yynewItems,
                                      yystackp->yysplitPoint, yystate);

  for (yyn = 0; yyn < yystackp->yytops.yysize; yyn += 1)
    if (yystackp->yytops.yystates[yyn] != YY_NULLPTR)
      yystackp->yytops.yystates[yyn] =
        YYRELOC (yystackp->yyitems, yynewItems,
                 yystackp->yytops.yystates[yyn], yystate);
  YYFREE (yystackp->yyitems);
  yystackp->yyitems = yynewItems;
  yystackp->yynextFree = yynewItems + yysize;
  yystackp->yyspaceLeft = yynewSize - yysize;
}
#endif

static void
yyfreeGLRStack (yyGLRStack* yystackp)
{
  YYFREE (yystackp->yyitems);
  yyfreeStateSet (&yystackp->yytops);
}

/** Assuming that YYS is a GLRState somewhere on *YYSTACKP, update the
 *  splitpoint of *YYSTACKP, if needed, so that it is at least as deep as
 *  YYS.  */
static inline void
yyupdateSplit (yyGLRStack* yystackp, yyGLRState* yys)
{
  if (yystackp->yysplitPoint != YY_NULLPTR && yystackp->yysplitPoint > yys)
    yystackp->yysplitPoint = yys;
}

/** Invalidate stack #YYK in *YYSTACKP.  */
static inline void
yymarkStackDeleted (yyGLRStack* yystackp, YYPTRDIFF_T yyk)
{
  if (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
    yystackp->yylastDeleted = yystackp->yytops.yystates[yyk];
  yystackp->yytops.yystates[yyk] = YY_NULLPTR;
}

/** Undelete the last stack in *YYSTACKP that was marked as deleted.  Can
    only be done once after a deletion, and only when all other stacks have
    been deleted.  */
static void
yyundeleteLastStack (yyGLRStack* yystackp)
{
  if (yystackp->yylastDeleted == YY_NULLPTR || yystackp->yytops.yysize != 0)
    return;
  yystackp->yytops.yystates[0] = yystackp->yylastDeleted;
  yystackp->yytops.yysize = 1;
  YY_DPRINTF ((stderr, "Restoring last deleted stack as stack #0.\n"));
  yystackp->yylastDeleted = YY_NULLPTR;
}

static inline void
yyremoveDeletes (yyGLRStack* yystackp)
{
  YYPTRDIFF_T yyi, yyj;
  yyi = yyj = 0;
  while (yyj < yystackp->yytops.yysize)
    {
      if (yystackp->yytops.yystates[yyi] == YY_NULLPTR)
        {
          if (yyi == yyj)
            YY_DPRINTF ((stderr, "Removing dead stacks.\n"));
          yystackp->yytops.yysize -= 1;
        }
      else
        {
          yystackp->yytops.yystates[yyj] = yystackp->yytops.yystates[yyi];
          /* In the current implementation, it's unnecessary to copy
             yystackp->yytops.yylookaheadNeeds[yyi] since, after
             yyremoveDeletes returns, the parser immediately either enters
             deterministic operation or shifts a token.  However, it doesn't
             hurt, and the code might evolve to need it.  */
          yystackp->yytops.yylookaheadNeeds[yyj] =
            yystackp->yytops.yylookaheadNeeds[yyi];
          if (yyj != yyi)
            YY_DPRINTF ((stderr, "Rename stack %ld -> %ld.\n",
                        YY_CAST (long, yyi), YY_CAST (long, yyj)));
          yyj += 1;
        }
      yyi += 1;
    }
}

/** Shift to a new state on stack #YYK of *YYSTACKP, corresponding to LR
 * state YYLRSTATE, at input position YYPOSN, with (resolved) semantic
 * value *YYVALP and source location *YYLOCP.  */
static inline void
yyglrShift (yyGLRStack* yystackp, YYPTRDIFF_T yyk, yy_state_t yylrState,
            YYPTRDIFF_T yyposn,
            YYSTYPE* yyvalp)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yytrue;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yysval = *yyvalp;
  yystackp->yytops.yystates[yyk] = yynewState;

  YY_RESERVE_GLRSTACK (yystackp);
}

/** Shift stack #YYK of *YYSTACKP, to a new state corresponding to LR
 *  state YYLRSTATE, at input position YYPOSN, with the (unresolved)
 *  semantic value of YYRHS under the action for YYRULE.  */
static inline void
yyglrShiftDefer (yyGLRStack* yystackp, YYPTRDIFF_T yyk, yy_state_t yylrState,
                 YYPTRDIFF_T yyposn, yyGLRState* yyrhs, yyRuleNum yyrule)
{
  yyGLRState* yynewState = &yynewGLRStackItem (yystackp, yytrue)->yystate;
  YY_ASSERT (yynewState->yyisState);

  yynewState->yylrState = yylrState;
  yynewState->yyposn = yyposn;
  yynewState->yyresolved = yyfalse;
  yynewState->yypred = yystackp->yytops.yystates[yyk];
  yynewState->yysemantics.yyfirstVal = YY_NULLPTR;
  yystackp->yytops.yystates[yyk] = yynewState;

  /* Invokes YY_RESERVE_GLRSTACK.  */
  yyaddDeferredAction (yystackp, yyk, yynewState, yyrhs, yyrule);
}

#if !YYDEBUG
# define YY_REDUCE_PRINT(Args)
#else
# define YY_REDUCE_PRINT(Args)          \
  do {                                  \
    if (yydebug)                        \
      yy_reduce_print Args;             \
  } while (0)

/*----------------------------------------------------------------------.
| Report that stack #YYK of *YYSTACKP is going to be reduced by YYRULE. |
`----------------------------------------------------------------------*/

static inline void
yy_reduce_print (yybool yynormal, yyGLRStackItem* yyvsp, YYPTRDIFF_T yyk,
                 yyRuleNum yyrule)
{
  int yynrhs = yyrhsLength (yyrule);
  int yyi;
  YY_FPRINTF ((stderr, "Reducing stack %ld by rule %d (line %d):\n",
               YY_CAST (long, yyk), yyrule - 1, yyrline[yyrule]));
  if (! yynormal)
    yyfillin (yyvsp, 1, -yynrhs);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YY_FPRINTF ((stderr, "   $%d = ", yyi + 1));
      yy_symbol_print (stderr,
                       yy_accessing_symbol (yyvsp[yyi - yynrhs + 1].yystate.yylrState),
                       &yyvsp[yyi - yynrhs + 1].yystate.yysemantics.yysval                       );
      if (!yyvsp[yyi - yynrhs + 1].yystate.yyresolved)
        YY_FPRINTF ((stderr, " (unresolved)"));
      YY_FPRINTF ((stderr, "\n"));
    }
}
#endif

/** Pop the symbols consumed by reduction #YYRULE from the top of stack
 *  #YYK of *YYSTACKP, and perform the appropriate semantic action on their
 *  semantic values.  Assumes that all ambiguities in semantic values
 *  have been previously resolved.  Set *YYVALP to the resulting value,
 *  and *YYLOCP to the computed location (if any).  Return value is as
 *  for userAction.  */
static inline YYRESULTTAG
yydoAction (yyGLRStack* yystackp, YYPTRDIFF_T yyk, yyRuleNum yyrule,
            YYSTYPE* yyvalp)
{
  int yynrhs = yyrhsLength (yyrule);

  if (yystackp->yysplitPoint == YY_NULLPTR)
    {
      /* Standard special case: single stack.  */
      yyGLRStackItem* yyrhs
        = YY_REINTERPRET_CAST (yyGLRStackItem*, yystackp->yytops.yystates[yyk]);
      YY_ASSERT (yyk == 0);
      yystackp->yynextFree -= yynrhs;
      yystackp->yyspaceLeft += yynrhs;
      yystackp->yytops.yystates[0] = & yystackp->yynextFree[-1].yystate;
      YY_REDUCE_PRINT ((yytrue, yyrhs, yyk, yyrule));
      return yyuserAction (yyrule, yynrhs, yyrhs, yystackp,
                           yyvalp);
    }
  else
    {
      yyGLRStackItem yyrhsVals[YYMAXRHS + YYMAXLEFT + 1];
      yyGLRState* yys = yyrhsVals[YYMAXRHS + YYMAXLEFT].yystate.yypred
        = yystackp->yytops.yystates[yyk];
      int yyi;
      for (yyi = 0; yyi < yynrhs; yyi += 1)
        {
          yys = yys->yypred;
          YY_ASSERT (yys);
        }
      yyupdateSplit (yystackp, yys);
      yystackp->yytops.yystates[yyk] = yys;
      YY_REDUCE_PRINT ((yyfalse, yyrhsVals + YYMAXRHS + YYMAXLEFT - 1, yyk, yyrule));
      return yyuserAction (yyrule, yynrhs, yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
                           yystackp, yyvalp);
    }
}

/** Pop items off stack #YYK of *YYSTACKP according to grammar rule YYRULE,
 *  and push back on the resulting nonterminal symbol.  Perform the
 *  semantic action associated with YYRULE and store its value with the
 *  newly pushed state, if YYFORCEEVAL or if *YYSTACKP is currently
 *  unambiguous.  Otherwise, store the deferred semantic action with
 *  the new state.  If the new state would have an identical input
 *  position, LR state, and predecessor to an existing state on the stack,
 *  it is identified with that existing state, eliminating stack #YYK from
 *  *YYSTACKP.  In this case, the semantic value is
 *  added to the options for the existing state's semantic value.
 */
static inline YYRESULTTAG
yyglrReduce (yyGLRStack* yystackp, YYPTRDIFF_T yyk, yyRuleNum yyrule,
             yybool yyforceEval)
{
  YYPTRDIFF_T yyposn = yystackp->yytops.yystates[yyk]->yyposn;

  if (yyforceEval || yystackp->yysplitPoint == YY_NULLPTR)
    {
      YYSTYPE yysval;

      YYRESULTTAG yyflag = yydoAction (yystackp, yyk, yyrule, &yysval);
      if (yyflag == yyerr && yystackp->yysplitPoint != YY_NULLPTR)
        YY_DPRINTF ((stderr,
                     "Parse on stack %ld rejected by rule %d (line %d).\n",
                     YY_CAST (long, yyk), yyrule - 1, yyrline[yyrule - 1]));
      if (yyflag != yyok)
        return yyflag;
      YY_SYMBOL_PRINT ("-> $$ =", yylhsNonterm (yyrule), &yysval, &yyloc);
      yyglrShift (yystackp, yyk,
                  yyLRgotoState (yystackp->yytops.yystates[yyk]->yylrState,
                                 yylhsNonterm (yyrule)),
                  yyposn, &yysval);
    }
  else
    {
      YYPTRDIFF_T yyi;
      int yyn;
      yyGLRState* yys, *yys0 = yystackp->yytops.yystates[yyk];
      yy_state_t yynewLRState;

      for (yys = yystackp->yytops.yystates[yyk], yyn = yyrhsLength (yyrule);
           0 < yyn; yyn -= 1)
        {
          yys = yys->yypred;
          YY_ASSERT (yys);
        }
      yyupdateSplit (yystackp, yys);
      yynewLRState = yyLRgotoState (yys->yylrState, yylhsNonterm (yyrule));
      YY_DPRINTF ((stderr,
                   "Reduced stack %ld by rule %d (line %d); action deferred.  "
                   "Now in state %d.\n",
                   YY_CAST (long, yyk), yyrule - 1, yyrline[yyrule - 1],
                   yynewLRState));
      for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
        if (yyi != yyk && yystackp->yytops.yystates[yyi] != YY_NULLPTR)
          {
            yyGLRState *yysplit = yystackp->yysplitPoint;
            yyGLRState *yyp = yystackp->yytops.yystates[yyi];
            while (yyp != yys && yyp != yysplit && yyp->yyposn >= yyposn)
              {
                if (yyp->yylrState == yynewLRState && yyp->yypred == yys)
                  {
                    yyaddDeferredAction (yystackp, yyk, yyp, yys0, yyrule);
                    yymarkStackDeleted (yystackp, yyk);
                    YY_DPRINTF ((stderr, "Merging stack %ld into stack %ld.\n",
                                 YY_CAST (long, yyk), YY_CAST (long, yyi)));
                    return yyok;
                  }
                yyp = yyp->yypred;
              }
          }
      yystackp->yytops.yystates[yyk] = yys;
      yyglrShiftDefer (yystackp, yyk, yynewLRState, yyposn, yys0, yyrule);
    }
  return yyok;
}

static YYPTRDIFF_T
yysplitStack (yyGLRStack* yystackp, YYPTRDIFF_T yyk)
{
  if (yystackp->yysplitPoint == YY_NULLPTR)
    {
      YY_ASSERT (yyk == 0);
      yystackp->yysplitPoint = yystackp->yytops.yystates[yyk];
    }
  if (yystackp->yytops.yycapacity <= yystackp->yytops.yysize)
    {
      YYPTRDIFF_T state_size = YYSIZEOF (yystackp->yytops.yystates[0]);
      YYPTRDIFF_T half_max_capacity = YYSIZE_MAXIMUM / 2 / state_size;
      if (half_max_capacity < yystackp->yytops.yycapacity)
        yyMemoryExhausted (yystackp);
      yystackp->yytops.yycapacity *= 2;

      {
        yyGLRState** yynewStates
          = YY_CAST (yyGLRState**,
                     YYREALLOC (yystackp->yytops.yystates,
                                (YY_CAST (YYSIZE_T, yystackp->yytops.yycapacity)
                                 * sizeof yynewStates[0])));
        if (yynewStates == YY_NULLPTR)
          yyMemoryExhausted (yystackp);
        yystackp->yytops.yystates = yynewStates;
      }

      {
        yybool* yynewLookaheadNeeds
          = YY_CAST (yybool*,
                     YYREALLOC (yystackp->yytops.yylookaheadNeeds,
                                (YY_CAST (YYSIZE_T, yystackp->yytops.yycapacity)
                                 * sizeof yynewLookaheadNeeds[0])));
        if (yynewLookaheadNeeds == YY_NULLPTR)
          yyMemoryExhausted (yystackp);
        yystackp->yytops.yylookaheadNeeds = yynewLookaheadNeeds;
      }
    }
  yystackp->yytops.yystates[yystackp->yytops.yysize]
    = yystackp->yytops.yystates[yyk];
  yystackp->yytops.yylookaheadNeeds[yystackp->yytops.yysize]
    = yystackp->yytops.yylookaheadNeeds[yyk];
  yystackp->yytops.yysize += 1;
  return yystackp->yytops.yysize - 1;
}

/** True iff YYY0 and YYY1 represent identical options at the top level.
 *  That is, they represent the same rule applied to RHS symbols
 *  that produce the same terminal symbols.  */
static yybool
yyidenticalOptions (yySemanticOption* yyy0, yySemanticOption* yyy1)
{
  if (yyy0->yyrule == yyy1->yyrule)
    {
      yyGLRState *yys0, *yys1;
      int yyn;
      for (yys0 = yyy0->yystate, yys1 = yyy1->yystate,
           yyn = yyrhsLength (yyy0->yyrule);
           yyn > 0;
           yys0 = yys0->yypred, yys1 = yys1->yypred, yyn -= 1)
        if (yys0->yyposn != yys1->yyposn)
          return yyfalse;
      return yytrue;
    }
  else
    return yyfalse;
}

/** Assuming identicalOptions (YYY0,YYY1), destructively merge the
 *  alternative semantic values for the RHS-symbols of YYY1 and YYY0.  */
static void
yymergeOptionSets (yySemanticOption* yyy0, yySemanticOption* yyy1)
{
  yyGLRState *yys0, *yys1;
  int yyn;
  for (yys0 = yyy0->yystate, yys1 = yyy1->yystate,
       yyn = yyrhsLength (yyy0->yyrule);
       0 < yyn;
       yys0 = yys0->yypred, yys1 = yys1->yypred, yyn -= 1)
    {
      if (yys0 == yys1)
        break;
      else if (yys0->yyresolved)
        {
          yys1->yyresolved = yytrue;
          yys1->yysemantics.yysval = yys0->yysemantics.yysval;
        }
      else if (yys1->yyresolved)
        {
          yys0->yyresolved = yytrue;
          yys0->yysemantics.yysval = yys1->yysemantics.yysval;
        }
      else
        {
          yySemanticOption** yyz0p = &yys0->yysemantics.yyfirstVal;
          yySemanticOption* yyz1 = yys1->yysemantics.yyfirstVal;
          while (yytrue)
            {
              if (yyz1 == *yyz0p || yyz1 == YY_NULLPTR)
                break;
              else if (*yyz0p == YY_NULLPTR)
                {
                  *yyz0p = yyz1;
                  break;
                }
              else if (*yyz0p < yyz1)
                {
                  yySemanticOption* yyz = *yyz0p;
                  *yyz0p = yyz1;
                  yyz1 = yyz1->yynext;
                  (*yyz0p)->yynext = yyz;
                }
              yyz0p = &(*yyz0p)->yynext;
            }
          yys1->yysemantics.yyfirstVal = yys0->yysemantics.yyfirstVal;
        }
    }
}

/** Y0 and Y1 represent two possible actions to take in a given
 *  parsing state; return 0 if no combination is possible,
 *  1 if user-mergeable, 2 if Y0 is preferred, 3 if Y1 is preferred.  */
static int
yypreference (yySemanticOption* y0, yySemanticOption* y1)
{
  yyRuleNum r0 = y0->yyrule, r1 = y1->yyrule;
  int p0 = yydprec[r0], p1 = yydprec[r1];

  if (p0 == p1)
    {
      if (yymerger[r0] == 0 || yymerger[r0] != yymerger[r1])
        return 0;
      else
        return 1;
    }
  if (p0 == 0 || p1 == 0)
    return 0;
  if (p0 < p1)
    return 3;
  if (p1 < p0)
    return 2;
  return 0;
}

static YYRESULTTAG yyresolveValue (yyGLRState* yys,
                                   yyGLRStack* yystackp);


/** Resolve the previous YYN states starting at and including state YYS
 *  on *YYSTACKP. If result != yyok, some states may have been left
 *  unresolved possibly with empty semantic option chains.  Regardless
 *  of whether result = yyok, each state has been left with consistent
 *  data so that yydestroyGLRState can be invoked if necessary.  */
static YYRESULTTAG
yyresolveStates (yyGLRState* yys, int yyn,
                 yyGLRStack* yystackp)
{
  if (0 < yyn)
    {
      YY_ASSERT (yys->yypred);
      YYCHK (yyresolveStates (yys->yypred, yyn-1, yystackp));
      if (! yys->yyresolved)
        YYCHK (yyresolveValue (yys, yystackp));
    }
  return yyok;
}

/** Resolve the states for the RHS of YYOPT on *YYSTACKP, perform its
 *  user action, and return the semantic value and location in *YYVALP
 *  and *YYLOCP.  Regardless of whether result = yyok, all RHS states
 *  have been destroyed (assuming the user action destroys all RHS
 *  semantic values if invoked).  */
static YYRESULTTAG
yyresolveAction (yySemanticOption* yyopt, yyGLRStack* yystackp,
                 YYSTYPE* yyvalp)
{
  yyGLRStackItem yyrhsVals[YYMAXRHS + YYMAXLEFT + 1];
  int yynrhs = yyrhsLength (yyopt->yyrule);
  YYRESULTTAG yyflag =
    yyresolveStates (yyopt->yystate, yynrhs, yystackp);
  if (yyflag != yyok)
    {
      yyGLRState *yys;
      for (yys = yyopt->yystate; yynrhs > 0; yys = yys->yypred, yynrhs -= 1)
        yydestroyGLRState ("Cleanup: popping", yys);
      return yyflag;
    }

  yyrhsVals[YYMAXRHS + YYMAXLEFT].yystate.yypred = yyopt->yystate;
  {
    int yychar_current = yychar;
    YYSTYPE yylval_current = yylval;
    yychar = yyopt->yyrawchar;
    yylval = yyopt->yyval;
    yyflag = yyuserAction (yyopt->yyrule, yynrhs,
                           yyrhsVals + YYMAXRHS + YYMAXLEFT - 1,
                           yystackp, yyvalp);
    yychar = yychar_current;
    yylval = yylval_current;
  }
  return yyflag;
}

#if YYDEBUG
static void
yyreportTree (yySemanticOption* yyx, int yyindent)
{
  int yynrhs = yyrhsLength (yyx->yyrule);
  int yyi;
  yyGLRState* yys;
  yyGLRState* yystates[1 + YYMAXRHS];
  yyGLRState yyleftmost_state;

  for (yyi = yynrhs, yys = yyx->yystate; 0 < yyi; yyi -= 1, yys = yys->yypred)
    yystates[yyi] = yys;
  if (yys == YY_NULLPTR)
    {
      yyleftmost_state.yyposn = 0;
      yystates[0] = &yyleftmost_state;
    }
  else
    yystates[0] = yys;

  if (yyx->yystate->yyposn < yys->yyposn + 1)
    YY_FPRINTF ((stderr, "%*s%s -> <Rule %d, empty>\n",
                 yyindent, "", yysymbol_name (yylhsNonterm (yyx->yyrule)),
                 yyx->yyrule - 1));
  else
    YY_FPRINTF ((stderr, "%*s%s -> <Rule %d, tokens %ld .. %ld>\n",
                 yyindent, "", yysymbol_name (yylhsNonterm (yyx->yyrule)),
                 yyx->yyrule - 1, YY_CAST (long, yys->yyposn + 1),
                 YY_CAST (long, yyx->yystate->yyposn)));
  for (yyi = 1; yyi <= yynrhs; yyi += 1)
    {
      if (yystates[yyi]->yyresolved)
        {
          if (yystates[yyi-1]->yyposn+1 > yystates[yyi]->yyposn)
            YY_FPRINTF ((stderr, "%*s%s <empty>\n", yyindent+2, "",
                         yysymbol_name (yy_accessing_symbol (yystates[yyi]->yylrState))));
          else
            YY_FPRINTF ((stderr, "%*s%s <tokens %ld .. %ld>\n", yyindent+2, "",
                         yysymbol_name (yy_accessing_symbol (yystates[yyi]->yylrState)),
                         YY_CAST (long, yystates[yyi-1]->yyposn + 1),
                         YY_CAST (long, yystates[yyi]->yyposn)));
        }
      else
        yyreportTree (yystates[yyi]->yysemantics.yyfirstVal, yyindent+2);
    }
}
#endif

static YYRESULTTAG
yyreportAmbiguity (yySemanticOption* yyx0,
                   yySemanticOption* yyx1)
{
  YYUSE (yyx0);
  YYUSE (yyx1);

#if YYDEBUG
  YY_FPRINTF ((stderr, "Ambiguity detected.\n"));
  YY_FPRINTF ((stderr, "Option 1,\n"));
  yyreportTree (yyx0, 2);
  YY_FPRINTF ((stderr, "\nOption 2,\n"));
  yyreportTree (yyx1, 2);
  YY_FPRINTF ((stderr, "\n"));
#endif

  yyerror (YY_("syntax is ambiguous"));
  return yyabort;
}

/** Resolve the ambiguity represented in state YYS in *YYSTACKP,
 *  perform the indicated actions, and set the semantic value of YYS.
 *  If result != yyok, the chain of semantic options in YYS has been
 *  cleared instead or it has been left unmodified except that
 *  redundant options may have been removed.  Regardless of whether
 *  result = yyok, YYS has been left with consistent data so that
 *  yydestroyGLRState can be invoked if necessary.  */
static YYRESULTTAG
yyresolveValue (yyGLRState* yys, yyGLRStack* yystackp)
{
  yySemanticOption* yyoptionList = yys->yysemantics.yyfirstVal;
  yySemanticOption* yybest = yyoptionList;
  yySemanticOption** yypp;
  yybool yymerge = yyfalse;
  YYSTYPE yysval;
  YYRESULTTAG yyflag;

  for (yypp = &yyoptionList->yynext; *yypp != YY_NULLPTR; )
    {
      yySemanticOption* yyp = *yypp;

      if (yyidenticalOptions (yybest, yyp))
        {
          yymergeOptionSets (yybest, yyp);
          *yypp = yyp->yynext;
        }
      else
        {
          switch (yypreference (yybest, yyp))
            {
            case 0:
              return yyreportAmbiguity (yybest, yyp);
              break;
            case 1:
              yymerge = yytrue;
              break;
            case 2:
              break;
            case 3:
              yybest = yyp;
              yymerge = yyfalse;
              break;
            default:
              /* This cannot happen so it is not worth a YY_ASSERT (yyfalse),
                 but some compilers complain if the default case is
                 omitted.  */
              break;
            }
          yypp = &yyp->yynext;
        }
    }

  if (yymerge)
    {
      yySemanticOption* yyp;
      int yyprec = yydprec[yybest->yyrule];
      yyflag = yyresolveAction (yybest, yystackp, &yysval);
      if (yyflag == yyok)
        for (yyp = yybest->yynext; yyp != YY_NULLPTR; yyp = yyp->yynext)
          {
            if (yyprec == yydprec[yyp->yyrule])
              {
                YYSTYPE yysval_other;
                yyflag = yyresolveAction (yyp, yystackp, &yysval_other);
                if (yyflag != yyok)
                  {
                    yydestruct ("Cleanup: discarding incompletely merged value for",
                                yy_accessing_symbol (yys->yylrState),
                                &yysval);
                    break;
                  }
                yyuserMerge (yymerger[yyp->yyrule], &yysval, &yysval_other);
              }
          }
    }
  else
    yyflag = yyresolveAction (yybest, yystackp, &yysval);

  if (yyflag == yyok)
    {
      yys->yyresolved = yytrue;
      yys->yysemantics.yysval = yysval;
    }
  else
    yys->yysemantics.yyfirstVal = YY_NULLPTR;
  return yyflag;
}

static YYRESULTTAG
yyresolveStack (yyGLRStack* yystackp)
{
  if (yystackp->yysplitPoint != YY_NULLPTR)
    {
      yyGLRState* yys;
      int yyn;

      for (yyn = 0, yys = yystackp->yytops.yystates[0];
           yys != yystackp->yysplitPoint;
           yys = yys->yypred, yyn += 1)
        continue;
      YYCHK (yyresolveStates (yystackp->yytops.yystates[0], yyn, yystackp
                             ));
    }
  return yyok;
}

static void
yycompressStack (yyGLRStack* yystackp)
{
  yyGLRState* yyp, *yyq, *yyr;

  if (yystackp->yytops.yysize != 1 || yystackp->yysplitPoint == YY_NULLPTR)
    return;

  for (yyp = yystackp->yytops.yystates[0], yyq = yyp->yypred, yyr = YY_NULLPTR;
       yyp != yystackp->yysplitPoint;
       yyr = yyp, yyp = yyq, yyq = yyp->yypred)
    yyp->yypred = yyr;

  yystackp->yyspaceLeft += yystackp->yynextFree - yystackp->yyitems;
  yystackp->yynextFree = YY_REINTERPRET_CAST (yyGLRStackItem*, yystackp->yysplitPoint) + 1;
  yystackp->yyspaceLeft -= yystackp->yynextFree - yystackp->yyitems;
  yystackp->yysplitPoint = YY_NULLPTR;
  yystackp->yylastDeleted = YY_NULLPTR;

  while (yyr != YY_NULLPTR)
    {
      yystackp->yynextFree->yystate = *yyr;
      yyr = yyr->yypred;
      yystackp->yynextFree->yystate.yypred = &yystackp->yynextFree[-1].yystate;
      yystackp->yytops.yystates[0] = &yystackp->yynextFree->yystate;
      yystackp->yynextFree += 1;
      yystackp->yyspaceLeft -= 1;
    }
}

static YYRESULTTAG
yyprocessOneStack (yyGLRStack* yystackp, YYPTRDIFF_T yyk,
                   YYPTRDIFF_T yyposn)
{
  while (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
    {
      yy_state_t yystate = yystackp->yytops.yystates[yyk]->yylrState;
      YY_DPRINTF ((stderr, "Stack %ld Entering state %d\n",
                   YY_CAST (long, yyk), yystate));

      YY_ASSERT (yystate != YYFINAL);

      if (yyisDefaultedState (yystate))
        {
          YYRESULTTAG yyflag;
          yyRuleNum yyrule = yydefaultAction (yystate);
          if (yyrule == 0)
            {
              YY_DPRINTF ((stderr, "Stack %ld dies.\n", YY_CAST (long, yyk)));
              yymarkStackDeleted (yystackp, yyk);
              return yyok;
            }
          yyflag = yyglrReduce (yystackp, yyk, yyrule, yyimmediate[yyrule]);
          if (yyflag == yyerr)
            {
              YY_DPRINTF ((stderr,
                           "Stack %ld dies "
                           "(predicate failure or explicit user error).\n",
                           YY_CAST (long, yyk)));
              yymarkStackDeleted (yystackp, yyk);
              return yyok;
            }
          if (yyflag != yyok)
            return yyflag;
        }
      else
        {
          yysymbol_kind_t yytoken = yygetToken (&yychar, yystackp);
          const short* yyconflicts;
          const int yyaction = yygetLRActions (yystate, yytoken, &yyconflicts);
          yystackp->yytops.yylookaheadNeeds[yyk] = yytrue;

          for (/* nothing */; *yyconflicts; yyconflicts += 1)
            {
              YYRESULTTAG yyflag;
              YYPTRDIFF_T yynewStack = yysplitStack (yystackp, yyk);
              YY_DPRINTF ((stderr, "Splitting off stack %ld from %ld.\n",
                           YY_CAST (long, yynewStack), YY_CAST (long, yyk)));
              yyflag = yyglrReduce (yystackp, yynewStack,
                                    *yyconflicts,
                                    yyimmediate[*yyconflicts]);
              if (yyflag == yyok)
                YYCHK (yyprocessOneStack (yystackp, yynewStack,
                                          yyposn));
              else if (yyflag == yyerr)
                {
                  YY_DPRINTF ((stderr, "Stack %ld dies.\n", YY_CAST (long, yynewStack)));
                  yymarkStackDeleted (yystackp, yynewStack);
                }
              else
                return yyflag;
            }

          if (yyisShiftAction (yyaction))
            break;
          else if (yyisErrorAction (yyaction))
            {
              YY_DPRINTF ((stderr, "Stack %ld dies.\n", YY_CAST (long, yyk)));
              yymarkStackDeleted (yystackp, yyk);
              break;
            }
          else
            {
              YYRESULTTAG yyflag = yyglrReduce (yystackp, yyk, -yyaction,
                                                yyimmediate[-yyaction]);
              if (yyflag == yyerr)
                {
                  YY_DPRINTF ((stderr,
                               "Stack %ld dies "
                               "(predicate failure or explicit user error).\n",
                               YY_CAST (long, yyk)));
                  yymarkStackDeleted (yystackp, yyk);
                  break;
                }
              else if (yyflag != yyok)
                return yyflag;
            }
        }
    }
  return yyok;
}

/* Put in YYARG at most YYARGN of the expected tokens given the
   current YYSTACKP, and return the number of tokens stored in YYARG.  If
   YYARG is null, return the number of expected tokens (guaranteed to
   be less than YYNTOKENS).  */
static int
yypcontext_expected_tokens (const yyGLRStack* yystackp,
                            yysymbol_kind_t yyarg[], int yyargn)
{
  /* Actual size of YYARG. */
  int yycount = 0;
  int yyn = yypact[yystackp->yytops.yystates[0]->yylrState];
  if (!yypact_value_is_default (yyn))
    {
      /* Start YYX at -YYN if negative to avoid negative indexes in
         YYCHECK.  In other words, skip the first -YYN actions for
         this state because they are default actions.  */
      int yyxbegin = yyn < 0 ? -yyn : 0;
      /* Stay within bounds of both yycheck and yytname.  */
      int yychecklim = YYLAST - yyn + 1;
      int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
      int yyx;
      for (yyx = yyxbegin; yyx < yyxend; ++yyx)
        if (yycheck[yyx + yyn] == yyx && yyx != YYSYMBOL_YYerror
            && !yytable_value_is_error (yytable[yyx + yyn]))
          {
            if (!yyarg)
              ++yycount;
            else if (yycount == yyargn)
              return 0;
            else
              yyarg[yycount++] = YY_CAST (yysymbol_kind_t, yyx);
          }
    }
  if (yyarg && yycount == 0 && 0 < yyargn)
    yyarg[0] = YYSYMBOL_YYEMPTY;
  return yycount;
}

static int
yy_syntax_error_arguments (const yyGLRStack* yystackp,
                           yysymbol_kind_t yyarg[], int yyargn)
{
  yysymbol_kind_t yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* Actual size of YYARG. */
  int yycount = 0;
  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.b4_lac_if([
       In the first two cases, it might appear that the current syntax
       error should have been detected in the previous state when yy_lac
       was invoked.  However, at that time, there might have been a
       different syntax error that discarded a different initial context
       during error recovery, leaving behind the current lookahead.], [
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.])
  */
  if (yytoken != YYSYMBOL_YYEMPTY)
    {
      int yyn;
      if (yyarg)
        yyarg[yycount] = yytoken;
      ++yycount;
      yyn = yypcontext_expected_tokens (yystackp,
                                        yyarg ? yyarg + 1 : yyarg, yyargn - 1);
      if (yyn == YYENOMEM)
        return YYENOMEM;
      else
        yycount += yyn;
    }
  return yycount;
}



static void
yyreportSyntaxError (yyGLRStack* yystackp)
{
  if (yystackp->yyerrState != 0)
    return;
  {
  yybool yysize_overflow = yyfalse;
  char* yymsg = YY_NULLPTR;
  enum { YYARGS_MAX = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat: reported tokens (one for the "unexpected",
     one per "expected"). */
  yysymbol_kind_t yyarg[YYARGS_MAX];
  /* Cumulated lengths of YYARG.  */
  YYPTRDIFF_T yysize = 0;

  /* Actual size of YYARG. */
  int yycount
    = yy_syntax_error_arguments (yystackp, yyarg, YYARGS_MAX);
  if (yycount == YYENOMEM)
    yyMemoryExhausted (yystackp);

  switch (yycount)
    {
#define YYCASE_(N, S)                   \
      case N:                           \
        yyformat = S;                   \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
    }

  /* Compute error message size.  Don't count the "%s"s, but reserve
     room for the terminator.  */
  yysize = yystrlen (yyformat) - 2 * yycount + 1;
  {
    int yyi;
    for (yyi = 0; yyi < yycount; ++yyi)
      {
        YYPTRDIFF_T yysz
          = yytnamerr (YY_NULLPTR, yytname[yyarg[yyi]]);
        if (YYSIZE_MAXIMUM - yysize < yysz)
          yysize_overflow = yytrue;
        else
          yysize += yysz;
      }
  }

  if (!yysize_overflow)
    yymsg = YY_CAST (char *, YYMALLOC (YY_CAST (YYSIZE_T, yysize)));

  if (yymsg)
    {
      char *yyp = yymsg;
      int yyi = 0;
      while ((*yyp = *yyformat))
        {
          if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
            {
              yyp += yytnamerr (yyp, yytname[yyarg[yyi++]]);
              yyformat += 2;
            }
          else
            {
              ++yyp;
              ++yyformat;
            }
        }
      yyerror (yymsg);
      YYFREE (yymsg);
    }
  else
    {
      yyerror (YY_("syntax error"));
      yyMemoryExhausted (yystackp);
    }
  }
  yynerrs += 1;
}

/* Recover from a syntax error on *YYSTACKP, assuming that *YYSTACKP->YYTOKENP,
   yylval, and yylloc are the syntactic category, semantic value, and location
   of the lookahead.  */
static void
yyrecoverSyntaxError (yyGLRStack* yystackp)
{
  if (yystackp->yyerrState == 3)
    /* We just shifted the error token and (perhaps) took some
       reductions.  Skip tokens until we can proceed.  */
    while (yytrue)
      {
        yysymbol_kind_t yytoken;
        int yyj;
        if (yychar == YYEOF)
          yyFail (yystackp, YY_NULLPTR);
        if (yychar != YYEMPTY)
          {
            yytoken = YYTRANSLATE (yychar);
            yydestruct ("Error: discarding",
                        yytoken, &yylval);
            yychar = YYEMPTY;
          }
        yytoken = yygetToken (&yychar, yystackp);
        yyj = yypact[yystackp->yytops.yystates[0]->yylrState];
        if (yypact_value_is_default (yyj))
          return;
        yyj += yytoken;
        if (yyj < 0 || YYLAST < yyj || yycheck[yyj] != yytoken)
          {
            if (yydefact[yystackp->yytops.yystates[0]->yylrState] != 0)
              return;
          }
        else if (! yytable_value_is_error (yytable[yyj]))
          return;
      }

  /* Reduce to one stack.  */
  {
    YYPTRDIFF_T yyk;
    for (yyk = 0; yyk < yystackp->yytops.yysize; yyk += 1)
      if (yystackp->yytops.yystates[yyk] != YY_NULLPTR)
        break;
    if (yyk >= yystackp->yytops.yysize)
      yyFail (yystackp, YY_NULLPTR);
    for (yyk += 1; yyk < yystackp->yytops.yysize; yyk += 1)
      yymarkStackDeleted (yystackp, yyk);
    yyremoveDeletes (yystackp);
    yycompressStack (yystackp);
  }

  /* Pop stack until we find a state that shifts the error token.  */
  yystackp->yyerrState = 3;
  while (yystackp->yytops.yystates[0] != YY_NULLPTR)
    {
      yyGLRState *yys = yystackp->yytops.yystates[0];
      int yyj = yypact[yys->yylrState];
      if (! yypact_value_is_default (yyj))
        {
          yyj += YYSYMBOL_YYerror;
          if (0 <= yyj && yyj <= YYLAST && yycheck[yyj] == YYSYMBOL_YYerror
              && yyisShiftAction (yytable[yyj]))
            {
              /* Shift the error token.  */
              int yyaction = yytable[yyj];
              YY_SYMBOL_PRINT ("Shifting", yy_accessing_symbol (yyaction),
                               &yylval, &yyerrloc);
              yyglrShift (yystackp, 0, yyaction,
                          yys->yyposn, &yylval);
              yys = yystackp->yytops.yystates[0];
              break;
            }
        }
      if (yys->yypred != YY_NULLPTR)
        yydestroyGLRState ("Error: popping", yys);
      yystackp->yytops.yystates[0] = yys->yypred;
      yystackp->yynextFree -= 1;
      yystackp->yyspaceLeft += 1;
    }
  if (yystackp->yytops.yystates[0] == YY_NULLPTR)
    yyFail (yystackp, YY_NULLPTR);
}

#define YYCHK1(YYE)                                                          \
  do {                                                                       \
    switch (YYE) {                                                           \
    case yyok:                                                               \
      break;                                                                 \
    case yyabort:                                                            \
      goto yyabortlab;                                                       \
    case yyaccept:                                                           \
      goto yyacceptlab;                                                      \
    case yyerr:                                                              \
      goto yyuser_error;                                                     \
    default:                                                                 \
      goto yybuglab;                                                         \
    }                                                                        \
  } while (0)

/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
  int yyresult;
  yyGLRStack yystack;
  yyGLRStack* const yystackp = &yystack;
  YYPTRDIFF_T yyposn;

  YY_DPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY;
  yylval = yyval_default;

  if (! yyinitGLRStack (yystackp, YYINITDEPTH))
    goto yyexhaustedlab;
  switch (YYSETJMP (yystack.yyexception_buffer))
    {
    case 0: break;
    case 1: goto yyabortlab;
    case 2: goto yyexhaustedlab;
    default: goto yybuglab;
    }
  yyglrShift (&yystack, 0, 0, 0, &yylval);
  yyposn = 0;

  while (yytrue)
    {
      /* For efficiency, we have two loops, the first of which is
         specialized to deterministic operation (single stack, no
         potential ambiguity).  */
      /* Standard mode. */
      while (yytrue)
        {
          yy_state_t yystate = yystack.yytops.yystates[0]->yylrState;
          YY_DPRINTF ((stderr, "Entering state %d\n", yystate));
          if (yystate == YYFINAL)
            goto yyacceptlab;
          if (yyisDefaultedState (yystate))
            {
              yyRuleNum yyrule = yydefaultAction (yystate);
              if (yyrule == 0)
                {
                  yyreportSyntaxError (&yystack);
                  goto yyuser_error;
                }
              YYCHK1 (yyglrReduce (&yystack, 0, yyrule, yytrue));
            }
          else
            {
              yysymbol_kind_t yytoken = yygetToken (&yychar, yystackp);
              const short* yyconflicts;
              int yyaction = yygetLRActions (yystate, yytoken, &yyconflicts);
              if (*yyconflicts)
                /* Enter nondeterministic mode.  */
                break;
              if (yyisShiftAction (yyaction))
                {
                  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
                  yychar = YYEMPTY;
                  yyposn += 1;
                  yyglrShift (&yystack, 0, yyaction, yyposn, &yylval);
                  if (0 < yystack.yyerrState)
                    yystack.yyerrState -= 1;
                }
              else if (yyisErrorAction (yyaction))
                {
                  /* Issue an error message unless the scanner already
                     did. */
                  if (yychar != YYerror)
                    yyreportSyntaxError (&yystack);
                  goto yyuser_error;
                }
              else
                YYCHK1 (yyglrReduce (&yystack, 0, -yyaction, yytrue));
            }
        }

      /* Nondeterministic mode. */
      while (yytrue)
        {
          yysymbol_kind_t yytoken_to_shift;
          YYPTRDIFF_T yys;

          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            yystackp->yytops.yylookaheadNeeds[yys] = yychar != YYEMPTY;

          /* yyprocessOneStack returns one of three things:

              - An error flag.  If the caller is yyprocessOneStack, it
                immediately returns as well.  When the caller is finally
                yyparse, it jumps to an error label via YYCHK1.

              - yyok, but yyprocessOneStack has invoked yymarkStackDeleted
                (&yystack, yys), which sets the top state of yys to NULL.  Thus,
                yyparse's following invocation of yyremoveDeletes will remove
                the stack.

              - yyok, when ready to shift a token.

             Except in the first case, yyparse will invoke yyremoveDeletes and
             then shift the next token onto all remaining stacks.  This
             synchronization of the shift (that is, after all preceding
             reductions on all stacks) helps prevent double destructor calls
             on yylval in the event of memory exhaustion.  */

          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            YYCHK1 (yyprocessOneStack (&yystack, yys, yyposn));
          yyremoveDeletes (&yystack);
          if (yystack.yytops.yysize == 0)
            {
              yyundeleteLastStack (&yystack);
              if (yystack.yytops.yysize == 0)
                yyFail (&yystack, YY_("syntax error"));
              YYCHK1 (yyresolveStack (&yystack));
              YY_DPRINTF ((stderr, "Returning to deterministic operation.\n"));
              yyreportSyntaxError (&yystack);
              goto yyuser_error;
            }

          /* If any yyglrShift call fails, it will fail after shifting.  Thus,
             a copy of yylval will already be on stack 0 in the event of a
             failure in the following loop.  Thus, yychar is set to YYEMPTY
             before the loop to make sure the user destructor for yylval isn't
             called twice.  */
          yytoken_to_shift = YYTRANSLATE (yychar);
          yychar = YYEMPTY;
          yyposn += 1;
          for (yys = 0; yys < yystack.yytops.yysize; yys += 1)
            {
              yy_state_t yystate = yystack.yytops.yystates[yys]->yylrState;
              const short* yyconflicts;
              int yyaction = yygetLRActions (yystate, yytoken_to_shift,
                              &yyconflicts);
              /* Note that yyconflicts were handled by yyprocessOneStack.  */
              YY_DPRINTF ((stderr, "On stack %ld, ", YY_CAST (long, yys)));
              YY_SYMBOL_PRINT ("shifting", yytoken_to_shift, &yylval, &yylloc);
              yyglrShift (&yystack, yys, yyaction, yyposn,
                          &yylval);
              YY_DPRINTF ((stderr, "Stack %ld now in state #%d\n",
                           YY_CAST (long, yys),
                           yystack.yytops.yystates[yys]->yylrState));
            }

          if (yystack.yytops.yysize == 1)
            {
              YYCHK1 (yyresolveStack (&yystack));
              YY_DPRINTF ((stderr, "Returning to deterministic operation.\n"));
              yycompressStack (&yystack);
              break;
            }
        }
      continue;
    yyuser_error:
      yyrecoverSyntaxError (&yystack);
      yyposn = yystack.yytops.yystates[0]->yyposn;
    }

 yyacceptlab:
  yyresult = 0;
  goto yyreturn;

 yybuglab:
  YY_ASSERT (yyfalse);
  goto yyabortlab;

 yyabortlab:
  yyresult = 1;
  goto yyreturn;

 yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturn;

 yyreturn:
  if (yychar != YYEMPTY)
    yydestruct ("Cleanup: discarding lookahead",
                YYTRANSLATE (yychar), &yylval);

  /* If the stack is well-formed, pop the stack until it is empty,
     destroying its entries as we go.  But free the stack regardless
     of whether it is well-formed.  */
  if (yystack.yyitems)
    {
      yyGLRState** yystates = yystack.yytops.yystates;
      if (yystates)
        {
          YYPTRDIFF_T yysize = yystack.yytops.yysize;
          YYPTRDIFF_T yyk;
          for (yyk = 0; yyk < yysize; yyk += 1)
            if (yystates[yyk])
              {
                while (yystates[yyk])
                  {
                    yyGLRState *yys = yystates[yyk];
                    if (yys->yypred != YY_NULLPTR)
                      yydestroyGLRState ("Cleanup: popping", yys);
                    yystates[yyk] = yys->yypred;
                    yystack.yynextFree -= 1;
                    yystack.yyspaceLeft += 1;
                  }
                break;
              }
        }
      yyfreeGLRStack (&yystack);
    }

  return yyresult;
}

/* DEBUGGING ONLY */
#if YYDEBUG
static void
yy_yypstack (yyGLRState* yys)
{
  if (yys->yypred)
    {
      yy_yypstack (yys->yypred);
      YY_FPRINTF ((stderr, " -> "));
    }
  YY_FPRINTF ((stderr, "%d@%ld", yys->yylrState, YY_CAST (long, yys->yyposn)));
}

static void
yypstates (yyGLRState* yyst)
{
  if (yyst == YY_NULLPTR)
    YY_FPRINTF ((stderr, "<null>"));
  else
    yy_yypstack (yyst);
  YY_FPRINTF ((stderr, "\n"));
}

static void
yypstack (yyGLRStack* yystackp, YYPTRDIFF_T yyk)
{
  yypstates (yystackp->yytops.yystates[yyk]);
}

static void
yypdumpstack (yyGLRStack* yystackp)
{
#define YYINDEX(YYX)                                                    \
  YY_CAST (long,                                                        \
           ((YYX)                                                       \
            ? YY_REINTERPRET_CAST (yyGLRStackItem*, (YYX)) - yystackp->yyitems \
            : -1))

  yyGLRStackItem* yyp;
  for (yyp = yystackp->yyitems; yyp < yystackp->yynextFree; yyp += 1)
    {
      YY_FPRINTF ((stderr, "%3ld. ",
                   YY_CAST (long, yyp - yystackp->yyitems)));
      if (*YY_REINTERPRET_CAST (yybool *, yyp))
        {
          YY_ASSERT (yyp->yystate.yyisState);
          YY_ASSERT (yyp->yyoption.yyisState);
          YY_FPRINTF ((stderr, "Res: %d, LR State: %d, posn: %ld, pred: %ld",
                       yyp->yystate.yyresolved, yyp->yystate.yylrState,
                       YY_CAST (long, yyp->yystate.yyposn),
                       YYINDEX (yyp->yystate.yypred)));
          if (! yyp->yystate.yyresolved)
            YY_FPRINTF ((stderr, ", firstVal: %ld",
                         YYINDEX (yyp->yystate.yysemantics.yyfirstVal)));
        }
      else
        {
          YY_ASSERT (!yyp->yystate.yyisState);
          YY_ASSERT (!yyp->yyoption.yyisState);
          YY_FPRINTF ((stderr, "Option. rule: %d, state: %ld, next: %ld",
                       yyp->yyoption.yyrule - 1,
                       YYINDEX (yyp->yyoption.yystate),
                       YYINDEX (yyp->yyoption.yynext)));
        }
      YY_FPRINTF ((stderr, "\n"));
    }

  YY_FPRINTF ((stderr, "Tops:"));
  {
    YYPTRDIFF_T yyi;
    for (yyi = 0; yyi < yystackp->yytops.yysize; yyi += 1)
      YY_FPRINTF ((stderr, "%ld: %ld; ", YY_CAST (long, yyi),
                   YYINDEX (yystackp->yytops.yystates[yyi])));
    YY_FPRINTF ((stderr, "\n"));
  }
#undef YYINDEX
}
#endif

#undef yylval
#undef yychar
#undef yynerrs




#line 961 "parser.y"



char *getBoxName(char *diamond) {

  //NECESSARY   "L"|(?i:box)|(?i:nec)|(?i:necessary)|(?i:k)
  //POSSIBLE    "M"|(?i:dia)|(?i:pos)|(?i:diamond)|(?i:possible)
  char *s = NULL;

  if (!strcmp(diamond,"m")) {
     s = (char *) malloc(2);
     snprintf(s, 2, "%s","l");
  }
  else if (!strcmp(diamond,"dia") || !strcmp(diamond,"diamond")) {
    s = (char *) malloc(4);
    snprintf(s, 4, "%s","box");
  }
  else if (!strcmp(diamond,"possible")) {
    s = (char *) malloc(10);
    snprintf(s, 10, "%s","necessary");
  }
  free(diamond);
  return s;
}

void yyerror (char const *s) {
  fprintf (stderr, "\n Error: %s, line %d, column %d\n",s,numlines,numcolumns);
}

extern void print_symbols_tables(void);

void process_ordering(prop_list *props) {
  while(props != NULL) {
    if (strcmp(props->prop,"start") && strcmp(props->prop,"true") && strcmp(props->prop,"false")) {
      prop_node *p = insert_p_node(props->prop);
      p->occur = 0;
    }
    // not freeing the name because it is used in the symbol table.
    prop_list *aux;
    aux = props;
    props = props->next;
    free(aux);
    aux = NULL;
  }
  print_symbols_tables();
}



unsigned int process_axiom(char *name) {
  if (!strcmp(name, "euc1"))
    return EUC1;
  else if (!strcmp(name, "euc2"))
    return EUC2;
  else if (!strcmp(name,"five"))
    return FIVE;
  else if (!strcmp(name,"four1") || !strcmp(name,"trans"))
    return FOUR1;
  else if (!strcmp(name,"four") || !strcmp(name, "four2"))
    return FOUR2;
  else if (!strcmp(name,"t") || !strcmp(name,"ref") || (!strcmp(name,"res_0100")))
    return T;
  else if (!strcmp(name,"sym") || !strcmp(name, "res_1100"))
    return SYM;
  else if (!strcmp(name,"ser") || !strcmp(name, "res_0101"))
    return SER;
  else if (!strcmp(name, "res_0001"))
    return RES_0001;
  else if (!strcmp(name, "res_0001_mod"))
    return RES_0001_MOD;
  else if (!strcmp(name, "res_0011"))
    return RES_0011;
  else if (!strcmp(name, "res_0011_mod"))
    return RES_0011_MOD;
  else if (!strcmp(name, "res_0111"))
    return RES_0111;
  else if (!strcmp(name, "res_1101"))
    return RES_1101;
  else if (!strcmp(name, "res_1111"))
    return RES_1111;
  else if (!strcmp(name, "res_0010"))
    return RES_0010;
  else if (!strcmp(name, "res_0010_mod"))
    return RES_0010_MOD;
  else if (!strcmp(name, "res_1000"))
    return RES_1000;
  else if (!strcmp(name, "res_1010"))
    return RES_1010;
  else if (!strcmp(name, "res_0111"))
    return RES_0111;
  else if (!strcmp(name, "res_1101"))
    return RES_1101;
  else if (!strcmp(name, "res_1110"))
    return RES_1110;
  else if (!strcmp(name, "res_1011"))
    return RES_1011;
  else if (!strcmp(name, "mck"))
    return MCK;

  return 0;
}
