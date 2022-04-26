%--------------------------------------------------------------------------
% File     : GSE018+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET018+1 (from TPTP-v5.0.0)      
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
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
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

qmf(apply_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(apply(A, C), apply(B, C)))) ))))))))).

qmf(apply_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(apply(C, A), apply(C, B)))) ))))))))).

qmf(complement_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(complement(A), complement(B)))) ))))))).

qmf(compose_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(compose(A, C), compose(B, C)))) ))))))))).

qmf(compose_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(compose(C, A), compose(C, B)))) ))))))))).

qmf(cross_product_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(cross_product(A, C), cross_product(B, C)))) ))))))))).

qmf(cross_product_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(cross_product(C, A), cross_product(C, B)))) ))))))))).

qmf(domain_of_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(domain_of(A), domain_of(B)))) ))))))).

qmf(first_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(first(A), first(B)))) ))))))).

qmf(flip_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(flip(A), flip(B)))) ))))))).

qmf(image_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(image(A, C), image(B, C)))) ))))))))).

qmf(image_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(image(C, A), image(C, B)))) ))))))))).

qmf(intersection_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(A, C), intersection(B, C)))) ))))))))).

qmf(intersection_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(intersection(C, A), intersection(C, B)))) ))))))))).

qmf(inverse_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(inverse(A), inverse(B)))) ))))))).

qmf(ordered_pair_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(ordered_pair(A, C), ordered_pair(B, C)))) ))))))))).

qmf(ordered_pair_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(ordered_pair(C, A), ordered_pair(C, B)))) ))))))))).

qmf(power_class_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(power_class(A), power_class(B)))) ))))))).

qmf(range_of_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(range_of(A), range_of(B)))) ))))))).

qmf(restrict_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(restrict(A, C, D), restrict(B, C, D)))) ))))))))))).

qmf(restrict_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(restrict(C, A, D), restrict(C, B, D)))) ))))))))))).

qmf(restrict_substitution_3,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(restrict(C, D, A), restrict(C, D, B)))) ))))))))))).

qmf(rotate_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(rotate(A), rotate(B)))) ))))))).

qmf(second_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(second(A), second(B)))) ))))))).

qmf(singleton_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(singleton(A), singleton(B)))) ))))))).

qmf(successor_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(successor(A), successor(B)))) ))))))).

qmf(sum_class_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(sum_class(A), sum_class(B)))) ))))))).

qmf(union_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(union(A, C), union(B, C)))) ))))))))).

qmf(union_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(union(C, A), union(C, B)))) ))))))))).

qmf(unordered_pair_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(A, C), unordered_pair(B, C)))) ))))))))).

qmf(unordered_pair_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(unordered_pair(C, A), unordered_pair(C, B)))) ))))))))).

qmf(disjoint_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (disjoint(A, C))) ) => ( #box : (disjoint(B, C))) ))))))))).

qmf(disjoint_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (disjoint(C, A))) ) => ( #box : (disjoint(C, B))) ))))))))).

qmf(function_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (function(A))) ) => ( #box : (function(B))) ))))))).

qmf(inductive_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (inductive(A))) ) => ( #box : (inductive(B))) ))))))).

qmf(member_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(A, C))) ) => ( #box : (member(B, C))) ))))))))).

qmf(member_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (member(C, A))) ) => ( #box : (member(C, B))) ))))))))).

qmf(subclass_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (subclass(A, C))) ) => ( #box : (subclass(B, C))) ))))))))).

qmf(subclass_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (subclass(C, A))) ) => ( #box : (subclass(C, B))) ))))))))).

qmf(subclass_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (subclass(X, Y))) => ( #box : ( ! [U] : ( #box : (( #box : (member(U, X))) => ( #box : (member(U, Y))) )))) )) & (#box : (( #box : ( ! [U] : ( #box : (( #box : (member(U, X))) => ( #box : (member(U, Y))) )))) => ( #box : (subclass(X, Y))) )))))))).

qmf(class_elements_are_sets,axiom,
( #box : ( ! [X] : ( #box : (subclass(X, universal_class)))))).

qmf(extensionality,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (qmltpeq(X, Y))) => ( ( #box : (subclass(X, Y))) & ( #box : (subclass(Y, X))) ) )) & (#box : (( ( #box : (subclass(X, Y))) & ( #box : (subclass(Y, X))) ) => ( #box : (qmltpeq(X, Y))) )))))))).

qmf(unordered_pair_defn,axiom,
( #box : ( ! [U] : ( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (member(U, unordered_pair(X, Y)))) => ( ( #box : (member(U, universal_class))) & ( ( #box : (qmltpeq(U, X))) | ( #box : (qmltpeq(U, Y))) ) ) )) & (#box : (( ( #box : (member(U, universal_class))) & ( ( #box : (qmltpeq(U, X))) | ( #box : (qmltpeq(U, Y))) ) ) => ( #box : (member(U, unordered_pair(X, Y)))) )))))))))).

qmf(unordered_pair,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (member(unordered_pair(X, Y), universal_class)))))))).

qmf(singleton_set_defn,axiom,
( #box : ( ! [X] : ( #box : (qmltpeq(singleton(X), unordered_pair(X, X))))))).

qmf(ordered_pair_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(ordered_pair(X, Y), unordered_pair(singleton(X), unordered_pair(X, singleton(Y))))))))))).

qmf(cross_product_defn,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (member(ordered_pair(U, V), cross_product(X, Y)))) => ( ( #box : (member(U, X))) & ( #box : (member(V, Y))) ) )) & (#box : (( ( #box : (member(U, X))) & ( #box : (member(V, Y))) ) => ( #box : (member(ordered_pair(U, V), cross_product(X, Y)))) )))))))))))).

qmf(cross_product,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( #box : (member(Z, cross_product(X, Y)))) => ( #box : (qmltpeq(Z, ordered_pair(first(Z), second(Z))))) ))))))))).

qmf(element_relation_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (member(ordered_pair(X, Y), element_relation))) => ( ( #box : (member(Y, universal_class))) & ( #box : (member(X, Y))) ) )) & (#box : (( ( #box : (member(Y, universal_class))) & ( #box : (member(X, Y))) ) => ( #box : (member(ordered_pair(X, Y), element_relation))) )))))))).

qmf(element_relation,axiom,
( #box : (subclass(element_relation, cross_product(universal_class, universal_class))))).

qmf(intersection,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : (( #box : (( #box : (member(Z, intersection(X, Y)))) => ( ( #box : (member(Z, X))) & ( #box : (member(Z, Y))) ) )) & (#box : (( ( #box : (member(Z, X))) & ( #box : (member(Z, Y))) ) => ( #box : (member(Z, intersection(X, Y)))) )))))))))).

qmf(complement,axiom,
( #box : ( ! [X] : ( #box : ( ! [Z] : (( #box : (( #box : (member(Z, complement(X)))) => ( ( #box : (member(Z, universal_class))) & ( #box : (~ ( #box : (member(Z, X))) )) ) )) & (#box : (( ( #box : (member(Z, universal_class))) & ( #box : (~ ( #box : (member(Z, X))) )) ) => ( #box : (member(Z, complement(X)))) )))))))).

qmf(restrict_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [XR] : ( #box : ( ! [Y] : ( #box : (qmltpeq(restrict(XR, X, Y), intersection(XR, cross_product(X, Y)))))))))))).

qmf(null_class_defn,axiom,
( #box : ( ! [X] : ( #box : (~ ( #box : (member(X, null_class))) ))))).

qmf(domain_of,axiom,
( #box : ( ! [X] : ( #box : ( ! [Z] : (( #box : (( #box : (member(Z, domain_of(X)))) => ( ( #box : (member(Z, universal_class))) & ( #box : (~ ( #box : (qmltpeq(restrict(X, singleton(Z), universal_class), null_class))) )) ) )) & (#box : (( ( #box : (member(Z, universal_class))) & ( #box : (~ ( #box : (qmltpeq(restrict(X, singleton(Z), universal_class), null_class))) )) ) => ( #box : (member(Z, domain_of(X)))) )))))))).

qmf(rotate_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : (( #box : (( #box : (member(ordered_pair(ordered_pair(U, V), W), rotate(X)))) => ( ( #box : (member(ordered_pair(ordered_pair(U, V), W), cross_product(cross_product(universal_class, universal_class), universal_class)))) & ( #box : (member(ordered_pair(ordered_pair(V, W), U), X))) ) )) & (#box : (( ( #box : (member(ordered_pair(ordered_pair(U, V), W), cross_product(cross_product(universal_class, universal_class), universal_class)))) & ( #box : (member(ordered_pair(ordered_pair(V, W), U), X))) ) => ( #box : (member(ordered_pair(ordered_pair(U, V), W), rotate(X)))) )))))))))))).

qmf(rotate,axiom,
( #box : ( ! [X] : ( #box : (subclass(rotate(X), cross_product(cross_product(universal_class, universal_class), universal_class))))))).

qmf(flip_defn,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : ( ! [X] : (( #box : (( #box : (member(ordered_pair(ordered_pair(U, V), W), flip(X)))) => ( ( #box : (member(ordered_pair(ordered_pair(U, V), W), cross_product(cross_product(universal_class, universal_class), universal_class)))) & ( #box : (member(ordered_pair(ordered_pair(V, U), W), X))) ) )) & (#box : (( ( #box : (member(ordered_pair(ordered_pair(U, V), W), cross_product(cross_product(universal_class, universal_class), universal_class)))) & ( #box : (member(ordered_pair(ordered_pair(V, U), W), X))) ) => ( #box : (member(ordered_pair(ordered_pair(U, V), W), flip(X)))) )))))))))))).

qmf(flip,axiom,
( #box : ( ! [X] : ( #box : (subclass(flip(X), cross_product(cross_product(universal_class, universal_class), universal_class))))))).

qmf(union_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : (( #box : (( #box : (member(Z, union(X, Y)))) => ( ( #box : (member(Z, X))) | ( #box : (member(Z, Y))) ) )) & (#box : (( ( #box : (member(Z, X))) | ( #box : (member(Z, Y))) ) => ( #box : (member(Z, union(X, Y)))) )))))))))).

qmf(successor_defn,axiom,
( #box : ( ! [X] : ( #box : (qmltpeq(successor(X), union(X, singleton(X)))))))).

qmf(successor_relation_defn1,axiom,
( #box : (subclass(successor_relation, cross_product(universal_class, universal_class))))).

qmf(successor_relation_defn2,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (member(ordered_pair(X, Y), successor_relation))) => ( ( #box : (member(X, universal_class))) & ( ( #box : (member(Y, universal_class))) & ( #box : (qmltpeq(successor(X), Y))) ) ) )) & (#box : (( ( #box : (member(X, universal_class))) & ( ( #box : (member(Y, universal_class))) & ( #box : (qmltpeq(successor(X), Y))) ) ) => ( #box : (member(ordered_pair(X, Y), successor_relation))) )))))))).

qmf(inverse_defn,axiom,
( #box : ( ! [Y] : ( #box : (qmltpeq(inverse(Y), domain_of(flip(cross_product(Y, universal_class))))))))).

qmf(range_of_defn,axiom,
( #box : ( ! [Z] : ( #box : (qmltpeq(range_of(Z), domain_of(inverse(Z)))))))).

qmf(image_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [XR] : ( #box : (qmltpeq(image(XR, X), range_of(restrict(XR, X, universal_class)))))))))).

qmf(inductive_defn,axiom,
( #box : ( ! [X] : (( #box : (( #box : (inductive(X))) => ( ( #box : (member(null_class, X))) & ( #box : (subclass(image(successor_relation, X), X))) ) )) & (#box : (( ( #box : (member(null_class, X))) & ( #box : (subclass(image(successor_relation, X), X))) ) => ( #box : (inductive(X))) )))))).

qmf(infinity,axiom,
( ? [X] : ( ( #box : (member(X, universal_class))) & ( ( #box : (inductive(X))) & ( #box : ( ! [Y] : ( #box : (( #box : (inductive(Y))) => ( #box : (subclass(X, Y))) )))) ) ))).

qmf(sum_class_defn,axiom,
( #box : ( ! [U] : ( #box : ( ! [X] : (( #box : (( #box : (member(U, sum_class(X)))) => ( ? [Y] : ( ( #box : (member(U, Y))) & ( #box : (member(Y, X))) )) )) & (#box : (( ? [Y] : ( ( #box : (member(U, Y))) & ( #box : (member(Y, X))) )) => ( #box : (member(U, sum_class(X)))) )))))))).

qmf(sum_class,axiom,
( #box : ( ! [X] : ( #box : (( #box : (member(X, universal_class))) => ( #box : (member(sum_class(X), universal_class))) ))))).

qmf(power_class_defn,axiom,
( #box : ( ! [U] : ( #box : ( ! [X] : (( #box : (( #box : (member(U, power_class(X)))) => ( ( #box : (member(U, universal_class))) & ( #box : (subclass(U, X))) ) )) & (#box : (( ( #box : (member(U, universal_class))) & ( #box : (subclass(U, X))) ) => ( #box : (member(U, power_class(X)))) )))))))).

qmf(power_class,axiom,
( #box : ( ! [U] : ( #box : (( #box : (member(U, universal_class))) => ( #box : (member(power_class(U), universal_class))) ))))).

qmf(compose_defn1,axiom,
( #box : ( ! [XR] : ( #box : ( ! [YR] : ( #box : (subclass(compose(YR, XR), cross_product(universal_class, universal_class))))))))).

qmf(compose_defn2,axiom,
( #box : ( ! [XR] : ( #box : ( ! [YR] : ( #box : ( ! [U] : ( #box : ( ! [V] : (( #box : (( #box : (member(ordered_pair(U, V), compose(YR, XR)))) => ( ( #box : (member(U, universal_class))) & ( #box : (member(V, image(YR, image(YR, singleton(U)))))) ) )) & (#box : (( ( #box : (member(U, universal_class))) & ( #box : (member(V, image(YR, image(YR, singleton(U)))))) ) => ( #box : (member(ordered_pair(U, V), compose(YR, XR)))) )))))))))))).

qmf(function_defn,axiom,
( #box : ( ! [XF] : (( #box : (( #box : (function(XF))) => ( ( #box : (subclass(XF, cross_product(universal_class, universal_class)))) & ( #box : (subclass(compose(XF, inverse(XF)), identity_relation))) ) )) & (#box : (( ( #box : (subclass(XF, cross_product(universal_class, universal_class)))) & ( #box : (subclass(compose(XF, inverse(XF)), identity_relation))) ) => ( #box : (function(XF))) )))))).

qmf(replacement,axiom,
( #box : ( ! [X] : ( #box : ( ! [XF] : ( #box : (( ( #box : (member(X, universal_class))) & ( #box : (function(XF))) ) => ( #box : (member(image(XF, X), universal_class))) ))))))).

qmf(disjoint_defn,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (disjoint(X, Y))) => ( #box : ( ! [U] : ( #box : (~ ( ( #box : (member(U, X))) & ( #box : (member(U, Y))) ) )))) )) & (#box : (( #box : ( ! [U] : ( #box : (~ ( ( #box : (member(U, X))) & ( #box : (member(U, Y))) ) )))) => ( #box : (disjoint(X, Y))) )))))))).

qmf(regularity,axiom,
( #box : ( ! [X] : ( #box : (( #box : (~ ( #box : (qmltpeq(X, null_class))) )) => ( ? [U] : ( ( #box : (member(U, universal_class))) & ( ( #box : (member(U, X))) & ( #box : (disjoint(U, X))) ) )) ))))).

qmf(apply_defn,axiom,
( #box : ( ! [XF] : ( #box : ( ! [Y] : ( #box : (qmltpeq(apply(XF, Y), sum_class(image(XF, singleton(Y))))))))))).

qmf(choice,axiom,
( ? [XF] : ( ( #box : (function(XF))) & ( #box : ( ! [Y] : ( #box : (( #box : (member(Y, universal_class))) => ( ( #box : (qmltpeq(Y, null_class))) | ( #box : (member(apply(XF, Y), Y))) ) )))) ))).

qmf(ordered_pair_determines_components2,conjecture,
( #box : ( ! [W] : ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (qmltpeq(ordered_pair(W, X), ordered_pair(Y, Z)))) & ( #box : (member(X, universal_class))) ) => ( #box : (qmltpeq(X, Z))) ))))))))))).

