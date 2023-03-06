%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET577+1 [QMLTP]
%          : SET577_1.003_k_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   20 (   3 unt;   4 typ;   0 def)
%            Number of atoms       :   40 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   24 (   0   ~;   2   |;   6   &)
%                                         (   6 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   4   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   42 (;  42   !;   0   ?;  42   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

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

tff(equal_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) ) ).

tff(commutativity_of_union,axiom-local,
    ! [B: $i,C: $i] : qmltpeq(union(B,C),union(C,B)) ).

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

tff(prove_th18,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( ! [E: $i] :
          ( member(E,B)
        <=> ( member(E,C)
            | member(E,D) ) )
     => qmltpeq(B,union(C,D)) ) ).

%------------------------------------------------------------------------------
