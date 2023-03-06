%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET580+1 [QMLTP]
%          : SET580_1.003_s5_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   23 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :   39 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   23 (   2   ~;   1   |;   4   &)
%                                         (   6 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   10 (   5   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   48 (;  48   !;   0   ?;  48   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S5 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(symmetric_difference_decl,type,
    symmetric_difference: ( $i * $i ) > $i ).

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

tff(symmetric_difference_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(symmetric_difference(A,C),symmetric_difference(B,C)) ) ).

tff(symmetric_difference_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(symmetric_difference(C,A),symmetric_difference(C,B)) ) ).

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

tff(union_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,union(B,C))
    <=> ( member(D,B)
        | member(D,C) ) ) ).

tff(difference_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) ) ).

tff(symmetric_difference_defn,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(symmetric_difference(B,C),union(difference(B,C),difference(C,B))) ).

tff(commutativity_of_union,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(union(B,C),union(C,B)) ).

tff(commutativity_of_symmetric_difference,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(symmetric_difference(B,C),symmetric_difference(C,B)) ).

tff(equal_member_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
        <=> member(D,C) ) ) ).

tff(prove_th23,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( member(B,symmetric_difference(C,D))
    <=> ~ ( member(B,C)
        <=> member(B,D) ) ) ).

%------------------------------------------------------------------------------
