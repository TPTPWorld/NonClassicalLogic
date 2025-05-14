%------------------------------------------------------------------------------
% File     : SYM049_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM049+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   11 (   0 equ)
%            Maximal formula atoms :    6 (  11 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_v_f_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_D ] ).

tff(e_decl,type,
    e: $i > $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (! [X: $i] : ( {$box} @ (e(X)) )) )
   => ( ( {$box}
        @ (! [X: $i] : f(X)) )
    <=> ! [X: $i] : ( {$box} @ (f(X)) ) ) ) ).

%------------------------------------------------------------------------------
