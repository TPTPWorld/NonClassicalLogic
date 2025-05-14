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
% File     : SYM330+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : PSAT - CNF - K=4 C=50 V=8 D=1.1
% Version  : Especial.
% English  :
% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-psat-cnf-K4-C50-V8-D1.1 [Sch01]
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
thf ( persat1 , axiom , ( v1 | v2 | v3 | ( $box @ ( ~ ( v5 ) ) ) ) ) .
thf ( persat2 , axiom , ( v1 | v3 | v5 | ( $box @ v8 ) ) ) .
thf ( persat3 , axiom , ( v1 | v4 | ( ~ ( v7 ) ) | ( $box @ v4 ) ) ) .
thf ( persat4 , axiom , ( v1 | v7 | ( ~ ( v6 ) ) | ( $box @ v6 ) ) ) .
thf ( persat5 , axiom , ( v1 | ( ~ ( v2 ) ) | ( $box @ ( ~ ( v4 ) ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat6 , axiom , ( v1 | ( ~ ( v5 ) ) | ( $box @ v1 ) | ( $box @ ( ~ ( v7 ) ) ) ) ) .
thf ( persat7 , axiom , ( v1 | ( $box @ v1 ) | ( $box @ v5 ) | ( $box @ v7 ) ) ) .
thf ( persat8 , axiom , ( v1 | ( $box @ v2 ) | ( $box @ v3 ) | ( $box @ ( ~ ( v4 ) ) ) ) ) .
thf ( persat9 , axiom , ( v2 | v4 | ( ~ ( v7 ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat10 , axiom , ( v2 | v6 | ( $box @ v2 ) | ( $box @ ( ~ ( v2 ) ) ) ) ) .
thf ( persat11 , axiom , ( v2 | v7 | ( $box @ v4 ) | ( $box @ ( ~ ( v5 ) ) ) ) ) .
thf ( persat12 , axiom , ( v2 | ( ~ ( v3 ) ) | ( ~ ( v5 ) ) | ( $box @ v7 ) ) ) .
thf ( persat13 , axiom , ( v2 | ( ~ ( v3 ) ) | ( $box @ v7 ) | ( $box @ ( ~ ( v3 ) ) ) ) ) .
thf ( persat14 , axiom , ( v2 | ( ~ ( v7 ) ) | ( ~ ( v8 ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat15 , axiom , ( v3 | v6 | ( $box @ v6 ) | ( $box @ v7 ) ) ) .
thf ( persat16 , axiom , ( v3 | v6 | ( $box @ v6 ) | ( $box @ ( ~ ( v5 ) ) ) ) ) .
thf ( persat17 , axiom , ( v3 | v6 | ( $box @ ( ~ ( v5 ) ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat18 , axiom , ( v3 | v7 | ( ~ ( v2 ) ) | ( $box @ v4 ) ) ) .
thf ( persat19 , axiom , ( v3 | v7 | ( ~ ( v4 ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat20 , axiom , ( v3 | ( ~ ( v1 ) ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat21 , axiom , ( v3 | ( $box @ v6 ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( ~ ( v5 ) ) ) ) ) .
thf ( persat22 , axiom , ( v4 | v5 | ( ~ ( v7 ) ) | ( $box @ v2 ) ) ) .
thf ( persat23 , axiom , ( v4 | ( ~ ( v1 ) ) | ( $box @ v1 ) | ( $box @ v8 ) ) ) .
thf ( persat24 , axiom , ( v4 | ( ~ ( v2 ) ) | ( $box @ v3 ) | ( $box @ v5 ) ) ) .
thf ( persat25 , axiom , ( v4 | ( ~ ( v6 ) ) | ( $box @ v8 ) | ( $box @ ( ~ ( v6 ) ) ) ) ) .
thf ( persat26 , axiom , ( v4 | ( ~ ( v7 ) ) | ( ~ ( v8 ) ) | ( $box @ v8 ) ) ) .
thf ( persat27 , axiom , ( v5 | v8 | ( $box @ v1 ) | ( $box @ v7 ) ) ) .
thf ( persat28 , axiom , ( v5 | ( ~ ( v6 ) ) | ( $box @ v6 ) | ( $box @ v7 ) ) ) .
thf ( persat29 , axiom , ( v5 | ( $box @ v1 ) | ( $box @ v8 ) | ( $box @ ( ~ ( v2 ) ) ) ) ) .
thf ( persat30 , axiom , ( v5 | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( ~ ( v6 ) ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat31 , axiom , ( v6 | v7 | ( ~ ( v1 ) ) | ( $box @ v8 ) ) ) .
thf ( persat32 , axiom , ( v6 | ( ~ ( v2 ) ) | ( $box @ v3 ) | ( $box @ v8 ) ) ) .
thf ( persat33 , axiom , ( v6 | ( ~ ( v5 ) ) | ( ~ ( v8 ) ) | ( $box @ v4 ) ) ) .
thf ( persat34 , axiom , ( v7 | ( ~ ( v1 ) ) | ( $box @ v7 ) | ( $box @ ( ~ ( v6 ) ) ) ) ) .
thf ( persat35 , axiom , ( v7 | ( ~ ( v3 ) ) | ( $box @ v4 ) | ( $box @ ( ~ ( v1 ) ) ) ) ) .
thf ( persat36 , axiom , ( v8 | ( ~ ( v5 ) ) | ( $box @ v3 ) | ( $box @ ( ~ ( v5 ) ) ) ) ) .
thf ( persat37 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v3 ) ) | ( ~ ( v7 ) ) | ( $box @ v4 ) ) ) .
thf ( persat38 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v3 ) ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( ~ ( v6 ) ) ) ) ) .
thf ( persat39 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v5 ) ) | ( $box @ v7 ) | ( $box @ ( ~ ( v3 ) ) ) ) ) .
thf ( persat40 , axiom , ( ( ~ ( v1 ) ) | ( $box @ v5 ) | ( $box @ v6 ) | ( $box @ ( ~ ( v3 ) ) ) ) ) .
thf ( persat41 , axiom , ( ( ~ ( v2 ) ) | ( ~ ( v5 ) ) | ( $box @ v8 ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( persat42 , axiom , ( ( ~ ( v2 ) ) | ( ~ ( v6 ) ) | ( $box @ v5 ) | ( $box @ ( ~ ( v6 ) ) ) ) ) .
thf ( persat43 , axiom , ( ( ~ ( v2 ) ) | ( $box @ v1 ) | ( $box @ ( ~ ( v3 ) ) ) | ( $box @ ( ~ ( v4 ) ) ) ) ) .
thf ( persat44 , axiom , ( ( ~ ( v3 ) ) | ( $box @ v2 ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( ~ ( v3 ) ) ) ) ) .
thf ( persat45 , axiom , ( ( ~ ( v4 ) ) | ( ~ ( v7 ) ) | ( $box @ v5 ) | ( $box @ v8 ) ) ) .
thf ( persat46 , axiom , ( ( ~ ( v5 ) ) | ( $box @ v1 ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( ~ ( v4 ) ) ) ) ) .
thf ( persat47 , axiom , ( ( ~ ( v6 ) ) | ( ~ ( v7 ) ) | ( $box @ v7 ) | ( $box @ ( ~ ( v2 ) ) ) ) ) .
thf ( persat48 , axiom , ( ( ~ ( v7 ) ) | ( $box @ v3 ) | ( $box @ v4 ) | ( $box @ v8 ) ) ) .
thf ( persat49 , axiom , ( ( ~ ( v7 ) ) | ( $box @ v4 ) | ( $box @ v7 ) | ( $box @ ( ~ ( v7 ) ) ) ) ) .
thf ( persat50 , axiom , ( ( ~ ( v8 ) ) | ( $box @ v1 ) | ( $box @ ( ~ ( v3 ) ) ) | ( $box @ ( ~ ( v8 ) ) ) ) ) .
thf ( deontic1 , axiom , ( $dia @ $true ) ) .
thf ( result1 , conjecture , $false ) .