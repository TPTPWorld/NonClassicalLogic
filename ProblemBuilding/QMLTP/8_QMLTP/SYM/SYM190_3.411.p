%------------------------------------------------------------------------------
% File     : SYM190_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Popcorn problem
% Version  : Especial.
% English  :

% Refs     : [Pop95] Popkorn (1995), First Steps in Modal Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM190+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    4 (  12 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_d_r_l,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_M ] ).

tff(p_decl,type,
    p: $o ).

tff(con,conjecture,
    ( ( {$dia}
      @ (( {$box}
         @ ({$dia} @ (p)) )) )
   => ( {$dia}
      @ ({$dia} @ (p)) ) ) ).

%------------------------------------------------------------------------------
