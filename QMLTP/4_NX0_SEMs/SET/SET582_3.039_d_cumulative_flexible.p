%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET582+1 [QMLTP]
%          : SET582_3.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   5 unt;   6 typ;   0 def)
%            Number of atoms       :   56 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   34 (   2   ~;   1   |;   7   &)
%                                         (   9 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   12 (   6   >;   6   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   64 (;  64   !;   0   ?;  64   :)
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

tff(member_equal,axiom-local,
    ! [B: $i,C: $i] :
      ( ! [D: $i] :
          ( member(D,B)
        <=> member(D,C) )
     => qmltpeq(B,C) ) ).

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

tff(equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) ) ).

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

tff(subset_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( subset(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
         => member(D,C) ) ) ).

tff(reflexivity_of_subset,axiom-local,
    ! [B: $i] : subset(B,B) ).

tff(prove_th25,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( ! [E: $i] :
          ( ~ member(E,B)
        <=> ( member(E,C)
          <=> member(E,D) ) )
     => qmltpeq(B,symmetric_difference(C,D)) ) ).

%------------------------------------------------------------------------------
