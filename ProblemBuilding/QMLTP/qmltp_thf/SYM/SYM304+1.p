% semantics
% modalities

% propositions
thf(v1_type,type,(v1 : ($o))).
thf(v2_type,type,(v2 : ($o))).
thf(v3_type,type,(v3 : ($o))).
thf(v4_type,type,(v4 : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM304+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : PSAT - CNF - K=4 C=20 V=4 D=2.7
% Version  : Especial.
% English  :
% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-psat-cnf-K4-C20-V4-D2.7 [Sch01]
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
thf ( persat1 , axiom , ( v1 | v4 | ( ~ ( v3 ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat2 , axiom , ( v1 | ( $box @ ( ~ ( v4 ) ) ) | ( $box @ ( $box @ v4 ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat3 , axiom , ( v2 | v4 | ( $box @ v1 ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat4 , axiom , ( v2 | ( $box @ v4 ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat5 , axiom , ( v3 | v4 | ( $box @ ( $box @ v1 ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat6 , axiom , ( v3 | v4 | ( $box @ ( $box @ v1 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat7 , axiom , ( v3 | ( ~ ( v1 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v4 ) ) ) ) ) ) .
thf ( persat8 , axiom , ( v3 | ( ~ ( v2 ) ) | ( $box @ v1 ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat9 , axiom , ( v3 | ( ~ ( v2 ) ) | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) ) ) .
thf ( persat10 , axiom , ( v3 | ( ~ ( v4 ) ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( $box @ v1 ) ) ) ) .
thf ( persat11 , axiom , ( v3 | ( $box @ ( ~ ( v3 ) ) ) | ( $box @ ( ~ ( v4 ) ) ) | ( $box @ ( $box @ v3 ) ) ) ) .
thf ( persat12 , axiom , ( v3 | ( $box @ ( $box @ v3 ) ) | ( $box @ ( $box @ ( ~ ( v2 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat13 , axiom , ( v4 | ( ~ ( v2 ) ) | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat14 , axiom , ( v4 | ( $box @ v2 ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( $box @ v1 ) ) ) ) .
thf ( persat15 , axiom , ( v4 | ( $box @ v4 ) | ( $box @ ( $box @ v2 ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( persat16 , axiom , ( v4 | ( $box @ ( ~ ( v1 ) ) ) | ( $box @ ( ~ ( v3 ) ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat17 , axiom , ( ( ~ ( v1 ) ) | ( ~ ( v2 ) ) | ( $box @ ( $box @ ( ~ ( v1 ) ) ) ) | ( $box @ ( $box @ ( ~ ( v4 ) ) ) ) ) ) .
thf ( persat18 , axiom , ( ( ~ ( v3 ) ) | ( $box @ v2 ) | ( $box @ ( $box @ v4 ) ) | ( $box @ ( $box @ ( ~ ( v3 ) ) ) ) ) ) .
thf ( persat19 , axiom , ( ( ~ ( v3 ) ) | ( $box @ ( ~ ( v2 ) ) ) | ( $box @ ( $box @ v1 ) ) | ( $box @ ( $box @ v2 ) ) ) ) .
thf ( persat20 , axiom , ( ( ~ ( v4 ) ) | ( $box @ v2 ) | ( $box @ ( $box @ v1 ) ) | ( $box @ ( $box @ v4 ) ) ) ) .
thf ( deontic1 , axiom , ( $dia @ $true ) ) .
thf ( result1 , conjecture , $false ) .