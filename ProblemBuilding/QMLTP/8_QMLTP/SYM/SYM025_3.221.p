%------------------------------------------------------------------------------
% File     : SYM025_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Fitting and Mendelsohn problem
% Version  : Especial.
% English  :

% Refs     : [FM98]  Fitting & Mendelsohn (1998), First-Order Modal Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM025+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   10 (   0 equ)
%            Maximal formula atoms :    6 (  10 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   0   !;   3   ?;   3   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_v_f_l,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_M ] ).

tff(p_decl,type,
    p: $i > $o ).

tff(q_decl,type,
    q: $i > $o ).

tff(con,conjecture,
    ( ( ( {$dia}
        @ (? [X: $i] : p(X)) )
      & ( {$dia}
        @ (? [X: $i] : q(X)) ) )
   => ? [X: $i] :
        ( {$dia}
        @ (( p(X)
           & q(X) )) ) ) ).

%------------------------------------------------------------------------------
