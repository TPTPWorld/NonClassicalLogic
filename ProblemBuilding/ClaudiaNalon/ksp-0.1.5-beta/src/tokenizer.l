 /* Scanner for modal formulae
 */

%{
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "parser.tab.h"

struct prop_node *propsname = NULL;
struct prop_node *propsid = NULL;    /* important! initialize to NULL */
struct agent_node *agentsname = NULL; 
struct agent_node *agentsid = NULL;

/* global variables */

int numtokens = 0;
int numlines = 1;
int numcolumns = 1;
int linearise = 0;

%}

%option noinput nounput
%option bison-bridge
%option noyywrap

AND         "^"|"&"|(?i:and)
OR          "+"|"|"|(?i:or)|(?i:v)
NOT         "!"|"-"|"~"|(?i:not)|(?i:neg)
IFF         "<->"|"<=>"|(?i:iff)
ONLYIF      "<-"|"<="|(?i:onlyif)
IMPLY       "->"|"=>"|(?i:imp)|(?i:imply)|(?i:implies)
NECESSARY   "L"|(?i:box)|(?i:nec)|(?i:necessary)
POSSIBLE    "M"|(?i:dia)|(?i:pos)|(?i:diamond)|(?i:possible)
NAME        [[:alpha:]][[:alnum:]_]*
NUMBER      [[:digit:]]+
LPAREN      "("|"{"|"["
RPAREN      ")"|"}"|"]"
WS          [ \t\v\f\$]
EOL         [\n\r]
PLUS        "+"?|"++"?|"-"?|"--"?
%x BL_COMMENT
%x LN_COMMENT

%%

(?i:set)         { numcolumns+=yyleng; return TSET; }
(?i:sos)         { numcolumns+=yyleng; return TSOS; }  
(?i:usable)      { numcolumns+=yyleng; return TUSABLE; }  
(?i:clauses)     { numcolumns+=yyleng; return TCLAUSES; } 
(?i:formulas)    { numcolumns+=yyleng; return TFORMULAS; } 
(?i:end_of_list) { numcolumns+=yyleng; return TEND; }

(?i:start)   { numtokens++; numcolumns+=yyleng; return TSTART; }
(?i:true)    { numtokens++; numcolumns+=yyleng; return TTRUE; }
(?i:false)   { numtokens++; numcolumns+=yyleng; return TFALSE; }

{AND}        { numtokens++; numcolumns+=yyleng; return TAND; }
{OR}         { numtokens++; numcolumns+=yyleng; return TOR; }
{NOT}        { numtokens++; numcolumns+=yyleng; return TNOT; }
{IMPLY}      { numtokens++; numcolumns+=yyleng; return TIMPLY; }
{ONLYIF}     { numtokens++; numcolumns+=yyleng; return TONLYIF; }
{IFF}        { numtokens++; numcolumns+=yyleng; linearise++; return TIFF; }
{NECESSARY}  { numtokens++; numcolumns+=yyleng; yylval->strValue = strdup(yytext); int i = 0; for (i=0;i<=yyleng;i++) yylval->strValue[i]=tolower(yylval->strValue[i]); return TNECESSARY; }
{POSSIBLE}   { numtokens++; numcolumns+=yyleng; yylval->strValue = strdup(yytext); int i = 0; for (i=0;i<=yyleng;i++) yylval->strValue[i]=tolower(yylval->strValue[i]); return TPOSSIBLE; }
"["          { numtokens++; numcolumns+=yyleng; return TOBOX; }
"]"          { numtokens++; numcolumns+=yyleng; return TCBOX; }
"<"          { numtokens++; numcolumns+=yyleng; return TODIA; }
">"          { numtokens++; numcolumns+=yyleng; return TCDIA; }

{LPAREN}     { numtokens++; numcolumns+=yyleng; return TLPAREN; }
{RPAREN}     { numtokens++; numcolumns+=yyleng; return TRPAREN; }

{NAME}{PLUS}       { numtokens++; numcolumns+=yyleng;  yylval->strValue = strdup(yytext); int i = 0; for (i=0;i<=yyleng;i++) yylval->strValue[i]=tolower(yylval->strValue[i]); return TNAME; }
{NUMBER}     { numtokens++; numcolumns+=yyleng; yylval->strValue = strdup(yytext); return TNUMBER; }
"."          { numtokens++; numcolumns++; return TDOT; }
","          { numtokens++; numcolumns++; return TCOMMA; }
{EOL}        { numlines++; numcolumns=1; }
{WS}         { numcolumns++; }

"/*"              { BEGIN (BL_COMMENT); }
<BL_COMMENT>"*/"  { BEGIN (INITIAL); }
<BL_COMMENT>{EOL} { ++ numlines; numcolumns = 1; }
<BL_COMMENT>.     { ++ numcolumns; }

"//"|"%"               { BEGIN (LN_COMMENT); }
<LN_COMMENT>{EOL} { ++ numlines; numcolumns = 1; BEGIN (INITIAL); }
<LN_COMMENT>.     { ++ numcolumns; }

%%
