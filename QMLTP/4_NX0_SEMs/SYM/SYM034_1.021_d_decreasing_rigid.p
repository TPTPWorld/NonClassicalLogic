%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM034+1 [QMLTP]
%          : SYM034_1.021_d_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    4 (   8 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   0   !;   2   ?;   2   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_D ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ? [X: $i] :
        ( {$dia}
        @ ({$dia} @ (f(X))) )
   => ? [X: $i] : ( {$dia} @ (f(X)) ) ) ).

%------------------------------------------------------------------------------
