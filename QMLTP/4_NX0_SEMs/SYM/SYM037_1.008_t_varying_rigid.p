%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM037+1 [QMLTP]
%          : SYM037_1.008_t_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    8 (  12 avg)
%            Number of connectives :    7 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   2   !;   2   ?;   4   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_M ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( ! [X: $i] : ( {$box} @ (f(X)) )
     => ( {$box}
        @ (! [X: $i] : f(X)) ) )
  <=> ( ( {$dia}
        @ (? [X: $i] : f(X)) )
     => ? [X: $i] : ( {$dia} @ (f(X)) ) ) ) ).

%------------------------------------------------------------------------------
