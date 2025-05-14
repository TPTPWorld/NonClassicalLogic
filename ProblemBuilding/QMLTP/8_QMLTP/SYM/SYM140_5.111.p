%------------------------------------------------------------------------------
% File     : SYM140_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Modal propositional logic theorems. problem 40
% Version  : Especial.
% English  :

% Refs     : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM140+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    2 (  12 avg)
%            Number of connectives :    8 (   2   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
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
tff(s5_c_r_l,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_S5 ] ).

tff(p_decl,type,
    p: $o ).

tff(con,conjecture,
    ~ ( {$dia}
      @ (( ( {$dia}
           @ (( {$box}
              @ ({$dia} @ (p)) )) )
         & ( {$box} @ (~ p) ) )) ) ).

%------------------------------------------------------------------------------
