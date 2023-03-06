%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET914+1 [QMLTP]
%          : SET914_1.004_s4_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   32 (   7 unt;   7 typ;   0 def)
%            Number of atoms       :   53 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   32 (   4   ~;   1   |;   8   &)
%                                         (   6 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   11 (   6   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   59 (;  57   !;   2   ?;  59   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S4 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(disjoint_decl,type,
    disjoint: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(set_intersection2_decl,type,
    set_intersection2: ( $i * $i ) > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

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

tff(set_intersection2_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_intersection2(A,C),set_intersection2(B,C)) ) ).

tff(set_intersection2_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_intersection2(C,A),set_intersection2(C,B)) ) ).

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

tff(empty_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & empty(A) )
     => empty(B) ) ).

tff(in_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(A,C) )
     => in(B,C) ) ).

tff(in_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(C,A) )
     => in(C,B) ) ).

tff(antisymmetry_r2_hidden,axiom-local,
    ! [A: $i,B: $i] :
      ( in(A,B)
     => ~ in(B,A) ) ).

tff(commutativity_k2_tarski,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(unordered_pair(A,B),unordered_pair(B,A)) ).

tff(commutativity_k3_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_intersection2(A,B),set_intersection2(B,A)) ).

tff(d1_xboole_0,axiom-local,
    ! [A: $i] :
      ( qmltpeq(A,empty_set)
    <=> ! [B: $i] : ~ in(B,A) ) ).

tff(d2_tarski,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(C,unordered_pair(A,B))
    <=> ! [D: $i] :
          ( in(D,C)
        <=> ( qmltpeq(D,A)
            | qmltpeq(D,B) ) ) ) ).

tff(d3_xboole_0,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(C,set_intersection2(A,B))
    <=> ! [D: $i] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) ).

tff(d7_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( disjoint(A,B)
    <=> qmltpeq(set_intersection2(A,B),empty_set) ) ).

tff(fc1_xboole_0,axiom-local,
    empty(empty_set) ).

tff(idempotence_k3_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_intersection2(A,A),A) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(symmetry_r1_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

tff(t55_zfmisc_1,conjecture,
    ! [A: $i,B: $i,C: $i] :
      ~ ( disjoint(unordered_pair(A,B),C)
        & in(A,C) ) ).

%------------------------------------------------------------------------------
