%------------------------------------------------------------------------------
% File     : SYM105_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Modal propositional logic theorems. problem 5
% Version  : Especial.
% English  :

% Refs     : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM105+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    4 (   7 avg)
%            Number of connectives :    6 (   2   ~;   0   |;   0   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_d_r_g,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $rigid,
        $terms == $global,
        $modalities == $modal_system_M ] ).

tff(p_decl,type,
    p: $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (( p
        => ~ p )) )
  <=> ~ ( {$dia} @ (p) ) ) ).

%------------------------------------------------------------------------------
