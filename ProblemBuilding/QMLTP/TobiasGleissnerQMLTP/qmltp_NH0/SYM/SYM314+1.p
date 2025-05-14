
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
% File     : SYM314+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : PSAT - CNF - K=4 C=40 V=4 D=2.3
% Version  : Especial.
% English  :
% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-psat-cnf-K4-C40-V4-D2.3 [Sch01]
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.50         0.50          v1.1
%             D   1.00         0.83         0.83          v1.1
%             T   0.50         0.50         0.50          v1.1
%             S4  0.50         0.50         0.50          v1.1
%             S5  0.50         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(persat1,axiom,( v1 | v2 | v3 | ( {$box} @ ( {$box} @ v3 ) ) ) ).
thf(persat2,axiom,( v1 | v2 | ( {$box} @ v4 ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat3,axiom,( v1 | ( ~ ( v2 ) ) | ( {$box} @ ( {$box} @ v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat4,axiom,( v1 | ( ~ ( v3 ) ) | ( {$box} @ ( {$box} @ v3 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat5,axiom,( v1 | ( {$box} @ v1 ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) ) ).
thf(persat6,axiom,( v1 | ( {$box} @ v4 ) | ( {$box} @ ( ~ ( v1 ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat7,axiom,( v1 | ( {$box} @ v4 ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat8,axiom,( v1 | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) ) ).
thf(persat9,axiom,( v1 | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ v3 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat10,axiom,( v2 | v3 | ( {$box} @ ( ~ ( v2 ) ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat11,axiom,( v2 | v4 | ( {$box} @ ( ~ ( v3 ) ) ) | ( {$box} @ ( {$box} @ v1 ) ) ) ).
thf(persat12,axiom,( v2 | v4 | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) ) ).
thf(persat13,axiom,( v2 | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat14,axiom,( v2 | ( {$box} @ v1 ) | ( {$box} @ ( ~ ( v1 ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat15,axiom,( v2 | ( {$box} @ v3 ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat16,axiom,( v2 | ( {$box} @ v3 ) | ( {$box} @ ( {$box} @ v3 ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat17,axiom,( v2 | ( {$box} @ ( ~ ( v4 ) ) ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat18,axiom,( v3 | v4 | ( {$box} @ v4 ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat19,axiom,( v3 | ( ~ ( v2 ) ) | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) ) ).
thf(persat20,axiom,( v3 | ( ~ ( v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat21,axiom,( v3 | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat22,axiom,( v3 | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat23,axiom,( v4 | ( ~ ( v1 ) ) | ( ~ ( v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat24,axiom,( v4 | ( ~ ( v1 ) ) | ( {$box} @ ( ~ ( v2 ) ) ) | ( {$box} @ ( {$box} @ v1 ) ) ) ).
thf(persat25,axiom,( v4 | ( ~ ( v1 ) ) | ( {$box} @ ( {$box} @ v3 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat26,axiom,( v4 | ( ~ ( v2 ) ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ v2 ) ) ) ).
thf(persat27,axiom,( v4 | ( ~ ( v3 ) ) | ( {$box} @ ( ~ ( v2 ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat28,axiom,( v4 | ( ~ ( v3 ) ) | ( {$box} @ ( {$box} @ v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat29,axiom,( ( ~ ( v1 ) ) | ( ~ ( v3 ) ) | ( {$box} @ ( {$box} @ v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat30,axiom,( ( ~ ( v1 ) ) | ( ~ ( v4 ) ) | ( {$box} @ v3 ) | ( {$box} @ ( {$box} @ v2 ) ) ) ).
thf(persat31,axiom,( ( ~ ( v1 ) ) | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat32,axiom,( ( ~ ( v1 ) ) | ( {$box} @ ( ~ ( v1 ) ) ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat33,axiom,( ( ~ ( v1 ) ) | ( {$box} @ ( ~ ( v4 ) ) ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ).
thf(persat34,axiom,( ( ~ ( v1 ) ) | ( {$box} @ ( {$box} @ v2 ) ) | ( {$box} @ ( {$box} @ v3 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat35,axiom,( ( ~ ( v1 ) ) | ( {$box} @ ( {$box} @ v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v3 ) ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat36,axiom,( ( ~ ( v2 ) ) | ( ~ ( v3 ) ) | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ).
thf(persat37,axiom,( ( ~ ( v2 ) ) | ( ~ ( v4 ) ) | ( {$box} @ ( {$box} @ v1 ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(persat38,axiom,( ( ~ ( v2 ) ) | ( {$box} @ v1 ) | ( {$box} @ ( ~ ( v2 ) ) ) | ( {$box} @ ( {$box} @ v1 ) ) ) ).
thf(persat39,axiom,( ( ~ ( v2 ) ) | ( {$box} @ v2 ) | ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) | ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ).
thf(persat40,axiom,( ( ~ ( v2 ) ) | ( {$box} @ ( ~ ( v2 ) ) ) | ( {$box} @ ( ~ ( v3 ) ) ) | ( {$box} @ ( {$box} @ v4 ) ) ) ).
thf(deontic1,axiom,( {$dia} @ $true ) ).
thf(result1,conjecture,$false ).
