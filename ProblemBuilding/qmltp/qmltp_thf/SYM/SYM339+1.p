% semantics
% modalities

% propositions
thf(v10_type,type,(v10 : ($o))).
thf(v12_type,type,(v12 : ($o))).
thf(v11_type,type,(v11 : ($o))).
thf(v14_type,type,(v14 : ($o))).
thf(v13_type,type,(v13 : ($o))).
thf(v16_type,type,(v16 : ($o))).
thf(v15_type,type,(v15 : ($o))).
thf(v18_type,type,(v18 : ($o))).
thf(v17_type,type,(v17 : ($o))).
thf(v19_type,type,(v19 : ($o))).
thf(v20_type,type,(v20 : ($o))).
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
% File     : SYM339+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : QBF-CNFSSS-K=4 C=20 V=4 D=4.6
% Version  : Especial.
% English  :
% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-qbf-cnfSSS-K4-C20-V4-D4.6 [Sch01]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Non-Theorem  Unsolved      v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( mod1 , hypothesis , ( {$box} @ ( v20 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v13 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v5 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ~ ( v1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod2 , hypothesis , ( {$box} @ ( v20 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v10 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v6 | ( {$box} @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod3 , hypothesis , ( {$box} @ ( ( ~ ( v20 ) ) | ( {$box} @ ( v19 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v15 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod4 , hypothesis , ( {$box} @ ( ( ~ ( v20 ) ) | ( {$box} @ ( {$box} @ ( v18 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v8 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( ~ ( v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod5 , hypothesis , ( {$box} @ ( {$box} @ ( v19 | ( {$box} @ ( v18 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v8 | ( {$box} @ ( {$box} @ ( {$box} @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod6 , hypothesis , ( {$box} @ ( {$box} @ ( v19 | ( {$box} @ ( {$box} @ ( {$box} @ ( v16 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v6 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod7 , hypothesis , ( {$box} @ ( {$box} @ ( v19 | ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v16 ) ) | ( {$box} @ ( {$box} @ ( v14 | ( {$box} @ ( {$box} @ ( ~ ( v12 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod8 , hypothesis , ( {$box} @ ( {$box} @ ( v19 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v8 | ( {$box} @ ( v7 | ( {$box} @ ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod9 , hypothesis , ( {$box} @ ( {$box} @ ( ( ~ ( v19 ) ) | ( {$box} @ ( {$box} @ ( v17 | ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v14 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod10 , hypothesis , ( {$box} @ ( {$box} @ ( ( ~ ( v19 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v14 ) ) | ( {$box} @ ( ( ~ ( v13 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ~ ( v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod11 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v17 | ( {$box} @ ( ( ~ ( v16 ) ) | ( {$box} @ ( v15 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ v11 ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod12 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v17 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v13 | ( {$box} @ ( {$box} @ ( {$box} @ ( v10 | ( {$box} @ ( {$box} @ ( {$box} @ v7 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod13 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v15 | ( {$box} @ ( {$box} @ ( v13 | ( {$box} @ ( {$box} @ ( v11 | ( {$box} @ ( ~ ( v10 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod14 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v15 | ( {$box} @ ( {$box} @ ( ( ~ ( v13 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v4 ) ) | ( {$box} @ ( ~ ( v3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod15 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v15 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v11 | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v5 | ( {$box} @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod16 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v15 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v5 ) ) | ( {$box} @ ( v4 | ( {$box} @ ( {$box} @ ( ~ ( v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod17 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v13 ) ) | ( {$box} @ ( {$box} @ ( ( ~ ( v11 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v7 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod18 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v10 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( ( ~ ( v6 ) ) | ( {$box} @ ( ( ~ ( v5 ) ) | ( {$box} @ ( {$box} @ ( {$box} @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod19 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v7 | ( {$box} @ ( {$box} @ ( v5 | ( {$box} @ ( {$box} @ ( ( ~ ( v3 ) ) | ( {$box} @ ( ~ ( v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( mod20 , hypothesis , ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( {$box} @ ( v6 | ( {$box} @ ( ( ~ ( v5 ) ) | ( {$box} @ ( ( ~ ( v4 ) ) | ( {$box} @ ( ~ ( v3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( alt1 , hypothesis , ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( $dia @ $true ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ v5 ) & ( $dia @ ( ~ ( v5 ) ) ) ) ) & ( $dia @ v6 ) & ( $dia @ ( ~ ( v6 ) ) ) ) ) & ( $dia @ v7 ) & ( $dia @ ( ~ ( v7 ) ) ) ) ) & ( $dia @ v8 ) & ( $dia @ ( ~ ( v8 ) ) ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ v13 ) & ( $dia @ ( ~ ( v13 ) ) ) ) ) & ( $dia @ v14 ) & ( $dia @ ( ~ ( v14 ) ) ) ) ) & ( $dia @ v15 ) & ( $dia @ ( ~ ( v15 ) ) ) ) ) & ( $dia @ v16 ) & ( $dia @ ( ~ ( v16 ) ) ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) & ( $dia @ $true ) ) ) .
thf ( result1 , conjecture , $false ) .