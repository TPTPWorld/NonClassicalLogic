%------------------------------------------------------------------------------
% File     : SYM159_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Mixed modal propositional logic WFFs. problem 1
% Version  : Especial.
% English  :

% Refs     : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM159+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   16 (   0 equ)
%            Maximal formula atoms :    4 (  16 avg)
%            Number of connectives :   10 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_d_f_g,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_S4 ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(r_decl,type,
    r: $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (( p
        => ( {$dia}
           @ (( q
             => r )) ) )) )
   => ( {$dia}
      @ (( q
        => ( ( {$box} @ (p) )
          => ( {$dia} @ (r) ) ) )) ) ) ).

%------------------------------------------------------------------------------
