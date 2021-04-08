%--------------------------------------------------------------------------
% File     : GSE581+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET581+3 (from TPTP-v5.0.0)      
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

qmf(intersection_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(A, C), intersection(B, C)))) ))))))))).

qmf(intersection_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(C, A), intersection(C, B)))) ))))))))).

qmf(empty_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (empty(A))) ) => ( #box : (empty(B))) ))))))).

qmf(member_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(A, C))) ) => ( #box : (member(B, C))) ))))))))).

qmf(member_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(C, A))) ) => ( #box : (member(C, B))) ))))))))).

qmf(not_equal_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (not_equal(A, C))) ) => ( #box : (not_equal(B, C))) ))))))))).

qmf(not_equal_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (not_equal(C, A))) ) => ( #box : (not_equal(C, B))) ))))))))).

qmf(intersection_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : (( #box : (( #box : (member(D, intersection(B, C)))) => ( ( #box : (member(D, B))) & ( #box : (member(D, C))) ) )) & (#box : (( ( #box : (member(D, B))) & ( #box : (member(D, C))) ) => ( #box : (member(D, intersection(B, C)))) )))))))))).

qmf(empty_set_defn,axiom,
( #box : ( ! [B] : ( #box : (~ ( #box : (member(B, empty_set))) ))))).

qmf(equal_member_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (qmltpeq(B, C))) => ( #box : ( ! [D] : (( #box : (( #box : (member(D, B))) => ( #box : (member(D, C))) )) & (#box : (( #box : (member(D, C))) => ( #box : (member(D, B))) ))))) )) & (#box : (( #box : ( ! [D] : (( #box : (( #box : (member(D, B))) => ( #box : (member(D, C))) )) & (#box : (( #box : (member(D, C))) => ( #box : (member(D, B))) ))))) => ( #box : (qmltpeq(B, C))) )))))))).

qmf(not_equal_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (not_equal(B, C))) => ( #box : (~ ( #box : (qmltpeq(B, C))) )) )) & (#box : (( #box : (~ ( #box : (qmltpeq(B, C))) )) => ( #box : (not_equal(B, C))) )))))))).

qmf(commutativity_of_intersection,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (qmltpeq(intersection(B, C), intersection(C, B))))))))).

qmf(empty_defn,axiom,
( #box : ( ! [B] : (( #box : (( #box : (empty(B))) => ( #box : ( ! [C] : ( #box : (~ ( #box : (member(C, B))) )))) )) & (#box : (( #box : ( ! [C] : ( #box : (~ ( #box : (member(C, B))) )))) => ( #box : (empty(B))) )))))).

qmf(prove_th24,conjecture,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( ( #box : (member(B, C))) & ( #box : (member(B, D))) ) => ( #box : (not_equal(intersection(C, D), empty_set))) ))))))))).

