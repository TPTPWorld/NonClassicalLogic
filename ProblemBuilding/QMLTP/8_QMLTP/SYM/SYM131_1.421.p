%------------------------------------------------------------------------------
% File     : SYM131_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Modal propositional logic theorems. problem 31
% Version  : Especial.
% English  :

% Refs     : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM131+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    2 (   6 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   1 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    1 (   1 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   2 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_d_f_l,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(con,conjecture,
    ( {$dia}
    @ (( ( ( p
          => q )
        => p )
      => p )) ) ).

%------------------------------------------------------------------------------
