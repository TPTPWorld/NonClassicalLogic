%--------------------------------------------------------------------------
% File     : GSY415+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)                         
% Problem  : Goedel translation of SYN415+1 (from TPTP-v5.0.0)      
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
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Unsolved     Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  1.00         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,
( #box : ( ! [X] : (#box : (qmltpeq(X , X)))))).

qmf(symmetry,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ((#box : (qmltpeq(X , Y))) => (#box : (qmltpeq(Y , X))) ))))))).

qmf(transitivity,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( (#box : (qmltpeq(X , Y))) & (#box : (qmltpeq(Y , Z))) ) => (#box : (qmltpeq(X , Z))) ))))))))).

qmf(f_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( (#box : (qmltpeq(A , B))) & ( #box : (f(A))) ) => ( #box : (f(B))) ))))))).

qmf(kalish317,conjecture,
(( #box : (( ( ? [X] : ( #box : (f(X)))) & ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (f(Y))) & ( #box : (f(Z))) ) => (#box : (qmltpeq(Y , Z))) )))))) ) => ( ? [U] : ( ( #box : (f(U))) & ( #box : ( ! [V] : ( #box : (( #box : (f(V))) => (#box : (qmltpeq(U , V))) )))) )) )) & (#box : (( ? [U] : ( ( #box : (f(U))) & ( #box : ( ! [V] : ( #box : (( #box : (f(V))) => (#box : (qmltpeq(U , V))) )))) )) => ( ( ? [X] : ( #box : (f(X)))) & ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (f(Y))) & ( #box : (f(Z))) ) => (#box : (qmltpeq(Y , Z))) )))))) ) )))).


%--------------------------------------------------------------------------
