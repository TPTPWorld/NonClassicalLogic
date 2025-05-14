%------------------------------------------------------------------------------
% File     : SYM036_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM036+1 [QMLTP]

% Status   : Unknown
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
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_u_f_l,logic,
    $modal == 
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_S5 ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( ( {$box}
        @ (! [X: $i] : f(X)) )
     => ! [X: $i] : ( {$box} @ (f(X)) ) )
  <=> ( ? [X: $i] : ( {$dia} @ (f(X)) )
     => ( {$dia}
        @ (? [X: $i] : f(X)) ) ) ) ).

%------------------------------------------------------------------------------
