%------------------------------------------------------------------------------
% File     : GSE061_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : Existence of a null class
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET061+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE061+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :  116 (   0 unt;  32 typ;   0 def)
%            Number of atoms       : 1302 (   0 equ)
%            Maximal formula atoms :    6 (  15 avg)
%            Number of connectives :  697 (   9   ~;   5   |;  67   &)
%                                         (   0 <=>;  86  =>;   0  <=;   0 <~>)
%                                         ( 530 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of FOOLs       :  530 ( 530 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   41 (  27   >;  14   *;   0   +;   0  <<)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :  199 (; 193   !;   6   ?; 199   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(universal_class_decl,type,
    universal_class: $i ).

tff(identity_relation_decl,type,
    identity_relation: $i ).

tff(successor_relation_decl,type,
    successor_relation: $i ).

tff(element_relation_decl,type,
    element_relation: $i ).

tff(null_class_decl,type,
    null_class: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(inductive_decl,type,
    inductive: $i > $o ).

tff(disjoint_decl,type,
    disjoint: ( $i * $i ) > $o ).

tff(function_decl,type,
    function: $i > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subclass_decl,type,
    subclass: ( $i * $i ) > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(image_decl,type,
    image: ( $i * $i ) > $i ).

tff(inverse_decl,type,
    inverse: $i > $i ).

tff(rotate_decl,type,
    rotate: $i > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(successor_decl,type,
    successor: $i > $i ).

tff(apply_decl,type,
    apply: ( $i * $i ) > $i ).

tff(power_class_decl,type,
    power_class: $i > $i ).

tff(range_of_decl,type,
    range_of: $i > $i ).

tff(union_decl,type,
    union: ( $i * $i ) > $i ).

tff(restrict_decl,type,
    restrict: ( $i * $i * $i ) > $i ).

tff(second_decl,type,
    second: $i > $i ).

tff(ordered_pair_decl,type,
    ordered_pair: ( $i * $i ) > $i ).

tff(domain_of_decl,type,
    domain_of: $i > $i ).

tff(sum_class_decl,type,
    sum_class: $i > $i ).

tff(compose_decl,type,
    compose: ( $i * $i ) > $i ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

tff(cross_product_decl,type,
    cross_product: ( $i * $i ) > $i ).

tff(complement_decl,type,
    complement: $i > $i ).

tff(flip_decl,type,
    flip: $i > $i ).

tff(first_decl,type,
    first: $i > $i ).

tff(reflexivity,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(X,X)) )) ) ).

tff(symmetry,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(X,Y)) )
                => ( {$box} @ (qmltpeq(Y,X)) ) )) )) )) ) ).

tff(transitivity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(X,Y)) )
                        & ( {$box} @ (qmltpeq(Y,Z)) ) )
                     => ( {$box} @ (qmltpeq(X,Z)) ) )) )) )) )) ) ).

tff(apply_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(apply(A,C),apply(B,C))) ) )) )) )) )) ) ).

tff(apply_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(apply(C,A),apply(C,B))) ) )) )) )) )) ) ).

tff(complement_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(complement(A),complement(B))) ) )) )) )) ) ).

tff(compose_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(compose(A,C),compose(B,C))) ) )) )) )) )) ) ).

tff(compose_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(compose(C,A),compose(C,B))) ) )) )) )) )) ) ).

tff(cross_product_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(cross_product(A,C),cross_product(B,C))) ) )) )) )) )) ) ).

tff(cross_product_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(cross_product(C,A),cross_product(C,B))) ) )) )) )) )) ) ).

tff(domain_of_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(domain_of(A),domain_of(B))) ) )) )) )) ) ).

tff(first_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(first(A),first(B))) ) )) )) )) ) ).

tff(flip_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(flip(A),flip(B))) ) )) )) )) ) ).

tff(image_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(image(A,C),image(B,C))) ) )) )) )) )) ) ).

tff(image_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(image(C,A),image(C,B))) ) )) )) )) )) ) ).

tff(intersection_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(intersection(A,C),intersection(B,C))) ) )) )) )) )) ) ).

tff(intersection_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(intersection(C,A),intersection(C,B))) ) )) )) )) )) ) ).

tff(inverse_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(inverse(A),inverse(B))) ) )) )) )) ) ).

tff(ordered_pair_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(ordered_pair(A,C),ordered_pair(B,C))) ) )) )) )) )) ) ).

tff(ordered_pair_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(ordered_pair(C,A),ordered_pair(C,B))) ) )) )) )) )) ) ).

tff(power_class_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(power_class(A),power_class(B))) ) )) )) )) ) ).

tff(range_of_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(range_of(A),range_of(B))) ) )) )) )) ) ).

tff(restrict_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( {$box} @ (qmltpeq(A,B)) )
                          => ( {$box} @ (qmltpeq(restrict(A,C,D),restrict(B,C,D))) ) )) )) )) )) )) ) ).

tff(restrict_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( {$box} @ (qmltpeq(A,B)) )
                          => ( {$box} @ (qmltpeq(restrict(C,A,D),restrict(C,B,D))) ) )) )) )) )) )) ) ).

tff(restrict_substitution_3,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( {$box} @ (qmltpeq(A,B)) )
                          => ( {$box} @ (qmltpeq(restrict(C,D,A),restrict(C,D,B))) ) )) )) )) )) )) ) ).

tff(rotate_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(rotate(A),rotate(B))) ) )) )) )) ) ).

tff(second_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(second(A),second(B))) ) )) )) )) ) ).

tff(singleton_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(singleton(A),singleton(B))) ) )) )) )) ) ).

tff(successor_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(successor(A),successor(B))) ) )) )) )) ) ).

tff(sum_class_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(sum_class(A),sum_class(B))) ) )) )) )) ) ).

tff(union_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(union(A,C),union(B,C))) ) )) )) )) )) ) ).

tff(union_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(union(C,A),union(C,B))) ) )) )) )) )) ) ).

tff(unordered_pair_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(unordered_pair(A,C),unordered_pair(B,C))) ) )) )) )) )) ) ).

tff(unordered_pair_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(unordered_pair(C,A),unordered_pair(C,B))) ) )) )) )) )) ) ).

tff(disjoint_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (disjoint(A,C)) ) )
                     => ( {$box} @ (disjoint(B,C)) ) )) )) )) )) ) ).

tff(disjoint_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (disjoint(C,A)) ) )
                     => ( {$box} @ (disjoint(C,B)) ) )) )) )) )) ) ).

tff(function_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (function(A)) ) )
                => ( {$box} @ (function(B)) ) )) )) )) ) ).

tff(inductive_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (inductive(A)) ) )
                => ( {$box} @ (inductive(B)) ) )) )) )) ) ).

tff(member_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (member(A,C)) ) )
                     => ( {$box} @ (member(B,C)) ) )) )) )) )) ) ).

tff(member_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (member(C,A)) ) )
                     => ( {$box} @ (member(C,B)) ) )) )) )) )) ) ).

tff(subclass_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (subclass(A,C)) ) )
                     => ( {$box} @ (subclass(B,C)) ) )) )) )) )) ) ).

tff(subclass_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (subclass(C,A)) ) )
                     => ( {$box} @ (subclass(C,B)) ) )) )) )) )) ) ).

tff(subclass_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (subclass(X,Y)) )
                  => ( {$box}
                     @ (! [U: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(U,X)) )
                            => ( {$box} @ (member(U,Y)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [U: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(U,X)) )
                            => ( {$box} @ (member(U,Y)) ) )) )) )
                  => ( {$box} @ (subclass(X,Y)) ) )) ) )) )) ) ).

tff(class_elements_are_sets,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (subclass(X,universal_class)) )) ) ).

tff(extensionality,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(X,Y)) )
                  => ( ( {$box} @ (subclass(X,Y)) )
                     & ( {$box} @ (subclass(Y,X)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (subclass(X,Y)) )
                     & ( {$box} @ (subclass(Y,X)) ) )
                  => ( {$box} @ (qmltpeq(X,Y)) ) )) ) )) )) ) ).

tff(unordered_pair_defn,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(U,unordered_pair(X,Y))) )
                       => ( ( {$box} @ (member(U,universal_class)) )
                          & ( ( {$box} @ (qmltpeq(U,X)) )
                            | ( {$box} @ (qmltpeq(U,Y)) ) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(U,universal_class)) )
                          & ( ( {$box} @ (qmltpeq(U,X)) )
                            | ( {$box} @ (qmltpeq(U,Y)) ) ) )
                       => ( {$box} @ (member(U,unordered_pair(X,Y))) ) )) ) )) )) )) ) ).

tff(unordered_pair_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] : ( {$box} @ (member(unordered_pair(X,Y),universal_class)) )) )) ) ).

tff(singleton_set_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(singleton(X),unordered_pair(X,X))) )) ) ).

tff(ordered_pair_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] : ( {$box} @ (qmltpeq(ordered_pair(X,Y),unordered_pair(singleton(X),unordered_pair(X,singleton(Y))))) )) )) ) ).

tff(cross_product_defn,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [X: $i] :
                   ( {$box}
                   @ (! [Y: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (member(ordered_pair(U,V),cross_product(X,Y))) )
                            => ( ( {$box} @ (member(U,X)) )
                               & ( {$box} @ (member(V,Y)) ) ) )) )
                        & ( {$box}
                          @ (( ( ( {$box} @ (member(U,X)) )
                               & ( {$box} @ (member(V,Y)) ) )
                            => ( {$box} @ (member(ordered_pair(U,V),cross_product(X,Y))) ) )) ) )) )) )) )) ) ).

tff(cross_product_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (member(Z,cross_product(X,Y))) )
                     => ( {$box} @ (qmltpeq(Z,ordered_pair(first(Z),second(Z)))) ) )) )) )) )) ) ).

tff(element_relation_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(ordered_pair(X,Y),element_relation)) )
                  => ( ( {$box} @ (member(Y,universal_class)) )
                     & ( {$box} @ (member(X,Y)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (member(Y,universal_class)) )
                     & ( {$box} @ (member(X,Y)) ) )
                  => ( {$box} @ (member(ordered_pair(X,Y),element_relation)) ) )) ) )) )) ) ).

tff(element_relation_0,axiom-local,
    {$box} @ (subclass(element_relation,cross_product(universal_class,universal_class))) ).

tff(intersection_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(Z,intersection(X,Y))) )
                       => ( ( {$box} @ (member(Z,X)) )
                          & ( {$box} @ (member(Z,Y)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(Z,X)) )
                          & ( {$box} @ (member(Z,Y)) ) )
                       => ( {$box} @ (member(Z,intersection(X,Y))) ) )) ) )) )) )) ) ).

tff(complement_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Z: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(Z,complement(X))) )
                  => ( ( {$box} @ (member(Z,universal_class)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (member(Z,X)) )) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (member(Z,universal_class)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (member(Z,X)) )) ) )
                  => ( {$box} @ (member(Z,complement(X))) ) )) ) )) )) ) ).

tff(restrict_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [XR: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(restrict(XR,X,Y),intersection(XR,cross_product(X,Y)))) )) )) )) ) ).

tff(null_class_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (~ ( {$box} @ (member(X,null_class)) )) )) ) ).

tff(domain_of_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Z: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(Z,domain_of(X))) )
                  => ( ( {$box} @ (member(Z,universal_class)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (qmltpeq(restrict(X,singleton(Z),universal_class),null_class)) )) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (member(Z,universal_class)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (qmltpeq(restrict(X,singleton(Z),universal_class),null_class)) )) ) )
                  => ( {$box} @ (member(Z,domain_of(X))) ) )) ) )) )) ) ).

tff(rotate_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [U: $i] :
              ( {$box}
              @ (! [V: $i] :
                   ( {$box}
                   @ (! [W: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),rotate(X))) )
                            => ( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))) )
                               & ( {$box} @ (member(ordered_pair(ordered_pair(V,W),U),X)) ) ) )) )
                        & ( {$box}
                          @ (( ( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))) )
                               & ( {$box} @ (member(ordered_pair(ordered_pair(V,W),U),X)) ) )
                            => ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),rotate(X))) ) )) ) )) )) )) )) ) ).

tff(rotate_0,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (subclass(rotate(X),cross_product(cross_product(universal_class,universal_class),universal_class))) )) ) ).

tff(flip_defn,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (! [X: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),flip(X))) )
                            => ( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))) )
                               & ( {$box} @ (member(ordered_pair(ordered_pair(V,U),W),X)) ) ) )) )
                        & ( {$box}
                          @ (( ( ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))) )
                               & ( {$box} @ (member(ordered_pair(ordered_pair(V,U),W),X)) ) )
                            => ( {$box} @ (member(ordered_pair(ordered_pair(U,V),W),flip(X))) ) )) ) )) )) )) )) ) ).

tff(flip_0,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class))) )) ) ).

tff(union_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(Z,union(X,Y))) )
                       => ( ( {$box} @ (member(Z,X)) )
                          | ( {$box} @ (member(Z,Y)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(Z,X)) )
                          | ( {$box} @ (member(Z,Y)) ) )
                       => ( {$box} @ (member(Z,union(X,Y))) ) )) ) )) )) )) ) ).

tff(successor_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(successor(X),union(X,singleton(X)))) )) ) ).

tff(successor_relation_defn1,axiom-local,
    {$box} @ (subclass(successor_relation,cross_product(universal_class,universal_class))) ).

tff(successor_relation_defn2,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(ordered_pair(X,Y),successor_relation)) )
                  => ( ( {$box} @ (member(X,universal_class)) )
                     & ( {$box} @ (member(Y,universal_class)) )
                     & ( {$box} @ (qmltpeq(successor(X),Y)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (member(X,universal_class)) )
                     & ( {$box} @ (member(Y,universal_class)) )
                     & ( {$box} @ (qmltpeq(successor(X),Y)) ) )
                  => ( {$box} @ (member(ordered_pair(X,Y),successor_relation)) ) )) ) )) )) ) ).

tff(inverse_defn,axiom-local,
    ( {$box}
    @ (! [Y: $i] : ( {$box} @ (qmltpeq(inverse(Y),domain_of(flip(cross_product(Y,universal_class))))) )) ) ).

tff(range_of_defn,axiom-local,
    ( {$box}
    @ (! [Z: $i] : ( {$box} @ (qmltpeq(range_of(Z),domain_of(inverse(Z)))) )) ) ).

tff(image_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [XR: $i] : ( {$box} @ (qmltpeq(image(XR,X),range_of(restrict(XR,X,universal_class)))) )) )) ) ).

tff(inductive_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (inductive(X)) )
             => ( ( {$box} @ (member(null_class,X)) )
                & ( {$box} @ (subclass(image(successor_relation,X),X)) ) ) )) )
         & ( {$box}
           @ (( ( ( {$box} @ (member(null_class,X)) )
                & ( {$box} @ (subclass(image(successor_relation,X),X)) ) )
             => ( {$box} @ (inductive(X)) ) )) ) )) ) ).

tff(infinity,axiom-local,
    ? [X: $i] :
      ( ( {$box} @ (member(X,universal_class)) )
      & ( {$box} @ (inductive(X)) )
      & ( {$box}
        @ (! [Y: $i] :
             ( {$box}
             @ (( ( {$box} @ (inductive(Y)) )
               => ( {$box} @ (subclass(X,Y)) ) )) )) ) ) ).

tff(sum_class_defn,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [X: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(U,sum_class(X))) )
                  => ? [Y: $i] :
                       ( ( {$box} @ (member(U,Y)) )
                       & ( {$box} @ (member(Y,X)) ) ) )) )
              & ( {$box}
                @ (( ? [Y: $i] :
                       ( ( {$box} @ (member(U,Y)) )
                       & ( {$box} @ (member(Y,X)) ) )
                  => ( {$box} @ (member(U,sum_class(X))) ) )) ) )) )) ) ).

tff(sum_class_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (( ( {$box} @ (member(X,universal_class)) )
           => ( {$box} @ (member(sum_class(X),universal_class)) ) )) )) ) ).

tff(power_class_defn,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [X: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(U,power_class(X))) )
                  => ( ( {$box} @ (member(U,universal_class)) )
                     & ( {$box} @ (subclass(U,X)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (member(U,universal_class)) )
                     & ( {$box} @ (subclass(U,X)) ) )
                  => ( {$box} @ (member(U,power_class(X))) ) )) ) )) )) ) ).

tff(power_class_0,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (member(U,universal_class)) )
           => ( {$box} @ (member(power_class(U),universal_class)) ) )) )) ) ).

tff(compose_defn1,axiom-local,
    ( {$box}
    @ (! [XR: $i] :
         ( {$box}
         @ (! [YR: $i] : ( {$box} @ (subclass(compose(YR,XR),cross_product(universal_class,universal_class))) )) )) ) ).

tff(compose_defn2,axiom-local,
    ( {$box}
    @ (! [XR: $i] :
         ( {$box}
         @ (! [YR: $i] :
              ( {$box}
              @ (! [U: $i] :
                   ( {$box}
                   @ (! [V: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (member(ordered_pair(U,V),compose(YR,XR))) )
                            => ( ( {$box} @ (member(U,universal_class)) )
                               & ( {$box} @ (member(V,image(YR,image(YR,singleton(U))))) ) ) )) )
                        & ( {$box}
                          @ (( ( ( {$box} @ (member(U,universal_class)) )
                               & ( {$box} @ (member(V,image(YR,image(YR,singleton(U))))) ) )
                            => ( {$box} @ (member(ordered_pair(U,V),compose(YR,XR))) ) )) ) )) )) )) )) ) ).

tff(function_defn,axiom-local,
    ( {$box}
    @ (! [XF: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (function(XF)) )
             => ( ( {$box} @ (subclass(XF,cross_product(universal_class,universal_class))) )
                & ( {$box} @ (subclass(compose(XF,inverse(XF)),identity_relation)) ) ) )) )
         & ( {$box}
           @ (( ( ( {$box} @ (subclass(XF,cross_product(universal_class,universal_class))) )
                & ( {$box} @ (subclass(compose(XF,inverse(XF)),identity_relation)) ) )
             => ( {$box} @ (function(XF)) ) )) ) )) ) ).

tff(replacement,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [XF: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (member(X,universal_class)) )
                   & ( {$box} @ (function(XF)) ) )
                => ( {$box} @ (member(image(XF,X),universal_class)) ) )) )) )) ) ).

tff(disjoint_defn,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (disjoint(X,Y)) )
                  => ( {$box}
                     @ (! [U: $i] :
                          ( {$box}
                          @ (~ ( ( {$box} @ (member(U,X)) )
                               & ( {$box} @ (member(U,Y)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [U: $i] :
                          ( {$box}
                          @ (~ ( ( {$box} @ (member(U,X)) )
                               & ( {$box} @ (member(U,Y)) ) )) )) )
                  => ( {$box} @ (disjoint(X,Y)) ) )) ) )) )) ) ).

tff(regularity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (( ( {$box}
              @ (~ ( {$box} @ (qmltpeq(X,null_class)) )) )
           => ? [U: $i] :
                ( ( {$box} @ (member(U,universal_class)) )
                & ( {$box} @ (member(U,X)) )
                & ( {$box} @ (disjoint(U,X)) ) ) )) )) ) ).

tff(apply_defn,axiom-local,
    ( {$box}
    @ (! [XF: $i] :
         ( {$box}
         @ (! [Y: $i] : ( {$box} @ (qmltpeq(apply(XF,Y),sum_class(image(XF,singleton(Y))))) )) )) ) ).

tff(choice,axiom-local,
    ? [XF: $i] :
      ( ( {$box} @ (function(XF)) )
      & ( {$box}
        @ (! [Y: $i] :
             ( {$box}
             @ (( ( {$box} @ (member(Y,universal_class)) )
               => ( ( {$box} @ (qmltpeq(Y,null_class)) )
                  | ( {$box} @ (member(apply(XF,Y),Y)) ) ) )) )) ) ) ).

tff(existence_of_null_class,conjecture,
    ? [X: $i] :
      ( {$box}
      @ (! [Z: $i] :
           ( {$box}
           @ (~ ( {$box} @ (member(Z,X)) )) )) ) ).

%------------------------------------------------------------------------------
