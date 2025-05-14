%------------------------------------------------------------------------------
% File     : SYM044_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM044+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    4 (   9 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   2   !;   2   ?;   4   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_u_f_g,logic,
    $modal == 
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_M ] ).

tff(r_decl,type,
    r: ( $i * $i ) > $o ).

tff(e_decl,type,
    e: $i > $o ).

tff(con,conjecture,
    ( ( {$dia}
      @ (? [X: $i] :
           ( {$box}
           @ (( e(X)
              & ! [Y: $i] : r(X,Y) )) )) )
   => ( {$box}
      @ (! [Y: $i] :
         ? [X: $i] : r(X,Y)) ) ) ).

%------------------------------------------------------------------------------
