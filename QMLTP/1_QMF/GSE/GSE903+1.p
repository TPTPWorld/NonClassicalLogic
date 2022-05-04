%--------------------------------------------------------------------------
% File     : GSE903+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET903+1 (from TPTP-v5.0.0)      
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
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
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

qmf(set_union2_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(set_union2(A, C), set_union2(B, C)))) ))))))))).

qmf(set_union2_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(set_union2(C, A), set_union2(C, B)))) ))))))))).

qmf(singleton_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(singleton(A), singleton(B)))) ))))))).

qmf(empty_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (empty(A))) ) => ( #box : (empty(B))) ))))))).

qmf(commutativity_k2_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (qmltpeq(set_union2(A, B), set_union2(B, A))))))))).

qmf(fc1_xboole_0,axiom,
( #box : (empty(empty_set)))).

qmf(fc2_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (~ ( #box : (empty(A))) )) => ( #box : (~ ( #box : (empty(set_union2(A, B)))) )) ))))))).

qmf(fc3_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (~ ( #box : (empty(A))) )) => ( #box : (~ ( #box : (empty(set_union2(B, A)))) )) ))))))).

qmf(idempotence_k2_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (qmltpeq(set_union2(A, A), A)))))))).

qmf(rc1_xboole_0,axiom,
( ? [A] : ( #box : (empty(A))))).

qmf(rc2_xboole_0,axiom,
( ? [A] : ( #box : (~ ( #box : (empty(A))) )))).

qmf(t43_zfmisc_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (~ ( ( #box : (qmltpeq(singleton(A), set_union2(B, C)))) & ( ( #box : (~ ( ( #box : (qmltpeq(B, singleton(A)))) & ( #box : (qmltpeq(C, singleton(A)))) ) )) & ( ( #box : (~ ( ( #box : (qmltpeq(B, empty_set))) & ( #box : (qmltpeq(C, singleton(A)))) ) )) & ( #box : (~ ( ( #box : (qmltpeq(B, singleton(A)))) & ( #box : (qmltpeq(C, empty_set))) ) )) ) ) ) ))))))))).

qmf(t44_zfmisc_1,conjecture,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (~ ( ( #box : (qmltpeq(singleton(A), set_union2(B, C)))) & ( ( #box : (~ ( #box : (qmltpeq(B, C))) )) & ( ( #box : (~ ( #box : (qmltpeq(B, empty_set))) )) & ( #box : (~ ( #box : (qmltpeq(C, empty_set))) )) ) ) ) ))))))))).

