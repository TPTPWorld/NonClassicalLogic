%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET900+1 [QMLTP]
%          : SET900_1.035_s5_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   18 (   4 unt;   5 typ;   0 def)
%            Number of atoms       :   30 (   0 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   29 (  12   ~;   0   |;  10   &)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   4   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :   26 (;  24   !;   2   ?;  26   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

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

tff(antisymmetry_r2_hidden,axiom-local,
    ! [A: $i,B: $i] :
      ( in(A,B)
     => ~ in(B,A) ) ).

tff(fc1_xboole_0,axiom-local,
    empty(empty_set) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : empty(A) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] : ~ empty(A) ).

tff(t41_zfmisc_1,conjecture,
    ! [A: $i,B: $i] :
      ~ ( ~ qmltpeq(A,singleton(B))
        & ~ qmltpeq(A,empty_set)
        & ! [C: $i] :
            ~ ( in(C,A)
              & ~ qmltpeq(C,B) ) ) ).

tff(l45_zfmisc_1,axiom-local,
    ! [A: $i,B: $i] :
      ~ ( ~ qmltpeq(A,singleton(B))
        & ~ qmltpeq(A,empty_set)
        & ! [C: $i] :
            ~ ( in(C,A)
              & ~ qmltpeq(C,B) ) ) ).

%------------------------------------------------------------------------------
