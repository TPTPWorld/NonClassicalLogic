%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET581+1 [QMLTP]
%          : SET581_3.047_s5_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   23 (   3 unt;   6 typ;   0 def)
%            Number of atoms       :   40 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   26 (   3   ~;   0   |;   8   &)
%                                         (   5 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    9 (   5   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-2 aty)
%            Number of variables   :   42 (;  42   !;   0   ?;  42   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(not_equal_decl,type,
    not_equal: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

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

tff(intersection_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(A,C),intersection(B,C)) ) ).

tff(intersection_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(intersection(C,A),intersection(C,B)) ) ).

tff(empty_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & empty(A) )
     => empty(B) ) ).

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

tff(not_equal_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & not_equal(A,C) )
     => not_equal(B,C) ) ).

tff(not_equal_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & not_equal(C,A) )
     => not_equal(C,B) ) ).

tff(intersection_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,intersection(B,C))
    <=> ( member(D,B)
        & member(D,C) ) ) ).

tff(empty_set_defn,axiom-local,
    ! [B: $i] : ~ member(B,empty_set) ).

tff(equal_member_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
        <=> member(D,C) ) ) ).

tff(not_equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( not_equal(B,C)
    <=> ~ qmltpeq(B,C) ) ).

tff(commutativity_of_intersection,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(intersection(B,C),intersection(C,B)) ).

tff(empty_defn,axiom-local,
    ! [B: $i] :
      ( empty(B)
    <=> ! [C: $i] : ~ member(C,B) ) ).

tff(prove_th24,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( ( member(B,C)
        & member(B,D) )
     => not_equal(intersection(C,D),empty_set) ) ).

%------------------------------------------------------------------------------
