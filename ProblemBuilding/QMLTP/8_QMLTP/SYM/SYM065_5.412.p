%------------------------------------------------------------------------------
% File     : SYM065_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Fitting problem
% Version  : Especial.
% English  :

% Refs     : [Fit02] Fitting (2002), Types, Tableaus, and Goedel’s God
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM065+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    4 (   6 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    1 (;   0   !;   1   ?;   1   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_d_r_g,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $rigid,
        $terms == $global,
        $modalities == $modal_system_S5 ] ).

tff(c_decl,type,
    c: $i ).

tff(p_decl,type,
    p: $i > $o ).

tff(con,conjecture,
    ( ( {$box} @ (p(c)) )
   => ? [X: $i] : ( {$box} @ (p(X)) ) ) ).

%------------------------------------------------------------------------------
