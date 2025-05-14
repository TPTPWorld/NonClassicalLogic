%------------------------------------------------------------------------------
% File     : SYM077_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Quantified modal logics wwfs. problem 16.
% Version  : Especial.
% English  :

% Refs     : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM077+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    4 (   8 avg)
%            Number of connectives :    4 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    3 (;   0   !;   3   ?;   3   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_v_f_l,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_S5 ] ).

tff(a_decl,type,
    a: $i ).

tff(r_decl,type,
    r: ( $i * $i ) > $o ).

tff(con,conjecture,
    ( ? [X: $i] : ( {$dia} @ (r(a,X)) )
   => ( {$dia}
      @ (( {$box}
         @ (? [X: $i,Y: $i] : r(X,Y)) )) ) ) ).

%------------------------------------------------------------------------------
