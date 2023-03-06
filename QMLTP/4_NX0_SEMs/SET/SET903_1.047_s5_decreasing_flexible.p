%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET903+1 [QMLTP]
%          : SET903_1.047_s5_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   21 (   6 unt;   5 typ;   0 def)
%            Number of atoms       :   35 (   0 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   32 (  13   ~;   0   |;  11   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   4   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (;  30   !;   2   ?;  32   :)
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

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(t43_zfmisc_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,empty_set)
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,empty_set) ) ) ).

tff(t44_zfmisc_1,conjecture,
    ! [A: $i,B: $i,C: $i] :
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ qmltpeq(B,C)
        & ~ qmltpeq(B,empty_set)
        & ~ qmltpeq(C,empty_set) ) ).

%------------------------------------------------------------------------------
