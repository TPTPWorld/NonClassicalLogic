%------------------------------------------------------------------------------
% File     : SET027+1 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Transitivity of subset
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :

% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,(
    ! [X] : qmltpeq(X,X)   )).

qmf(symmetry,axiom,(
    ! [X,Y] : 
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) )   )).

qmf(transitivity,axiom,(
    ! [X,Y,Z] : 
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) )   )).

qmf(apply_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(apply(A,C),apply(B,C)) )   )).

qmf(apply_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(apply(C,A),apply(C,B)) )   )).

qmf(complement_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(complement(A),complement(B)) )   )).

qmf(compose_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(compose(A,C),compose(B,C)) )   )).

qmf(compose_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(compose(C,A),compose(C,B)) )   )).

qmf(cross_product_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(cross_product(A,C),cross_product(B,C)) )   )).

qmf(cross_product_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(cross_product(C,A),cross_product(C,B)) )   )).

qmf(domain_of_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(domain_of(A),domain_of(B)) )   )).

qmf(first_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(first(A),first(B)) )   )).

qmf(flip_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(flip(A),flip(B)) )   )).

qmf(image_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(image(A,C),image(B,C)) )   )).

qmf(image_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(image(C,A),image(C,B)) )   )).

qmf(intersection_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(intersection(A,C),intersection(B,C)) )   )).

qmf(intersection_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(intersection(C,A),intersection(C,B)) )   )).

qmf(inverse_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(inverse(A),inverse(B)) )   )).

qmf(ordered_pair_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(ordered_pair(A,C),ordered_pair(B,C)) )   )).

qmf(ordered_pair_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(ordered_pair(C,A),ordered_pair(C,B)) )   )).

qmf(power_class_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(power_class(A),power_class(B)) )   )).

qmf(range_of_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(range_of(A),range_of(B)) )   )).

qmf(restrict_substitution_1,axiom,(
    ! [A,B,C,D] : 
      ( qmltpeq(A,B)
     => qmltpeq(restrict(A,C,D),restrict(B,C,D)) )   )).

qmf(restrict_substitution_2,axiom,(
    ! [A,B,C,D] : 
      ( qmltpeq(A,B)
     => qmltpeq(restrict(C,A,D),restrict(C,B,D)) )   )).

qmf(restrict_substitution_3,axiom,(
    ! [A,B,C,D] : 
      ( qmltpeq(A,B)
     => qmltpeq(restrict(C,D,A),restrict(C,D,B)) )   )).

qmf(rotate_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(rotate(A),rotate(B)) )   )).

qmf(second_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(second(A),second(B)) )   )).

qmf(singleton_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) )   )).

qmf(successor_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(successor(A),successor(B)) )   )).

qmf(sum_class_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(sum_class(A),sum_class(B)) )   )).

qmf(union_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(A,C),union(B,C)) )   )).

qmf(union_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(C,A),union(C,B)) )   )).

qmf(unordered_pair_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(A,C),unordered_pair(B,C)) )   )).

qmf(unordered_pair_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(C,A),unordered_pair(C,B)) )   )).

qmf(disjoint_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & disjoint(A,C) )
     => disjoint(B,C) )   )).

qmf(disjoint_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & disjoint(C,A) )
     => disjoint(C,B) )   )).

qmf(function_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & function(A) )
     => function(B) )   )).

qmf(inductive_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & inductive(A) )
     => inductive(B) )   )).

qmf(member_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & member(A,C) )
     => member(B,C) )   )).

qmf(member_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & member(C,A) )
     => member(C,B) )   )).

qmf(subclass_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & subclass(A,C) )
     => subclass(B,C) )   )).

qmf(subclass_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & subclass(C,A) )
     => subclass(C,B) )   )).

qmf(subclass_defn,axiom,(
    ! [X,Y] : 
      ( subclass(X,Y)
    <=> ! [U] : 
          ( member(U,X)
         => member(U,Y) ) )   )).

qmf(class_elements_are_sets,axiom,(
    ! [X] : subclass(X,universal_class)   )).

qmf(extensionality,axiom,(
    ! [X,Y] : 
      ( qmltpeq(X,Y)
    <=> ( subclass(X,Y)
        & subclass(Y,X) ) )   )).

qmf(unordered_pair_defn,axiom,(
    ! [U,X,Y] : 
      ( member(U,unordered_pair(X,Y))
    <=> ( member(U,universal_class)
        & ( qmltpeq(U,X)
          | qmltpeq(U,Y) ) ) )   )).

qmf(unordered_pair,axiom,(
    ! [X,Y] : member(unordered_pair(X,Y),universal_class)   )).

qmf(singleton_set_defn,axiom,(
    ! [X] : qmltpeq(singleton(X),unordered_pair(X,X))   )).

qmf(ordered_pair_defn,axiom,(
    ! [X,Y] : qmltpeq(ordered_pair(X,Y),unordered_pair(singleton(X),unordered_pair(X,singleton(Y))))   )).

qmf(cross_product_defn,axiom,(
    ! [U,V,X,Y] : 
      ( member(ordered_pair(U,V),cross_product(X,Y))
    <=> ( member(U,X)
        & member(V,Y) ) )   )).

qmf(cross_product,axiom,(
    ! [X,Y,Z] : 
      ( member(Z,cross_product(X,Y))
     => qmltpeq(Z,ordered_pair(first(Z),second(Z))) )   )).

qmf(element_relation_defn,axiom,(
    ! [X,Y] : 
      ( member(ordered_pair(X,Y),element_relation)
    <=> ( member(Y,universal_class)
        & member(X,Y) ) )   )).

qmf(element_relation,axiom,(
    subclass(element_relation,cross_product(universal_class,universal_class))   )).

qmf(intersection,axiom,(
    ! [X,Y,Z] : 
      ( member(Z,intersection(X,Y))
    <=> ( member(Z,X)
        & member(Z,Y) ) )   )).

qmf(complement,axiom,(
    ! [X,Z] : 
      ( member(Z,complement(X))
    <=> ( member(Z,universal_class)
        & ~ member(Z,X) ) )   )).

qmf(restrict_defn,axiom,(
    ! [X,XR,Y] : qmltpeq(restrict(XR,X,Y),intersection(XR,cross_product(X,Y)))   )).

qmf(null_class_defn,axiom,(
    ! [X] : ~ member(X,null_class)   )).

qmf(domain_of,axiom,(
    ! [X,Z] : 
      ( member(Z,domain_of(X))
    <=> ( member(Z,universal_class)
        & ~ qmltpeq(restrict(X,singleton(Z),universal_class),null_class) ) )   )).

qmf(rotate_defn,axiom,(
    ! [X,U,V,W] : 
      ( member(ordered_pair(ordered_pair(U,V),W),rotate(X))
    <=> ( member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
        & member(ordered_pair(ordered_pair(V,W),U),X) ) )   )).

qmf(rotate,axiom,(
    ! [X] : subclass(rotate(X),cross_product(cross_product(universal_class,universal_class),universal_class))   )).

qmf(flip_defn,axiom,(
    ! [U,V,W,X] : 
      ( member(ordered_pair(ordered_pair(U,V),W),flip(X))
    <=> ( member(ordered_pair(ordered_pair(U,V),W),cross_product(cross_product(universal_class,universal_class),universal_class))
        & member(ordered_pair(ordered_pair(V,U),W),X) ) )   )).

qmf(flip,axiom,(
    ! [X] : subclass(flip(X),cross_product(cross_product(universal_class,universal_class),universal_class))   )).

qmf(union_defn,axiom,(
    ! [X,Y,Z] : 
      ( member(Z,union(X,Y))
    <=> ( member(Z,X)
        | member(Z,Y) ) )   )).

qmf(successor_defn,axiom,(
    ! [X] : qmltpeq(successor(X),union(X,singleton(X)))   )).

qmf(successor_relation_defn1,axiom,(
    subclass(successor_relation,cross_product(universal_class,universal_class))   )).

qmf(successor_relation_defn2,axiom,(
    ! [X,Y] : 
      ( member(ordered_pair(X,Y),successor_relation)
    <=> ( member(X,universal_class)
        & member(Y,universal_class)
        & qmltpeq(successor(X),Y) ) )   )).

qmf(inverse_defn,axiom,(
    ! [Y] : qmltpeq(inverse(Y),domain_of(flip(cross_product(Y,universal_class))))   )).

qmf(range_of_defn,axiom,(
    ! [Z] : qmltpeq(range_of(Z),domain_of(inverse(Z)))   )).

qmf(image_defn,axiom,(
    ! [X,XR] : qmltpeq(image(XR,X),range_of(restrict(XR,X,universal_class)))   )).

qmf(inductive_defn,axiom,(
    ! [X] : 
      ( inductive(X)
    <=> ( member(null_class,X)
        & subclass(image(successor_relation,X),X) ) )   )).

qmf(infinity,axiom,(
    ? [X] : 
      ( member(X,universal_class)
      & inductive(X)
      & ! [Y] : 
          ( inductive(Y)
         => subclass(X,Y) ) )   )).

qmf(sum_class_defn,axiom,(
    ! [U,X] : 
      ( member(U,sum_class(X))
    <=> ? [Y] : 
          ( member(U,Y)
          & member(Y,X) ) )   )).

qmf(sum_class,axiom,(
    ! [X] : 
      ( member(X,universal_class)
     => member(sum_class(X),universal_class) )   )).

qmf(power_class_defn,axiom,(
    ! [U,X] : 
      ( member(U,power_class(X))
    <=> ( member(U,universal_class)
        & subclass(U,X) ) )   )).

qmf(power_class,axiom,(
    ! [U] : 
      ( member(U,universal_class)
     => member(power_class(U),universal_class) )   )).

qmf(compose_defn1,axiom,(
    ! [XR,YR] : subclass(compose(YR,XR),cross_product(universal_class,universal_class))   )).

qmf(compose_defn2,axiom,(
    ! [XR,YR,U,V] : 
      ( member(ordered_pair(U,V),compose(YR,XR))
    <=> ( member(U,universal_class)
        & member(V,image(YR,image(YR,singleton(U)))) ) )   )).

qmf(function_defn,axiom,(
    ! [XF] : 
      ( function(XF)
    <=> ( subclass(XF,cross_product(universal_class,universal_class))
        & subclass(compose(XF,inverse(XF)),identity_relation) ) )   )).

qmf(replacement,axiom,(
    ! [X,XF] : 
      ( ( member(X,universal_class)
        & function(XF) )
     => member(image(XF,X),universal_class) )   )).

qmf(disjoint_defn,axiom,(
    ! [X,Y] : 
      ( disjoint(X,Y)
    <=> ! [U] : 
          ~ ( member(U,X)
            & member(U,Y) ) )   )).

qmf(regularity,axiom,(
    ! [X] : 
      ( ~ qmltpeq(X,null_class)
     => ? [U] : 
          ( member(U,universal_class)
          & member(U,X)
          & disjoint(U,X) ) )   )).

qmf(apply_defn,axiom,(
    ! [XF,Y] : qmltpeq(apply(XF,Y),sum_class(image(XF,singleton(Y))))   )).

qmf(choice,axiom,(
    ? [XF] : 
      ( function(XF)
      & ! [Y] : 
          ( member(Y,universal_class)
         => ( qmltpeq(Y,null_class)
            | member(apply(XF,Y),Y) ) ) )   )).

qmf(transitivity,conjecture,(
    ! [X,Y,Z] : 
      ( ( subclass(X,Y)
        & subclass(Y,Z) )
     => subclass(X,Z) )   )).
%------------------------------------------------------------------------------
