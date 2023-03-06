%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET011+1 [QMLTP]
%          : SET011_3.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   24 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :   44 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   26 (   1   ~;   0   |;   8   &)
%                                         (   6 <=>;  11  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   10 (   5   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 2-2 aty)
%            Number of variables   :   49 (;  49   !;   0   ?;  49   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
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

tff(equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) ) ).

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

tff(prove_difference_difference_intersection,conjecture,
    ! [B: $i,C: $i] : qmltpeq(difference(B,difference(B,C)),intersection(B,C)) ).

%------------------------------------------------------------------------------
