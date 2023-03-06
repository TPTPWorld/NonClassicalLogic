%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET019+1 [QMLTP]
%          : SET019_4.031_k_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   46 (   2 unt;  13 typ;   0 def)
%            Number of atoms       :   80 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   49 (   2   ~;   2   |;  12   &)
%                                         (  10 <=>;  23  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   20 (  12   >;   8   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   86 (;  85   !;   1   ?;  86   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_K ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(equal_set_decl,type,
    equal_set: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(product_decl,type,
    product: $i > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(sum_decl,type,
    sum: $i > $i ).

tff(union_decl,type,
    union: ( $i * $i ) > $i ).

tff(power_set_decl,type,
    power_set: $i > $i ).

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

tff(difference_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(difference(A,C),difference(B,C)) ) ).

tff(difference_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(difference(C,A),difference(C,B)) ) ).

tff(intersection_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(A,C),intersection(B,C)) ) ).

tff(intersection_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(C,A),intersection(C,B)) ) ).

tff(power_set_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(power_set(A),power_set(B)) ) ).

tff(product_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(product(A),product(B)) ) ).

tff(singleton_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) ) ).

tff(sum_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(sum(A),sum(B)) ) ).

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

tff(equal_set_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & equal_set(A,C) )
     => equal_set(B,C) ) ).

tff(equal_set_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & equal_set(C,A) )
     => equal_set(C,B) ) ).

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

tff(subset_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & subset(A,C) )
     => subset(B,C) ) ).

tff(subset_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & subset(C,A) )
     => subset(C,B) ) ).

tff(subset_0,axiom-local,
    ! [A: $i,B: $i] :
      ( subset(A,B)
    <=> ! [X: $i] :
          ( member(X,A)
         => member(X,B) ) ) ).

tff(equal_set_0,axiom-local,
    ! [A: $i,B: $i] :
      ( equal_set(A,B)
    <=> ( subset(A,B)
        & subset(B,A) ) ) ).

tff(power_set_0,axiom-local,
    ! [X: $i,A: $i] :
      ( member(X,power_set(A))
    <=> subset(X,A) ) ).

tff(intersection_0,axiom-local,
    ! [X: $i,A: $i,B: $i] :
      ( member(X,intersection(A,B))
    <=> ( member(X,A)
        & member(X,B) ) ) ).

tff(union_0,axiom-local,
    ! [X: $i,A: $i,B: $i] :
      ( member(X,union(A,B))
    <=> ( member(X,A)
        | member(X,B) ) ) ).

tff(empty_set_0,axiom-local,
    ! [X: $i] : ~ member(X,empty_set) ).

tff(difference_0,axiom-local,
    ! [B: $i,A: $i,E: $i] :
      ( member(B,difference(E,A))
    <=> ( member(B,E)
        & ~ member(B,A) ) ) ).

tff(singleton_0,axiom-local,
    ! [X: $i,A: $i] :
      ( member(X,singleton(A))
    <=> qmltpeq(X,A) ) ).

tff(unordered_pair_0,axiom-local,
    ! [X: $i,A: $i,B: $i] :
      ( member(X,unordered_pair(A,B))
    <=> ( qmltpeq(X,A)
        | qmltpeq(X,B) ) ) ).

tff(sum_0,axiom-local,
    ! [X: $i,A: $i] :
      ( member(X,sum(A))
    <=> ? [Y: $i] :
          ( member(Y,A)
          & member(X,Y) ) ) ).

tff(product_0,axiom-local,
    ! [X: $i,A: $i] :
      ( member(X,product(A))
    <=> ! [Y: $i] :
          ( member(Y,A)
         => member(X,Y) ) ) ).

tff(thI02,conjecture,
    ! [A: $i,B: $i] :
      ( ( subset(A,B)
        & subset(B,A) )
     => equal_set(A,B) ) ).

%------------------------------------------------------------------------------
