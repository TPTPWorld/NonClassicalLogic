%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET047+1 [QMLTP]
%          : SET047_1.019_k_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   3 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   5   !;   0   ?;   5   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_K ] ).

tff(set_equal_decl,type,
    set_equal: ( $i * $i ) > $o ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel43_1,axiom-local,
    ! [X: $i,Y: $i] :
      ( set_equal(X,Y)
    <=> ! [Z: $i] :
          ( element(Z,X)
        <=> element(Z,Y) ) ) ).

tff(pel43,conjecture,
    ! [X: $i,Y: $i] :
      ( set_equal(X,Y)
    <=> set_equal(Y,X) ) ).

%------------------------------------------------------------------------------
