%--------------------------------------------------------------------------
% File     : GAL023+1 : QMLTP v1.1
% Domain   : GAL (Goedel translation of Algebra)                           
% Problem  : Goedel translation of ALG023+1 (from TPTP-v5.0.0)      
% Version  : Especial.
% English  :

% Refs     : [TPTP] G. Sutcliffe. TPTP library v2.7.0. http://www.tptp.org 
%            [SS98] G. Sutcliffe, C.B. Suttner. The TPTP Problem Library:  
%                   CNF Release v1.2.1. Journal of Automated Reasoning,    
%                   21(2):177--203, 1998.                                  
%            [Goe69] K. Goedel. An interpretation of the intuitionistic    
%                    sentential logic. In J. Hintikka, Ed., The Philosophy 
%                    of Mathematics, pp~128--129. Oxford University Press, 
%                    1969.                                                 
% Source   : [TPTP], [Goe69]
% Names    :

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,
( #box : ( ! [X] : ( #box : (qmltpeq(X, X)))))).

qmf(symmetry,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( #box : (qmltpeq(X, Y))) => ( #box : (qmltpeq(Y, X))) ))))))).

qmf(transitivity,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (qmltpeq(X, Y))) & ( #box : (qmltpeq(Y, Z))) ) => ( #box : (qmltpeq(X, Z))) ))))))))).

qmf(inv_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(inv(A), inv(B)))) ))))))).

qmf(op_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op(A, C), op(B, C)))) ))))))))).

qmf(op_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op(C, A), op(C, B)))) ))))))))).

qmf(ax1,axiom,
( ( ( #box : (qmltpeq(op(e0, e0), e0))) | ( ( #box : (qmltpeq(op(e0, e0), e1))) | ( ( #box : (qmltpeq(op(e0, e0), e2))) | ( #box : (qmltpeq(op(e0, e0), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e0, e1), e0))) | ( ( #box : (qmltpeq(op(e0, e1), e1))) | ( ( #box : (qmltpeq(op(e0, e1), e2))) | ( #box : (qmltpeq(op(e0, e1), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e0, e2), e0))) | ( ( #box : (qmltpeq(op(e0, e2), e1))) | ( ( #box : (qmltpeq(op(e0, e2), e2))) | ( #box : (qmltpeq(op(e0, e2), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e0, e3), e0))) | ( ( #box : (qmltpeq(op(e0, e3), e1))) | ( ( #box : (qmltpeq(op(e0, e3), e2))) | ( #box : (qmltpeq(op(e0, e3), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e1, e0), e0))) | ( ( #box : (qmltpeq(op(e1, e0), e1))) | ( ( #box : (qmltpeq(op(e1, e0), e2))) | ( #box : (qmltpeq(op(e1, e0), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e1, e1), e0))) | ( ( #box : (qmltpeq(op(e1, e1), e1))) | ( ( #box : (qmltpeq(op(e1, e1), e2))) | ( #box : (qmltpeq(op(e1, e1), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e1, e2), e0))) | ( ( #box : (qmltpeq(op(e1, e2), e1))) | ( ( #box : (qmltpeq(op(e1, e2), e2))) | ( #box : (qmltpeq(op(e1, e2), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e1, e3), e0))) | ( ( #box : (qmltpeq(op(e1, e3), e1))) | ( ( #box : (qmltpeq(op(e1, e3), e2))) | ( #box : (qmltpeq(op(e1, e3), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e2, e0), e0))) | ( ( #box : (qmltpeq(op(e2, e0), e1))) | ( ( #box : (qmltpeq(op(e2, e0), e2))) | ( #box : (qmltpeq(op(e2, e0), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e2, e1), e0))) | ( ( #box : (qmltpeq(op(e2, e1), e1))) | ( ( #box : (qmltpeq(op(e2, e1), e2))) | ( #box : (qmltpeq(op(e2, e1), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e2, e2), e0))) | ( ( #box : (qmltpeq(op(e2, e2), e1))) | ( ( #box : (qmltpeq(op(e2, e2), e2))) | ( #box : (qmltpeq(op(e2, e2), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e2, e3), e0))) | ( ( #box : (qmltpeq(op(e2, e3), e1))) | ( ( #box : (qmltpeq(op(e2, e3), e2))) | ( #box : (qmltpeq(op(e2, e3), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e3, e0), e0))) | ( ( #box : (qmltpeq(op(e3, e0), e1))) | ( ( #box : (qmltpeq(op(e3, e0), e2))) | ( #box : (qmltpeq(op(e3, e0), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e3, e1), e0))) | ( ( #box : (qmltpeq(op(e3, e1), e1))) | ( ( #box : (qmltpeq(op(e3, e1), e2))) | ( #box : (qmltpeq(op(e3, e1), e3))) ) ) ) & ( ( ( #box : (qmltpeq(op(e3, e2), e0))) | ( ( #box : (qmltpeq(op(e3, e2), e1))) | ( ( #box : (qmltpeq(op(e3, e2), e2))) | ( #box : (qmltpeq(op(e3, e2), e3))) ) ) ) & ( ( #box : (qmltpeq(op(e3, e3), e0))) | ( ( #box : (qmltpeq(op(e3, e3), e1))) | ( ( #box : (qmltpeq(op(e3, e3), e2))) | ( #box : (qmltpeq(op(e3, e3), e3))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax2,axiom,
( ( #box : (qmltpeq(op(op(e0, e0), e0), op(e0, op(e0, e0))))) & ( ( #box : (qmltpeq(op(op(e0, e0), e1), op(e0, op(e0, e1))))) & ( ( #box : (qmltpeq(op(op(e0, e0), e2), op(e0, op(e0, e2))))) & ( ( #box : (qmltpeq(op(op(e0, e0), e3), op(e0, op(e0, e3))))) & ( ( #box : (qmltpeq(op(op(e0, e1), e0), op(e0, op(e1, e0))))) & ( ( #box : (qmltpeq(op(op(e0, e1), e1), op(e0, op(e1, e1))))) & ( ( #box : (qmltpeq(op(op(e0, e1), e2), op(e0, op(e1, e2))))) & ( ( #box : (qmltpeq(op(op(e0, e1), e3), op(e0, op(e1, e3))))) & ( ( #box : (qmltpeq(op(op(e0, e2), e0), op(e0, op(e2, e0))))) & ( ( #box : (qmltpeq(op(op(e0, e2), e1), op(e0, op(e2, e1))))) & ( ( #box : (qmltpeq(op(op(e0, e2), e2), op(e0, op(e2, e2))))) & ( ( #box : (qmltpeq(op(op(e0, e2), e3), op(e0, op(e2, e3))))) & ( ( #box : (qmltpeq(op(op(e0, e3), e0), op(e0, op(e3, e0))))) & ( ( #box : (qmltpeq(op(op(e0, e3), e1), op(e0, op(e3, e1))))) & ( ( #box : (qmltpeq(op(op(e0, e3), e2), op(e0, op(e3, e2))))) & ( ( #box : (qmltpeq(op(op(e0, e3), e3), op(e0, op(e3, e3))))) & ( ( #box : (qmltpeq(op(op(e1, e0), e0), op(e1, op(e0, e0))))) & ( ( #box : (qmltpeq(op(op(e1, e0), e1), op(e1, op(e0, e1))))) & ( ( #box : (qmltpeq(op(op(e1, e0), e2), op(e1, op(e0, e2))))) & ( ( #box : (qmltpeq(op(op(e1, e0), e3), op(e1, op(e0, e3))))) & ( ( #box : (qmltpeq(op(op(e1, e1), e0), op(e1, op(e1, e0))))) & ( ( #box : (qmltpeq(op(op(e1, e1), e1), op(e1, op(e1, e1))))) & ( ( #box : (qmltpeq(op(op(e1, e1), e2), op(e1, op(e1, e2))))) & ( ( #box : (qmltpeq(op(op(e1, e1), e3), op(e1, op(e1, e3))))) & ( ( #box : (qmltpeq(op(op(e1, e2), e0), op(e1, op(e2, e0))))) & ( ( #box : (qmltpeq(op(op(e1, e2), e1), op(e1, op(e2, e1))))) & ( ( #box : (qmltpeq(op(op(e1, e2), e2), op(e1, op(e2, e2))))) & ( ( #box : (qmltpeq(op(op(e1, e2), e3), op(e1, op(e2, e3))))) & ( ( #box : (qmltpeq(op(op(e1, e3), e0), op(e1, op(e3, e0))))) & ( ( #box : (qmltpeq(op(op(e1, e3), e1), op(e1, op(e3, e1))))) & ( ( #box : (qmltpeq(op(op(e1, e3), e2), op(e1, op(e3, e2))))) & ( ( #box : (qmltpeq(op(op(e1, e3), e3), op(e1, op(e3, e3))))) & ( ( #box : (qmltpeq(op(op(e2, e0), e0), op(e2, op(e0, e0))))) & ( ( #box : (qmltpeq(op(op(e2, e0), e1), op(e2, op(e0, e1))))) & ( ( #box : (qmltpeq(op(op(e2, e0), e2), op(e2, op(e0, e2))))) & ( ( #box : (qmltpeq(op(op(e2, e0), e3), op(e2, op(e0, e3))))) & ( ( #box : (qmltpeq(op(op(e2, e1), e0), op(e2, op(e1, e0))))) & ( ( #box : (qmltpeq(op(op(e2, e1), e1), op(e2, op(e1, e1))))) & ( ( #box : (qmltpeq(op(op(e2, e1), e2), op(e2, op(e1, e2))))) & ( ( #box : (qmltpeq(op(op(e2, e1), e3), op(e2, op(e1, e3))))) & ( ( #box : (qmltpeq(op(op(e2, e2), e0), op(e2, op(e2, e0))))) & ( ( #box : (qmltpeq(op(op(e2, e2), e1), op(e2, op(e2, e1))))) & ( ( #box : (qmltpeq(op(op(e2, e2), e2), op(e2, op(e2, e2))))) & ( ( #box : (qmltpeq(op(op(e2, e2), e3), op(e2, op(e2, e3))))) & ( ( #box : (qmltpeq(op(op(e2, e3), e0), op(e2, op(e3, e0))))) & ( ( #box : (qmltpeq(op(op(e2, e3), e1), op(e2, op(e3, e1))))) & ( ( #box : (qmltpeq(op(op(e2, e3), e2), op(e2, op(e3, e2))))) & ( ( #box : (qmltpeq(op(op(e2, e3), e3), op(e2, op(e3, e3))))) & ( ( #box : (qmltpeq(op(op(e3, e0), e0), op(e3, op(e0, e0))))) & ( ( #box : (qmltpeq(op(op(e3, e0), e1), op(e3, op(e0, e1))))) & ( ( #box : (qmltpeq(op(op(e3, e0), e2), op(e3, op(e0, e2))))) & ( ( #box : (qmltpeq(op(op(e3, e0), e3), op(e3, op(e0, e3))))) & ( ( #box : (qmltpeq(op(op(e3, e1), e0), op(e3, op(e1, e0))))) & ( ( #box : (qmltpeq(op(op(e3, e1), e1), op(e3, op(e1, e1))))) & ( ( #box : (qmltpeq(op(op(e3, e1), e2), op(e3, op(e1, e2))))) & ( ( #box : (qmltpeq(op(op(e3, e1), e3), op(e3, op(e1, e3))))) & ( ( #box : (qmltpeq(op(op(e3, e2), e0), op(e3, op(e2, e0))))) & ( ( #box : (qmltpeq(op(op(e3, e2), e1), op(e3, op(e2, e1))))) & ( ( #box : (qmltpeq(op(op(e3, e2), e2), op(e3, op(e2, e2))))) & ( ( #box : (qmltpeq(op(op(e3, e2), e3), op(e3, op(e2, e3))))) & ( ( #box : (qmltpeq(op(op(e3, e3), e0), op(e3, op(e3, e0))))) & ( ( #box : (qmltpeq(op(op(e3, e3), e1), op(e3, op(e3, e1))))) & ( ( #box : (qmltpeq(op(op(e3, e3), e2), op(e3, op(e3, e2))))) & ( #box : (qmltpeq(op(op(e3, e3), e3), op(e3, op(e3, e3))))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax3,axiom,
( ( #box : (qmltpeq(op(unit, e0), e0))) & ( ( #box : (qmltpeq(op(e0, unit), e0))) & ( ( #box : (qmltpeq(op(unit, e1), e1))) & ( ( #box : (qmltpeq(op(e1, unit), e1))) & ( ( #box : (qmltpeq(op(unit, e2), e2))) & ( ( #box : (qmltpeq(op(e2, unit), e2))) & ( ( #box : (qmltpeq(op(unit, e3), e3))) & ( ( #box : (qmltpeq(op(e3, unit), e3))) & ( ( #box : (qmltpeq(unit, e0))) | ( ( #box : (qmltpeq(unit, e1))) | ( ( #box : (qmltpeq(unit, e2))) | ( #box : (qmltpeq(unit, e3))) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax4,axiom,
( ( #box : (qmltpeq(op(e0, inv(e0)), unit))) & ( ( #box : (qmltpeq(op(inv(e0), e0), unit))) & ( ( #box : (qmltpeq(op(e1, inv(e1)), unit))) & ( ( #box : (qmltpeq(op(inv(e1), e1), unit))) & ( ( #box : (qmltpeq(op(e2, inv(e2)), unit))) & ( ( #box : (qmltpeq(op(inv(e2), e2), unit))) & ( ( #box : (qmltpeq(op(e3, inv(e3)), unit))) & ( ( #box : (qmltpeq(op(inv(e3), e3), unit))) & ( ( ( #box : (qmltpeq(inv(e0), e0))) | ( ( #box : (qmltpeq(inv(e0), e1))) | ( ( #box : (qmltpeq(inv(e0), e2))) | ( #box : (qmltpeq(inv(e0), e3))) ) ) ) & ( ( ( #box : (qmltpeq(inv(e1), e0))) | ( ( #box : (qmltpeq(inv(e1), e1))) | ( ( #box : (qmltpeq(inv(e1), e2))) | ( #box : (qmltpeq(inv(e1), e3))) ) ) ) & ( ( ( #box : (qmltpeq(inv(e2), e0))) | ( ( #box : (qmltpeq(inv(e2), e1))) | ( ( #box : (qmltpeq(inv(e2), e2))) | ( #box : (qmltpeq(inv(e2), e3))) ) ) ) & ( ( #box : (qmltpeq(inv(e3), e0))) | ( ( #box : (qmltpeq(inv(e3), e1))) | ( ( #box : (qmltpeq(inv(e3), e2))) | ( #box : (qmltpeq(inv(e3), e3))) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax5,axiom,
( #box : (qmltpeq(inv(unit), unit)))).

qmf(ax6,axiom,
( ( #box : (qmltpeq(inv(inv(e0)), e0))) & ( ( #box : (qmltpeq(inv(inv(e1)), e1))) & ( ( #box : (qmltpeq(inv(inv(e2)), e2))) & ( #box : (qmltpeq(inv(inv(e3)), e3))) ) ) )).

qmf(ax7,axiom,
( ( #box : (( #box : (qmltpeq(inv(e0), e0))) => ( #box : (qmltpeq(inv(e0), e0))) )) & ( ( #box : (( #box : (qmltpeq(inv(e0), e1))) => ( #box : (qmltpeq(inv(e1), e0))) )) & ( ( #box : (( #box : (qmltpeq(inv(e0), e2))) => ( #box : (qmltpeq(inv(e2), e0))) )) & ( ( #box : (( #box : (qmltpeq(inv(e0), e3))) => ( #box : (qmltpeq(inv(e3), e0))) )) & ( ( #box : (( #box : (qmltpeq(inv(e1), e0))) => ( #box : (qmltpeq(inv(e0), e1))) )) & ( ( #box : (( #box : (qmltpeq(inv(e1), e1))) => ( #box : (qmltpeq(inv(e1), e1))) )) & ( ( #box : (( #box : (qmltpeq(inv(e1), e2))) => ( #box : (qmltpeq(inv(e2), e1))) )) & ( ( #box : (( #box : (qmltpeq(inv(e1), e3))) => ( #box : (qmltpeq(inv(e3), e1))) )) & ( ( #box : (( #box : (qmltpeq(inv(e2), e0))) => ( #box : (qmltpeq(inv(e0), e2))) )) & ( ( #box : (( #box : (qmltpeq(inv(e2), e1))) => ( #box : (qmltpeq(inv(e1), e2))) )) & ( ( #box : (( #box : (qmltpeq(inv(e2), e2))) => ( #box : (qmltpeq(inv(e2), e2))) )) & ( ( #box : (( #box : (qmltpeq(inv(e2), e3))) => ( #box : (qmltpeq(inv(e3), e2))) )) & ( ( #box : (( #box : (qmltpeq(inv(e3), e0))) => ( #box : (qmltpeq(inv(e0), e3))) )) & ( ( #box : (( #box : (qmltpeq(inv(e3), e1))) => ( #box : (qmltpeq(inv(e1), e3))) )) & ( ( #box : (( #box : (qmltpeq(inv(e3), e2))) => ( #box : (qmltpeq(inv(e2), e3))) )) & ( #box : (( #box : (qmltpeq(inv(e3), e3))) => ( #box : (qmltpeq(inv(e3), e3))) )) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax8,axiom,
( ( #box : (~ ( #box : (qmltpeq(inv(e0), inv(e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(inv(e0), inv(e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(inv(e0), inv(e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(inv(e1), inv(e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(inv(e1), inv(e3)))) )) & ( #box : (~ ( #box : (qmltpeq(inv(e2), inv(e3)))) )) ) ) ) ) )).

qmf(ax9,axiom,
( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e1, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e2, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e3, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e0), op(e2, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e0), op(e3, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e0), op(e3, e0)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e1), op(e1, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e1), op(e2, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e1), op(e3, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e1), op(e2, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e1), op(e3, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e1), op(e3, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e2), op(e1, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e2), op(e2, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e2), op(e3, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e2), op(e2, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e2), op(e3, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e2), op(e3, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e3), op(e1, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e3), op(e2, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e3), op(e3, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e3), op(e2, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e3), op(e3, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e3), op(e3, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e0, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e0, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e0), op(e0, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e1), op(e0, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e1), op(e0, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e0, e2), op(e0, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e0), op(e1, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e0), op(e1, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e0), op(e1, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e1), op(e1, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e1), op(e1, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e1, e2), op(e1, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e0), op(e2, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e0), op(e2, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e0), op(e2, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e1), op(e2, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e1), op(e2, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e2, e2), op(e2, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e3, e0), op(e3, e1)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e3, e0), op(e3, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e3, e0), op(e3, e3)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e3, e1), op(e3, e2)))) )) & ( ( #box : (~ ( #box : (qmltpeq(op(e3, e1), op(e3, e3)))) )) & ( #box : (~ ( #box : (qmltpeq(op(e3, e2), op(e3, e3)))) )) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

qmf(ax10,axiom,
( ( #box : (~ ( #box : (qmltpeq(e0, e1))) )) & ( ( #box : (~ ( #box : (qmltpeq(e0, e2))) )) & ( ( #box : (~ ( #box : (qmltpeq(e0, e3))) )) & ( ( #box : (~ ( #box : (qmltpeq(e1, e2))) )) & ( ( #box : (~ ( #box : (qmltpeq(e1, e3))) )) & ( #box : (~ ( #box : (qmltpeq(e2, e3))) )) ) ) ) ) )).

qmf(ax11,axiom,
( ( ( #box : (qmltpeq(op(e0, e0), e0))) & ( ( #box : (qmltpeq(op(e1, e1), e0))) & ( ( #box : (qmltpeq(op(e2, e2), e0))) & ( #box : (qmltpeq(op(e3, e3), e0))) ) ) ) | ( ( ( #box : (qmltpeq(op(e0, e0), e1))) & ( ( #box : (qmltpeq(op(e1, e1), e1))) & ( ( #box : (qmltpeq(op(e2, e2), e1))) & ( #box : (qmltpeq(op(e3, e3), e1))) ) ) ) | ( ( ( #box : (qmltpeq(op(e0, e0), e2))) & ( ( #box : (qmltpeq(op(e1, e1), e2))) & ( ( #box : (qmltpeq(op(e2, e2), e2))) & ( #box : (qmltpeq(op(e3, e3), e2))) ) ) ) | ( ( #box : (qmltpeq(op(e0, e0), e3))) & ( ( #box : (qmltpeq(op(e1, e1), e3))) & ( ( #box : (qmltpeq(op(e2, e2), e3))) & ( #box : (qmltpeq(op(e3, e3), e3))) ) ) ) ) ) )).

qmf(ax12,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e3, e3)))) & ( #box : (qmltpeq(e1, op(e2, e3)))) ) ))).

qmf(ax13,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e2, e2)))) & ( #box : (qmltpeq(e1, op(e3, e2)))) ) ))).

qmf(ax14,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e3, e3)))) & ( #box : (qmltpeq(e2, op(e1, e3)))) ) ))).

qmf(ax15,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e1, e1)))) & ( #box : (qmltpeq(e2, op(e3, e1)))) ) ))).

qmf(ax16,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e2, e2)))) & ( #box : (qmltpeq(e3, op(e1, e2)))) ) ))).

qmf(ax17,axiom,
( #box : (~ ( ( #box : (qmltpeq(e0, op(e1, e1)))) & ( #box : (qmltpeq(e3, op(e2, e1)))) ) ))).

qmf(ax18,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e3, e3)))) & ( #box : (qmltpeq(e0, op(e2, e3)))) ) ))).

qmf(ax19,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e2, e2)))) & ( #box : (qmltpeq(e0, op(e3, e2)))) ) ))).

qmf(ax20,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e3, e3)))) & ( #box : (qmltpeq(e2, op(e0, e3)))) ) ))).

qmf(ax21,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e0, e0)))) & ( #box : (qmltpeq(e2, op(e3, e0)))) ) ))).

qmf(ax22,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e2, e2)))) & ( #box : (qmltpeq(e3, op(e0, e2)))) ) ))).

qmf(ax23,axiom,
( #box : (~ ( ( #box : (qmltpeq(e1, op(e0, e0)))) & ( #box : (qmltpeq(e3, op(e2, e0)))) ) ))).

qmf(ax24,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e3, e3)))) & ( #box : (qmltpeq(e0, op(e1, e3)))) ) ))).

qmf(ax25,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e1, e1)))) & ( #box : (qmltpeq(e0, op(e3, e1)))) ) ))).

qmf(ax26,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e3, e3)))) & ( #box : (qmltpeq(e1, op(e0, e3)))) ) ))).

qmf(ax27,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e0, e0)))) & ( #box : (qmltpeq(e1, op(e3, e0)))) ) ))).

qmf(ax28,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e1, e1)))) & ( #box : (qmltpeq(e3, op(e0, e1)))) ) ))).

qmf(ax29,axiom,
( #box : (~ ( ( #box : (qmltpeq(e2, op(e0, e0)))) & ( #box : (qmltpeq(e3, op(e1, e0)))) ) ))).

qmf(ax30,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e2, e2)))) & ( #box : (qmltpeq(e0, op(e1, e2)))) ) ))).

qmf(ax31,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e1, e1)))) & ( #box : (qmltpeq(e0, op(e2, e1)))) ) ))).

qmf(ax32,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e2, e2)))) & ( #box : (qmltpeq(e1, op(e0, e2)))) ) ))).

qmf(ax33,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e0, e0)))) & ( #box : (qmltpeq(e1, op(e2, e0)))) ) ))).

qmf(ax34,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e1, e1)))) & ( #box : (qmltpeq(e2, op(e0, e1)))) ) ))).

qmf(ax35,axiom,
( #box : (~ ( ( #box : (qmltpeq(e3, op(e0, e0)))) & ( #box : (qmltpeq(e2, op(e1, e0)))) ) ))).

