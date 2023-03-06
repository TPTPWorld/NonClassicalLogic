%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET904+1 [QMLTP]
%          : SET904_1.034_s4_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   27 (   6 unt;   6 typ;   0 def)
%            Number of atoms       :   42 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   27 (   6   ~;   0   |;   6   &)
%                                         (   0 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   10 (   6   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :   46 (;  44   !;   2   ?;  46   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

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

tff(fc2_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

tff(fc3_xboole_0,axiom-local,
    ! [A: $i,B: $i] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

tff(commutativity_k2_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_union2(A,B),set_union2(B,A)) ).

tff(idempotence_k2_xboole_0,axiom-local,
    ! [A: $i,B: $i] : qmltpeq(set_union2(A,A),A) ).

tff(reflexivity_r1_tarski,axiom-local,
    ! [A: $i,B: $i] : subset(A,A) ).

tff(antisymmetry_r2_hidden,axiom-local,
    ! [A: $i,B: $i] :
      ( in(A,B)
     => ~ in(B,A) ) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(t45_zfmisc_1,conjecture,
    ! [A: $i,B: $i] :
      ( subset(set_union2(singleton(A),B),B)
     => in(A,B) ) ).

tff(l21_zfmisc_1,axiom-local,
    ! [A: $i,B: $i] :
      ( subset(set_union2(singleton(A),B),B)
     => in(A,B) ) ).

%------------------------------------------------------------------------------
