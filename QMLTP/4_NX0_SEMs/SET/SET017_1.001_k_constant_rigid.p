%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET017+1 [QMLTP]
%          : SET017_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :  116 (  17 unt;  32 typ;   0 def)
%            Number of atoms       :  189 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :  110 (   5   ~;   3   |;  34   &)
%                                         (  18 <=>;  50  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   41 (  27   >;  14   *;   0   +;   0  <<)
%            Number of predicates  :    6 (   6 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;   5 con; 0-3 aty)
%            Number of variables   :  197 (; 193   !;   4   ?; 197   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
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
    ! [X: $i] : qmltpeq(X,X) ).

tff(symmetry,axiom-local,
    ! [X: $i,Y: $i] :
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) ) ).

tff(transitivity,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) ) ).

tff(apply_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(apply(A,C),apply(B,C)) ) ).

tff(apply_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(apply(C,A),apply(C,B)) ) ).

tff(complement_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(complement(A),complement(B)) ) ).

tff(compose_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(compose(A,C),compose(B,C)) ) ).

tff(compose_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(compose(C,A),compose(C,B)) ) ).

tff(cross_product_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(cross_product(A,C),cross_product(B,C)) ) ).

tff(cross_product_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(cross_product(C,A),cross_product(C,B)) ) ).

tff(domain_of_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(domain_of(A),domain_of(B)) ) ).

tff(first_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(first(A),first(B)) ) ).

tff(flip_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(flip(A),flip(B)) ) ).

tff(image_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(image(A,C),image(B,C)) ) ).

tff(image_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(image(C,A),image(C,B)) ) ).

tff(intersection_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(A,C),intersection(B,C)) ) ).

tff(intersection_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(C,A),intersection(C,B)) ) ).

tff(inverse_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(inverse(A),inverse(B)) ) ).

tff(ordered_pair_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(ordered_pair(A,C),ordered_pair(B,C)) ) ).

tff(ordered_pair_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(ordered_pair(C,A),ordered_pair(C,B)) ) ).

tff(power_class_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(power_class(A),power_class(B)) ) ).

tff(range_of_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(range_of(A),range_of(B)) ) ).

tff(restrict_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(restrict(A,C,D),restrict(B,C,D)) ) ).

tff(restrict_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(restrict(C,A,D),restrict(C,B,D)) ) ).

tff(restrict_substitution_3,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(restrict(C,D,A),restrict(C,D,B)) ) ).

tff(rotate_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(rotate(A),rotate(B)) ) ).

tff(second_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(second(A),second(B)) ) ).

tff(singleton_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) ) ).

tff(successor_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(successor(A),successor(B)) ) ).

tff(sum_class_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(sum_class(A),sum_class(B)) ) ).

tff(union_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(union(A,C),union(B,C)) ) ).

tff(union_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(union(C,A),union(C,B)) ) ).

tff(unordered_pair_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(A,C),unordered_pair(B,C)) ) ).

tff(unordered_pair_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(C,A),unordered_pair(C,B)) ) ).

tff(disjoint_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & disjoint(A,C) )
     => disjoint(B,C) ) ).

tff(disjoint_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & disjoint(C,A) )
     => disjoint(C,B) ) ).

tff(function_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & function(A) )
     => function(B) ) ).

tff(inductive_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & inductive(A) )
     => inductive(B) ) ).

tff(member_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & member(A,C) )
     => member(B,C) ) ).

tff(member_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & member(C,A) )
     => member(C,B) ) ).

tff(subclass_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & subclass(A,C) )
     => subclass(B,C) ) ).

tff(subclass_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & subclass(C,A) )
     => subclass(C,B) ) ).

tff(subclass_defn,axiom-local,
    ! [X: $i,Y: $i] :
      ( subclass(X,Y)
    <=> ! [U: $i] :
          ( member(U,X)
         => member(U,Y) ) ) ).

tff(class_elements_are_sets,axiom-local,
    ! [X: $i] : subclass(X,universal_class) ).

tff(extensionality,axiom-local,
    ! [X: $i,Y: $i] :
      ( qmltpeq(X,Y)
    <=> ( subclass(X,Y)
        & subclass(Y,X) ) ) ).

tff(unordered_pair_defn,axiom-local,
    ! [U: $i,X: $i,Y: $i] :
      ( member(U,unordered_pair(X,Y))
    <=> ( member(U,universal_class)
        & ( qmltpeq(U,X)
          | qmltpeq(U,Y) ) ) ) ).

tff(unordered_pair_0,axiom-local,
    ! [X: $i,Y: $i] : member(unordered_pair(X,Y),universal_class) ).

tff(singleton_set_defn,axiom-local,
    ! [X: $i] : qmltpeq(singleton(X),unordered_pair(X,X)) ).

tff(ordered_pair_defn,axiom-local,
    ! [X: $i,Y: $i] : qmltpeq(ordered_pair(X,Y),unordered_pair(singleton(X),unordered_pair(X,singleton(Y)))) ).

tff(cross_product_defn,axiom-local,
    ! [U: $i,V: $i,X: $i,Y: $i] :
      ( member(ordered_pair(U,V),cross_product(X,Y))
    <=> ( member(U,X)
        & member(V,Y) ) ) ).

tff(cross_product_0,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( member(Z,cross_product(X,Y))
     => qmltpeq(Z,ordered_pair(first(Z),second(Z))) ) ).

tff(element_relation_defn,axiom-local,
    ! [X: $i,Y: $i] :
      ( member(ordered_pair(X,Y),element_relation)
    <=> ( member(Y,universal_class)
        & member(X,Y) ) ) ).

tff(element_relation_0,axiom-local,
    subclass(element_relation,cross_product(universal_class,universal_class)) ).

tff(intersection_0,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( member(Z,intersection(X,Y))
    <=> ( member(Z,X)
        & member(Z,Y) ) ) ).

tff(complement_0,axiom-local,
    ! [X: $i,Z: $i] :
      ( member(Z,complement(X))
    <=> ( member(Z,universal_class)
        & ~ member(Z,X) ) ) ).

tff(restrict_defn,axiom-local,
    ! [X: $i,XR: $i,Y: $i] : qmltpeq(restrict(XR,X,Y),intersection(XR,cross_product(X,Y))) ).

tff(null_class_defn,axiom-local,
    ! [X: $i] : ~ member(X,null_class) ).

tff(domain_of_0,axiom-local,
    ! [X: $i,Z: $i] :
      ( member(Z,domain_of(X))
    <=> ( member(Z,universal_class)
        & ~ qmltpeq(restrict(X,singleton(Z),universal_class),null_class) ) ) ).

tff(rotate_defn,axiom-local,
    ! [X: $i,U: $i,V: $i,W: $i] :
      ( member(ordered_pair(ordered_pair(U,V),W),rotate(X))
    <=> ( member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
        & member(ordered_pair(ordered_pair(V,W),U),X) ) ) ).

tff(rotate_0,axiom-local,
    ! [X: $i] : subclass(rotate(X),cross_product(cross_product(universal_class,universal_class),universal_class)) ).

tff(flip_defn,axiom-local,
    ! [U: $i,V: $i,W: $i,X: $i] :
      ( member(ordered_pair(ordered_pair(U,V),W),flip(X))
    <=> ( member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
        & member(ordered_pair(ordered_pair(V,U),W),X) ) ) ).

tff(flip_0,axiom-local,
    ! [X: $i] : subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class)) ).

tff(union_defn,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( member(Z,union(X,Y))
    <=> ( member(Z,X)
        | member(Z,Y) ) ) ).

tff(successor_defn,axiom-local,
    ! [X: $i] : qmltpeq(successor(X),union(X,singleton(X))) ).

tff(successor_relation_defn1,axiom-local,
    subclass(successor_relation,cross_product(universal_class,universal_class)) ).

tff(successor_relation_defn2,axiom-local,
    ! [X: $i,Y: $i] :
      ( member(ordered_pair(X,Y),successor_relation)
    <=> ( member(X,universal_class)
        & member(Y,universal_class)
        & qmltpeq(successor(X),Y) ) ) ).

tff(inverse_defn,axiom-local,
    ! [Y: $i] : qmltpeq(inverse(Y),domain_of(flip(cross_product(Y,universal_class)))) ).

tff(range_of_defn,axiom-local,
    ! [Z: $i] : qmltpeq(range_of(Z),domain_of(inverse(Z))) ).

tff(image_defn,axiom-local,
    ! [X: $i,XR: $i] : qmltpeq(image(XR,X),range_of(restrict(XR,X,universal_class))) ).

tff(inductive_defn,axiom-local,
    ! [X: $i] :
      ( inductive(X)
    <=> ( member(null_class,X)
        & subclass(image(successor_relation,X),X) ) ) ).

tff(infinity,axiom-local,
    ? [X: $i] :
      ( member(X,universal_class)
      & inductive(X)
      & ! [Y: $i] :
          ( inductive(Y)
         => subclass(X,Y) ) ) ).

tff(sum_class_defn,axiom-local,
    ! [U: $i,X: $i] :
      ( member(U,sum_class(X))
    <=> ? [Y: $i] :
          ( member(U,Y)
          & member(Y,X) ) ) ).

tff(sum_class_0,axiom-local,
    ! [X: $i] :
      ( member(X,universal_class)
     => member(sum_class(X),universal_class) ) ).

tff(power_class_defn,axiom-local,
    ! [U: $i,X: $i] :
      ( member(U,power_class(X))
    <=> ( member(U,universal_class)
        & subclass(U,X) ) ) ).

tff(power_class_0,axiom-local,
    ! [U: $i] :
      ( member(U,universal_class)
     => member(power_class(U),universal_class) ) ).

tff(compose_defn1,axiom-local,
    ! [XR: $i,YR: $i] : subclass(compose(YR,XR),cross_product(universal_class,universal_class)) ).

tff(compose_defn2,axiom-local,
    ! [XR: $i,YR: $i,U: $i,V: $i] :
      ( member(ordered_pair(U,V),compose(YR,XR))
    <=> ( member(U,universal_class)
        & member(V,image(YR,image(YR,singleton(U)))) ) ) ).

tff(function_defn,axiom-local,
    ! [XF: $i] :
      ( function(XF)
    <=> ( subclass(XF,cross_product(universal_class,universal_class))
        & subclass(compose(XF,inverse(XF)),identity_relation) ) ) ).

tff(replacement,axiom-local,
    ! [X: $i,XF: $i] :
      ( ( member(X,universal_class)
        & function(XF) )
     => member(image(XF,X),universal_class) ) ).

tff(disjoint_defn,axiom-local,
    ! [X: $i,Y: $i] :
      ( disjoint(X,Y)
    <=> ! [U: $i] :
          ~ ( member(U,X)
            & member(U,Y) ) ) ).

tff(regularity,axiom-local,
    ! [X: $i] :
      ( ~ qmltpeq(X,null_class)
     => ? [U: $i] :
          ( member(U,universal_class)
          & member(U,X)
          & disjoint(U,X) ) ) ).

tff(apply_defn,axiom-local,
    ! [XF: $i,Y: $i] : qmltpeq(apply(XF,Y),sum_class(image(XF,singleton(Y)))) ).

tff(choice,axiom-local,
    ? [XF: $i] :
      ( function(XF)
      & ! [Y: $i] :
          ( member(Y,universal_class)
         => ( qmltpeq(Y,null_class)
            | member(apply(XF,Y),Y) ) ) ) ).

tff(left_cancellation,conjecture,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( member(Y,universal_class)
        & member(Z,universal_class)
        & qmltpeq(unordered_pair(X,Y),unordered_pair(X,Z)) )
     => qmltpeq(Y,Z) ) ).

%------------------------------------------------------------------------------
