%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET923+1 [QMLTP]
%          : SET923_1.046_s4_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   22 (   5 unt;   6 typ;   0 def)
%            Number of atoms       :   33 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   21 (   4   ~;   1   |;   6   &)
%                                         (   2 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   5   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (;  30   !;   2   ?;  32   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

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

tff(set_difference_decl,type,
    set_difference: ( $i * $i ) > $i ).

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

tff(set_difference_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_difference(A,C),set_difference(B,C)) ) ).

tff(set_difference_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( qmltpeq(A,B)
     => qmltpeq(set_difference(C,A),set_difference(C,B)) ) ).

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

tff(fc1_xboole_0,axiom-local,
    empty(empty_set) ).

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

tff(t37_xboole_1,axiom-local,
    ! [A: $i,B: $i] :
      ( qmltpeq(set_difference(A,B),empty_set)
    <=> subset(A,B) ) ).

tff(t66_zfmisc_1,conjecture,
    ! [A: $i,B: $i] :
      ~ ( qmltpeq(set_difference(A,singleton(B)),empty_set)
        & ~ qmltpeq(A,empty_set)
        & ~ qmltpeq(A,singleton(B)) ) ).

%------------------------------------------------------------------------------
