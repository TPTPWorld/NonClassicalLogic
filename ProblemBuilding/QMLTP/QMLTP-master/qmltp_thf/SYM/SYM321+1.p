% semantics
% modalities

% propositions
thf(v1_type,type,(v1 : ($o))).
thf(v2_type,type,(v2 : ($o))).
thf(v3_type,type,(v3 : ($o))).
thf(v4_type,type,(v4 : ($o))).
thf(v5_type,type,(v5 : ($o))).
thf(v6_type,type,(v6 : ($o))).
thf(v7_type,type,(v7 : ($o))).
thf(v8_type,type,(v8 : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM321+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : PSAT - CNF - K=4 C=40 V=8 D=2.8
% Version  : Especial.
% English  :
% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-psat-cnf-K4-C40-V8-D2.8 [Sch01]
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.50         0.50          v1.1
%             D   1.00         0.83         0.83          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.75         0.67         0.67          v1.1
%             S5  0.75         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( persat1 , axiom , ( v1 | ( ~ ( v2 ) ) | ( ~ ( v3 ) ) | ( $box @ ( $box @ ( ~ ( v7 ) ) ) ) ) ) .
thf ( persat2 , axiom , ( v1 | ( ~ ( v3 ) ) | ( $box @ ( ~ ( v5 ) ) ) | ( $box @ ( $box @ v3 ) ) ) ) .
thf ( persat3 , axiom , ( v2 | v3 | ( $box @ ( ~ ( v5 ) ) ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat4 , axiom , ( v2 | v5 | v7 | ( $box @ ( $box @ v8 ) ) ) ) .
thf ( persat5 , axiom , ( v2 | v8 | ( $box @ ( $box @ v8 ) ) | ( $box @ ( $box @ ( ~ ( v6 ) ) ) ) ) ) .
thf ( persat6 , axiom , ( v2 | ( ~ ( v3 ) ) | ( $box @ v4 ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat7 , axiom , ( v2 | ( ~ ( v3 ) ) | ( $box @ ( $box @ ( ~ ( v6 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat8 , axiom , ( v3 | ( $box @ v4 ) | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat9 , axiom , ( v4 | v5 | ( $box @ v4 ) | ( $box @ ( $box @ v5 ) ) ) ) .
thf ( persat10 , axiom , ( v4 | ( ~ ( v6 ) ) | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat11 , axiom , ( v4 | ( $box @ v1 ) | ( $box @ ( ~ ( v6 ) ) ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat12 , axiom , ( v4 | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ v8 ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat13 , axiom , ( v5 | ( ~ ( v1 ) ) | ( $box @ v8 ) | ( $box @ ( $box @ v3 ) ) ) ) .
thf ( persat14 , axiom , ( v6 | v7 | ( $box @ v4 ) | ( $box @ ( $box @ v7 ) ) ) ) .
thf ( persat15 , axiom , ( v6 | ( ~ ( v2 ) ) | ( ~ ( v8 ) ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat16 , axiom , ( v6 | ( $box @ v5 ) | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat17 , axiom , ( v6 | ( $box @ v5 ) | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ v5 ) ) ) ) .
thf ( persat18 , axiom , ( v7 | ( $box @ v1 ) | ( $box @ ( ~ ( v7 ) ) ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat19 , axiom , ( v7 | ( $box @ v2 ) | ( $box @ v3 ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat20 , axiom , ( v8 | ( ~ ( v3 ) ) | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat21 , axiom , ( v8 | ( ~ ( v6 ) ) | ( $box @ ( ~ ( v7 ) ) ) | ( $box @ ( $box @ v6 ) ) ) ) .
thf ( persat22 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v4 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v7 ) ) ) ) ) ) .
thf ( persat23 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v5 ) ) | ( $box @ v2 ) | ( $box @ ( $box @ ( ~ ( v6 ) ) ) ) ) ) .
thf ( persat24 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v7 ) ) | ( $box @ ( ~ ( v5 ) ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat25 , axiom , ( ( ~ ( v1 ) ) | ( $box @ ( $box @ v5 ) ) | ( $box @ ( $box @ ( ~ ( v1 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v5 ) ) ) ) ) ) .
thf ( persat26 , axiom , ( ( ~ ( v2 ) ) | ( ~ ( v7 ) ) | ( ~ ( v8 ) ) | ( $box @ ( $box @ v5 ) ) ) ) .
thf ( persat27 , axiom , ( ( ~ ( v2 ) ) | ( $box @ v1 ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat28 , axiom , ( ( ~ ( v2 ) ) | ( $box @ v2 ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v5 ) ) ) ) ) ) .
thf ( persat29 , axiom , ( ( ~ ( v2 ) ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( $box @ v6 ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat30 , axiom , ( ( ~ ( v5 ) ) | ( ~ ( v6 ) ) | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ v6 ) ) ) ) .
thf ( persat31 , axiom , ( ( ~ ( v5 ) ) | ( $box @ v4 ) | ( $box @ ( ~ ( v6 ) ) ) | ( $box @ ( $box @ v8 ) ) ) ) .
thf ( persat32 , axiom , ( ( ~ ( v5 ) ) | ( $box @ ( ~ ( v7 ) ) ) | ( $box @ ( $box @ v4 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat33 , axiom , ( ( ~ ( v5 ) ) | ( $box @ ( $box @ v6 ) ) | ( $box @ ( $box @ ( ~ ( v1 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat34 , axiom , ( ( ~ ( v6 ) ) | ( ~ ( v7 ) ) | ( $box @ ( ~ ( v3 ) ) ) | ( $box @ ( $box @ ( ~ ( v8 ) ) ) ) ) ) .
thf ( persat35 , axiom , ( ( ~ ( v6 ) ) | ( $box @ v2 ) | ( $box @ ( ~ ( v5 ) ) ) | ( $box @ ( $box @ v5 ) ) ) ) .
thf ( persat36 , axiom , ( ( ~ ( v6 ) ) | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ v4 ) ) | ( $box @ ( $box @ ( ~ ( v1 ) ) ) ) ) ) .
thf ( persat37 , axiom , ( ( ~ ( v6 ) ) | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ v7 ) ) | ( $box @ ( $box @ ( ~ ( v6 ) ) ) ) ) ) .
thf ( persat38 , axiom , ( ( ~ ( v7 ) ) | ( $box @ v2 ) | ( $box @ v6 ) | ( $box @ ( $box @ ( ~ ( v7 ) ) ) ) ) ) .
thf ( persat39 , axiom , ( ( ~ ( v7 ) ) | ( $box @ v5 ) | ( $box @ ( $box @ v1 ) ) | ( $box @ ( $box @ v3 ) ) ) ) .
thf ( persat40 , axiom , ( ( ~ ( v8 ) ) | ( $box @ v8 ) | ( $box @ ( $box @ v7 ) ) | ( $box @ ( $box @ ( ~ ( v7 ) ) ) ) ) ) .
thf ( deontic1 , axiom , ( $dia @ $true ) ) .
thf ( result1 , conjecture , $false ) .