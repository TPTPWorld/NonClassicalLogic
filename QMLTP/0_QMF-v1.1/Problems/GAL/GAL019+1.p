%--------------------------------------------------------------------------
% File     : GAL019+1 : QMLTP v1.1
% Domain   : GAL (Goedel translation of Algebra)                           
% Problem  : Goedel translation of ALG019+1 (from TPTP-v5.0.0)      
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

qmf(h_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(h(A), h(B)))) ))))))).

qmf(j_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(j(A), j(B)))) ))))))).

qmf(op1_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op1(A, C), op1(B, C)))) ))))))))).

qmf(op1_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op1(C, A), op1(C, B)))) ))))))))).

qmf(op2_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op2(A, C), op2(B, C)))) ))))))))).

qmf(op2_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(op2(C, A), op2(C, B)))) ))))))))).

qmf(sorti1_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (sorti1(A))) ) => ( #box : (sorti1(B))) ))))))).

qmf(sorti2_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (sorti2(A))) ) => ( #box : (sorti2(B))) ))))))).

qmf(ax1,axiom,
( #box : ( ! [U] : ( #box : (( #box : (sorti1(U))) => ( #box : ( ! [V] : ( #box : (( #box : (sorti1(V))) => ( #box : (sorti1(op1(U, V)))) )))) ))))).

qmf(ax2,axiom,
( #box : ( ! [U] : ( #box : (( #box : (sorti2(U))) => ( #box : ( ! [V] : ( #box : (( #box : (sorti2(V))) => ( #box : (sorti2(op2(U, V)))) )))) ))))).

qmf(ax3,axiom,
( #box : (~ ( ? [U] : ( ( #box : (sorti1(U))) & ( #box : ( ! [V] : ( #box : (( #box : (sorti1(V))) => ( #box : (qmltpeq(op1(V, V), U))) )))) )) ))).

qmf(ax4,axiom,
( #box : (~ ( #box : (~ ( ? [U] : ( ( #box : (sorti2(U))) & ( #box : ( ! [V] : ( #box : (( #box : (sorti2(V))) => ( #box : (qmltpeq(op2(V, V), U))) )))) )) )) ))).

qmf(co1,conjecture,
( #box : (( ( #box : ( ! [U] : ( #box : (( #box : (sorti1(U))) => ( #box : (sorti2(h(U)))) )))) & ( #box : ( ! [V] : ( #box : (( #box : (sorti2(V))) => ( #box : (sorti1(j(V)))) )))) ) => ( #box : (~ ( ( #box : ( ! [W] : ( #box : (( #box : (sorti1(W))) => ( #box : ( ! [X] : ( #box : (( #box : (sorti1(X))) => ( #box : (qmltpeq(h(op1(W, X)), op2(h(W), h(X))))) )))) )))) & ( ( #box : ( ! [Y] : ( #box : (( #box : (sorti2(Y))) => ( #box : ( ! [Z] : ( #box : (( #box : (sorti2(Z))) => ( #box : (qmltpeq(j(op2(Y, Z)), op1(j(Y), j(Z))))) )))) )))) & ( ( #box : ( ! [X1] : ( #box : (( #box : (sorti2(X1))) => ( #box : (qmltpeq(h(j(X1)), X1))) )))) & ( #box : ( ! [X2] : ( #box : (( #box : (sorti1(X2))) => ( #box : (qmltpeq(j(h(X2)), X2))) )))) ) ) ) )) ))).

