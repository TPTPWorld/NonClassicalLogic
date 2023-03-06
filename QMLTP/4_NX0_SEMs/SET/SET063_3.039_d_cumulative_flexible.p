%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET063+1 [QMLTP]
%          : SET063_3.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   20 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :   34 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   21 (   2   ~;   0   |;   7   &)
%                                         (   3 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   4   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   31 (;  31   !;   0   ?;  31   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

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

tff(empty_set_subset,axiom-local,
    ! [B: $i] : subset(empty_set,B) ).

tff(empty_set_defn,axiom-local,
    ! [B: $i] : ~ member(B,empty_set) ).

tff(subset_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( subset(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
         => member(D,C) ) ) ).

tff(equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) ) ).

tff(reflexivity_of_subset,axiom-local,
    ! [B: $i] : subset(B,B) ).

tff(empty_defn,axiom-local,
    ! [B: $i] :
      ( empty(B)
    <=> ! [C: $i] : ~ member(C,B) ) ).

tff(prove_subset_of_empty_set_is_empty_set,conjecture,
    ! [B: $i] :
      ( subset(B,empty_set)
     => qmltpeq(B,empty_set) ) ).

%------------------------------------------------------------------------------
