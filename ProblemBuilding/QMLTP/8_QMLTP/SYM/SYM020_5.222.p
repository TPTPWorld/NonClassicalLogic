%------------------------------------------------------------------------------
% File     : SYM020_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Girle problem
% Version  : Especial.
% English  :

% Refs     : [Gir00] Girle (2000), Modal Logics and Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM020+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   10 (   0 equ)
%            Maximal formula atoms :    6 (  10 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_v_f_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_S5 ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (! [X: $i] :
           ( g(X)
          => f(X) )) )
  <=> ! [X: $i] :
        ( ( {$box} @ (g(X)) )
       => ( {$dia} @ (f(X)) ) ) ) ).

%------------------------------------------------------------------------------
