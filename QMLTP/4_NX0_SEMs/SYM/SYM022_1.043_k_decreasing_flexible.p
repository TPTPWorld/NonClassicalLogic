%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM022+1 [QMLTP]
%          : SYM022_1.043_k_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    2 (   6 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   1   !;   1   ?;   2   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $i > $o ).

tff(con,conjecture,
    ? [X: $i] :
      ( {$dia}
      @ (( p(X)
        => ! [X: $i] : ( {$box} @ (p(X)) ) )) ) ).

%------------------------------------------------------------------------------
