%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET045+1 [QMLTP]
%          : SET045_1.033_d_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   1 unt;   1 typ;   0 def)
%            Number of atoms       :    4 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    4 (   2   ~;   0   |;   1   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel41_1,axiom-local,
    ! [Z: $i] :
    ? [Y: $i] :
    ! [X: $i] :
      ( element(X,Y)
    <=> ( element(X,Z)
        & ~ element(X,X) ) ) ).

tff(pel41,conjecture,
    ~ ? [Z: $i] :
      ! [X: $i] : element(X,Z) ).

%------------------------------------------------------------------------------
