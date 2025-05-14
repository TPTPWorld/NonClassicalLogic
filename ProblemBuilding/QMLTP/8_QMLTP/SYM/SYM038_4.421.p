%------------------------------------------------------------------------------
% File     : SYM038_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM038+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    7 (  12 avg)
%            Number of connectives :    9 (   1   ~;   0   |;   2   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   2   !;   4   ?;   6   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_d_f_l,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_S4 ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(h_decl,type,
    h: $i > $o ).

tff(con,conjecture,
    ( ( ! [X: $i] :
          ( {$box}
          @ (? [Y: $i] :
               ( f(X)
              => g(Y) )) )
      & ! [X: $i] :
          ( {$box}
          @ (? [Y: $i] :
               ( ~ f(X)
              => g(Y) )) )
      & ? [X: $i] : h(X) )
   => ( {$box}
      @ (? [X: $i] : g(X)) ) ) ).

%------------------------------------------------------------------------------
