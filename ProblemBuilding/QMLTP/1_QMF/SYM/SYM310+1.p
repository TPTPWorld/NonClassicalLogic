%--------------------------------------------------------------------------
% File     : SYM310+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : PSAT - CNF - K=4 C=30 V=8 D=1.3
% Version  : Especial.
% English  : 

% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-psat-cnf-K4-C30-V8-D1.3 [Sch01]

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.50         0.50          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.50         0.50         0.50          v1.1
%             S4  0.50         0.50         0.50          v1.1
%             S5  0.50         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(persat1,axiom,
    (v1 | v2 | (~ v3) | (#box : (~ v7)))
    ).

qmf(persat2,axiom,
    (v2 | v3 | v7 | (#box : v1))
    ).

qmf(persat3,axiom,
    (v2 | v4 | v6 | (#box : (~ v7)))
    ).

qmf(persat4,axiom,
    (v2 | (~ v3) | (#box : v6) | (#box : v7))
    ).

qmf(persat5,axiom,
    (v2 | (~ v5) | (#box : (~ v4)) | (#box : (~ v8)))
    ).

qmf(persat6,axiom,
    (v2 | (~ v7) | (#box : v6) | (#box : (~ v4)))
    ).

qmf(persat7,axiom,
    (v3 | v4 | (#box : v4) | (#box : v6))
    ).

qmf(persat8,axiom,
    (v3 | (~ v2) | (#box : v7) | (#box : (~ v5)))
    ).

qmf(persat9,axiom,
    (v3 | (~ v5) | (#box : v3) | (#box : v5))
    ).

qmf(persat10,axiom,
    (v3 | (~ v8) | (#box : v4) | (#box : (~ v8)))
    ).

qmf(persat11,axiom,
    (v3 | (#box : v1) | (#box : v4) | (#box : (~ v2)))
    ).

qmf(persat12,axiom,
    (v4 | (~ v5) | (#box : v5) | (#box : (~ v2)))
    ).

qmf(persat13,axiom,
    (v5 | v8 | (#box : (~ v1)) | (#box : (~ v5)))
    ).

qmf(persat14,axiom,
    (v5 | (~ v3) | (~ v8) | (#box : (~ v4)))
    ).

qmf(persat15,axiom,
    (v5 | (~ v4) | (#box : v2) | (#box : v8))
    ).

qmf(persat16,axiom,
    (v6 | v7 | (~ v1) | (#box : (~ v4)))
    ).

qmf(persat17,axiom,
    (v6 | v8 | (~ v2) | (#box : (~ v3)))
    ).

qmf(persat18,axiom,
    (v6 | v8 | (~ v4) | (#box : (~ v2)))
    ).

qmf(persat19,axiom,
    (v6 | v8 | (#box : v2) | (#box : v7))
    ).

qmf(persat20,axiom,
    (v6 | (#box : v6) | (#box : (~ v2)) | (#box : (~ v5)))
    ).

qmf(persat21,axiom,
    (v6 | (#box : (~ v4)) | (#box : (~ v5)) | (#box : (~ v8)))
    ).

qmf(persat22,axiom,
    (v7 | (~ v3) | (~ v6) | (#box : (~ v6)))
    ).

qmf(persat23,axiom,
    (v7 | (#box : v3) | (#box : v5) | (#box : (~ v4)))
    ).

qmf(persat24,axiom,
    (v8 | (~ v6) | (#box : v1) | (#box : v2))
    ).

qmf(persat25,axiom,
    ((~ v2) | (#box : v1) | (#box : v7) | (#box : v8))
    ).

qmf(persat26,axiom,
    ((~ v4) | (~ v8) | (#box : v5) | (#box : (~ v8)))
    ).

qmf(persat27,axiom,
    ((~ v4) | (#box : v2) | (#box : (~ v4)) | (#box : (~ v7)))
    ).

qmf(persat28,axiom,
    ((~ v5) | (~ v6) | (#box : v1) | (#box : v2))
    ).

qmf(persat29,axiom,
    ((~ v6) | (#box : v1) | (#box : v2) | (#box : (~ v4)))
    ).

qmf(persat30,axiom,
    ((~ v6) | (#box : v1) | (#box : (~ v1)) | (#box : (~ v5)))
    ).

qmf(deontic1,axiom,
    (#dia : $true)
    ).

qmf(result1,conjecture,
    $false
    ).

