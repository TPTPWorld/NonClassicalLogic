%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET902+1 [QMLTP]
%          : SET902_1.003_d_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   27 (   9 unt;   6 typ;   0 def)
%            Number of atoms       :   43 (   0 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   32 (  10   ~;   1   |;  10   &)
%                                         (   1 <=>;  10  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   5   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   42 (;  40   !;   2   ?;  42   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

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

tff(singleton_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) ) ).

tff(empty_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & empty(A) )
     => empty(B) ) ).

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

tff(commutativity_k2_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_union2(A,B),set_union2(B,A)) ).

tff(fc1_xboole_0,axiom-local,
    empty(empty_set) ).

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

tff(l1_zfmisc_1,axiom-local,
    ! [A: $i] : ~ qmltpeq(singleton(A),empty_set) ).

tff(l4_zfmisc_1,axiom-local,
    ! [A: $i,B: $i] :
      ( subset(A,singleton(B))
    <=> ( qmltpeq(A,empty_set)
        | qmltpeq(A,singleton(B)) ) ) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(reflexivity_r1_tarski,axiom-local,
    ! [A: $i,B: $i] : subset(A,A) ).

tff(t43_zfmisc_1,conjecture,
    ! [A: $i,B: $i,C: $i] :
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,empty_set)
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,empty_set) ) ) ).

tff(t7_xboole_1,axiom-local,
    ! [A: $i,B: $i] : subset(A,set_union2(A,B)) ).

%------------------------------------------------------------------------------
