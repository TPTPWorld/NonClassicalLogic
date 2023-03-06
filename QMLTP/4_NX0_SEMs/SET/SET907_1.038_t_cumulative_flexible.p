%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET907+1 [QMLTP]
%          : SET907_1.038_t_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   7 unt;   6 typ;   0 def)
%            Number of atoms       :   49 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   31 (   6   ~;   0   |;   8   &)
%                                         (   1 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   11 (   6   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 2-2 aty)
%            Number of variables   :   56 (;  54   !;   2   ?;  56   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_M ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(set_union2_decl,type,
    set_union2: ( $i * $i ) > $i ).

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

tff(set_union2_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(A,C),set_union2(B,C)) ) ).

tff(set_union2_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(C,A),set_union2(C,B)) ) ).

tff(unordered_pair_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(A,C),unordered_pair(B,C)) ) ).

tff(unordered_pair_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(C,A),unordered_pair(C,B)) ) ).

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

tff(antisymmetry_r2_hidden,axiom-local,
    ! [A: $i,B: $i] :
      ( in(A,B)
     => ~ in(B,A) ) ).

tff(commutativity_k2_tarski,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(unordered_pair(A,B),unordered_pair(B,A)) ).

tff(commutativity_k2_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_union2(A,B),set_union2(B,A)) ).

tff(fc2_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

tff(fc3_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

tff(idempotence_k2_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_union2(A,A),A) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(reflexivity_r1_tarski,axiom-local,
    ! [A: $i,B: $i] : subset(A,A) ).

tff(t12_xboole_1,axiom-local,
    ! [A: $i,B: $i] :
      ( subset(A,B)
     => qmltpeq(set_union2(A,B),B) ) ).

tff(t38_zfmisc_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) ) ).

tff(t48_zfmisc_1,conjecture,
    ! [A: $i,B: $i,C: $i] :
      ( ( in(A,B)
        & in(C,B) )
     => qmltpeq(set_union2(unordered_pair(A,C),B),B) ) ).

%------------------------------------------------------------------------------
