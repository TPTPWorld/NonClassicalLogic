%--------------------------------------------------------------------------
% File     : GSE062+4 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET062+4 (from TPTP-v5.0.0)      
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.75         0.83         0.83          v1.1
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

qmf(difference_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(difference(A, C), difference(B, C)))) ))))))))).

qmf(difference_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(difference(C, A), difference(C, B)))) ))))))))).

qmf(intersection_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(A, C), intersection(B, C)))) ))))))))).

qmf(intersection_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(C, A), intersection(C, B)))) ))))))))).

qmf(power_set_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(power_set(A), power_set(B)))) ))))))).

qmf(product_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(product(A), product(B)))) ))))))).

qmf(singleton_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(singleton(A), singleton(B)))) ))))))).

qmf(sum_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(sum(A), sum(B)))) ))))))).

qmf(union_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(union(A, C), union(B, C)))) ))))))))).

qmf(union_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(union(C, A), union(C, B)))) ))))))))).

qmf(unordered_pair_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(A, C), unordered_pair(B, C)))) ))))))))).

qmf(unordered_pair_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(C, A), unordered_pair(C, B)))) ))))))))).

qmf(equal_set_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (equal_set(A, C))) ) => ( #box : (equal_set(B, C))) ))))))))).

qmf(equal_set_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (equal_set(C, A))) ) => ( #box : (equal_set(C, B))) ))))))))).

qmf(member_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(A, C))) ) => ( #box : (member(B, C))) ))))))))).

qmf(member_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(C, A))) ) => ( #box : (member(C, B))) ))))))))).

qmf(subset_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (subset(A, C))) ) => ( #box : (subset(B, C))) ))))))))).

qmf(subset_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (subset(C, A))) ) => ( #box : (subset(C, B))) ))))))))).

qmf(subset,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : (( #box : (( #box : (subset(A, B))) => ( #box : ( ! [X] : ( #box : (( #box : (member(X, A))) => ( #box : (member(X, B))) )))) )) & (#box : (( #box : ( ! [X] : ( #box : (( #box : (member(X, A))) => ( #box : (member(X, B))) )))) => ( #box : (subset(A, B))) )))))))).

qmf(equal_set,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : (( #box : (( #box : (equal_set(A, B))) => ( ( #box : (subset(A, B))) & ( #box : (subset(B, A))) ) )) & (#box : (( ( #box : (subset(A, B))) & ( #box : (subset(B, A))) ) => ( #box : (equal_set(A, B))) )))))))).

qmf(power_set,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : (( #box : (( #box : (member(X, power_set(A)))) => ( #box : (subset(X, A))) )) & (#box : (( #box : (subset(X, A))) => ( #box : (member(X, power_set(A)))) )))))))).

qmf(intersection,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : ( #box : ( ! [B] : (( #box : (( #box : (member(X, intersection(A, B)))) => ( ( #box : (member(X, A))) & ( #box : (member(X, B))) ) )) & (#box : (( ( #box : (member(X, A))) & ( #box : (member(X, B))) ) => ( #box : (member(X, intersection(A, B)))) )))))))))).

qmf(union,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : ( #box : ( ! [B] : (( #box : (( #box : (member(X, union(A, B)))) => ( ( #box : (member(X, A))) | ( #box : (member(X, B))) ) )) & (#box : (( ( #box : (member(X, A))) | ( #box : (member(X, B))) ) => ( #box : (member(X, union(A, B)))) )))))))))).

qmf(empty_set,axiom,
( #box : ( ! [X] : ( #box : (~ ( #box : (member(X, empty_set))) ))))).

qmf(difference,axiom,
( #box : ( ! [B] : ( #box : ( ! [A] : ( #box : ( ! [E] : (( #box : (( #box : (member(B, difference(E, A)))) => ( ( #box : (member(B, E))) & ( #box : (~ ( #box : (member(B, A))) )) ) )) & (#box : (( ( #box : (member(B, E))) & ( #box : (~ ( #box : (member(B, A))) )) ) => ( #box : (member(B, difference(E, A)))) )))))))))).

qmf(singleton,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : (( #box : (( #box : (member(X, singleton(A)))) => ( #box : (qmltpeq(X, A))) )) & (#box : (( #box : (qmltpeq(X, A))) => ( #box : (member(X, singleton(A)))) )))))))).

qmf(unordered_pair,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : ( #box : ( ! [B] : (( #box : (( #box : (member(X, unordered_pair(A, B)))) => ( ( #box : (qmltpeq(X, A))) | ( #box : (qmltpeq(X, B))) ) )) & (#box : (( ( #box : (qmltpeq(X, A))) | ( #box : (qmltpeq(X, B))) ) => ( #box : (member(X, unordered_pair(A, B)))) )))))))))).

qmf(sum,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : (( #box : (( #box : (member(X, sum(A)))) => ( ? [Y] : ( ( #box : (member(Y, A))) & ( #box : (member(X, Y))) )) )) & (#box : (( ? [Y] : ( ( #box : (member(Y, A))) & ( #box : (member(X, Y))) )) => ( #box : (member(X, sum(A)))) )))))))).

qmf(product,axiom,
( #box : ( ! [X] : ( #box : ( ! [A] : (( #box : (( #box : (member(X, product(A)))) => ( #box : ( ! [Y] : ( #box : (( #box : (member(Y, A))) => ( #box : (member(X, Y))) )))) )) & (#box : (( #box : ( ! [Y] : ( #box : (( #box : (member(Y, A))) => ( #box : (member(X, Y))) )))) => ( #box : (member(X, product(A)))) )))))))).

qmf(thI15,conjecture,
( #box : ( ! [A] : ( #box : (subset(empty_set, A)))))).

