%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET010+1 [QMLTP]
%          : SET010_1.003_d_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   32 (   6 unt;   6 typ;   0 def)
%            Number of atoms       :   58 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   33 (   1   ~;   1   |;   9   &)
%                                         (   7 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   12 (   6   >;   6   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   69 (;  69   !;   0   ?;  69   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(union_decl,type,
    union: ( $i * $i ) > $i ).

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

tff(union_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(union(A,C),union(B,C)) ) ).

tff(union_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(union(C,A),union(C,B)) ) ).

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

tff(union_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,union(B,C))
    <=> ( member(D,B)
        | member(D,C) ) ) ).

tff(intersection_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,intersection(B,C))
    <=> ( member(D,B)
        & member(D,C) ) ) ).

tff(difference_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) ) ).

tff(union_subset,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( ( subset(B,C)
        & subset(D,C) )
     => subset(union(B,D),C) ) ).

tff(intersection_is_subset,axiom-local,
    ! [B: $i,C: $i] : subset(intersection(B,C),B) ).

tff(subset_difference,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( subset(B,C)
     => subset(difference(D,C),difference(D,B)) ) ).

tff(equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) ) ).

tff(commutativity_of_union,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(union(B,C),union(C,B)) ).

tff(commutativity_of_intersection,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(intersection(B,C),intersection(C,B)) ).

tff(subset_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( subset(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
         => member(D,C) ) ) ).

tff(reflexivity_of_subset,axiom-local,
    ! [B: $i] : subset(B,B) ).

tff(equal_member_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
        <=> member(D,C) ) ) ).

tff(prove_difference_and_intersection_and_union,conjecture,
    ! [B: $i,C: $i,D: $i] : qmltpeq(difference(B,intersection(C,D)),union(difference(B,C),difference(B,D))) ).

%------------------------------------------------------------------------------
