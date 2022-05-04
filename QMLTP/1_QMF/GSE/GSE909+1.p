%--------------------------------------------------------------------------
% File     : GSE909+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET909+1 (from TPTP-v5.0.0)      
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

qmf(unordered_pair_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(A, C), unordered_pair(B, C)))) ))))))))).

qmf(unordered_pair_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(C, A), unordered_pair(C, B)))) ))))))))).

qmf(empty_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (empty(A))) ) => ( #box : (empty(B))) ))))))).

qmf(in_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(A, C))) ) => ( #box : (in(B, C))) ))))))))).

qmf(in_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(C, A))) ) => ( #box : (in(C, B))) ))))))))).

qmf(antisymmetry_r2_hidden,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (in(A, B))) => ( #box : (~ ( #box : (in(B, A))) )) ))))))).

qmf(commutativity_k2_tarski,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (qmltpeq(unordered_pair(A, B), unordered_pair(B, A))))))))).

qmf(commutativity_k2_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (qmltpeq(set_union2(A, B), set_union2(B, A))))))))).

qmf(d1_xboole_0,axiom,
( #box : ( ! [A] : (( #box : (( #box : (qmltpeq(A, empty_set))) => ( #box : ( ! [B] : ( #box : (~ ( #box : (in(B, A))) )))) )) & (#box : (( #box : ( ! [B] : ( #box : (~ ( #box : (in(B, A))) )))) => ( #box : (qmltpeq(A, empty_set))) )))))).

qmf(d2_tarski,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (qmltpeq(C, unordered_pair(A, B)))) => ( #box : ( ! [D] : (( #box : (( #box : (in(D, C))) => ( ( #box : (qmltpeq(D, A))) | ( #box : (qmltpeq(D, B))) ) )) & (#box : (( ( #box : (qmltpeq(D, A))) | ( #box : (qmltpeq(D, B))) ) => ( #box : (in(D, C))) ))))) )) & (#box : (( #box : ( ! [D] : (( #box : (( #box : (in(D, C))) => ( ( #box : (qmltpeq(D, A))) | ( #box : (qmltpeq(D, B))) ) )) & (#box : (( ( #box : (qmltpeq(D, A))) | ( #box : (qmltpeq(D, B))) ) => ( #box : (in(D, C))) ))))) => ( #box : (qmltpeq(C, unordered_pair(A, B)))) )))))))))).

qmf(d2_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (qmltpeq(C, set_union2(A, B)))) => ( #box : ( ! [D] : (( #box : (( #box : (in(D, C))) => ( ( #box : (in(D, A))) | ( #box : (in(D, B))) ) )) & (#box : (( ( #box : (in(D, A))) | ( #box : (in(D, B))) ) => ( #box : (in(D, C))) ))))) )) & (#box : (( #box : ( ! [D] : (( #box : (( #box : (in(D, C))) => ( ( #box : (in(D, A))) | ( #box : (in(D, B))) ) )) & (#box : (( ( #box : (in(D, A))) | ( #box : (in(D, B))) ) => ( #box : (in(D, C))) ))))) => ( #box : (qmltpeq(C, set_union2(A, B)))) )))))))))).

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

qmf(t50_zfmisc_1,conjecture,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (~ ( #box : (qmltpeq(set_union2(unordered_pair(A, B), C), empty_set))) ))))))))).

