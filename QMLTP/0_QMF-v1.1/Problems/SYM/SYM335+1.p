%--------------------------------------------------------------------------
% File     : SYM335+1: QMLTP v11.1
% Domain   : Syntactic (modal)
% Problem  : QBF-CNFSSS-K=4 C=10 V=4 D=6.1
% Version  : Especial.
% English  : 

% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposit
%          : [HS00a] Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by Tr
%          : [HS00b] Hustadt & Schmidt (2000), Issues of Decidability for De
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
% Source   : [Sch01]
% Names    : p-qbf-cnfSSS-K4-C10-V4-D6.1 [Sch01]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Non-Theorem  Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(mod1,hypothesis,
    (#box : (#box : (#box : (v26 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : ((~ v16) | (#box : (#box : ((~ v14) | (#box : (#box : (#box : v11)))))))))))))))))))))
    ).

qmf(mod2,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (v24 | (#box : (#box : (#box : (#box : (#box : (v19 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : ((~ v5) | (#box : (#box : v3)))))))))))))))))))))))))))))
    ).

qmf(mod3,hypothesis,
    (#box : (#box : (#box : (#box : (#box : ((~ v24) | (#box : (#box : (#box : ((~ v21) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v11 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (~ v4)))))))))))))))))))))))))))))
    ).

qmf(mod4,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : (v23 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : ((~ v15) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v4 | (#box : v3)))))))))))))))))))))))))))))
    ).

qmf(mod5,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : (v23 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : ((~ v13) | (#box : ((~ v12) | (#box : (#box : v10))))))))))))))))))))))
    ).

qmf(mod6,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : ((~ v23) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v15 | (#box : (#box : (#box : (v12 | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (~ v4)))))))))))))))))))))))))))))
    ).

qmf(mod7,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : ((~ v23) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v12 | (#box : (#box : (#box : (#box : ((~ v8) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (~ v1))))))))))))))))))))))))))))))))
    ).

qmf(mod8,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : ((~ v23) | (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v10 | (#box : (#box : (#box : (#box : (#box : ((~ v5) | (#box : (#box : (#box : (#box : v1)))))))))))))))))))))))))))))))
    ).

qmf(mod9,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : (#box : (v22 | (#box : (#box : (#box : (v19 | (#box : (#box : (#box : (#box : ((~ v15) | (#box : (#box : (#box : (#box : (#box : (~ v10)))))))))))))))))))))))
    ).

qmf(mod10,hypothesis,
    (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : (#box : ((~ v15) | (#box : (#box : (#box : (#box : (v11 | (#box : (#box : (#box : (#box : (#box : (#box : ((~ v5) | (#box : v4))))))))))))))))))))))))))))
    ).

qmf(alt1,hypothesis,
    ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : ((#box : (#dia : $true)) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : v5) & (#dia : (~ v5)))) & (#dia : $true))) & (#dia : $true))) & (#dia : v8) & (#dia : (~ v8)))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : v13) & (#dia : (~ v13)))) & (#dia : v14) & (#dia : (~ v14)))) & (#dia : v15) & (#dia : (~ v15)))) & (#dia : v16) & (#dia : (~ v16)))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : v21) & (#dia : (~ v21)))) & (#dia : v22) & (#dia : (~ v22)))) & (#dia : v23) & (#dia : (~ v23)))) & (#dia : v24) & (#dia : (~ v24)))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))) & (#dia : $true))
    ).

qmf(result1,conjecture,
    $false
    ).

