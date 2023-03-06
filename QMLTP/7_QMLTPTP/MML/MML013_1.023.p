%------------------------------------------------------------------------------
% File     : MML013_1.023 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic calculi
% Problem  : Proving disprovability
% Version  : [QMLTP] axioms.
% English  : If A can prove that B can prove p whenever it is true, and
%            if A can prove that B cannot prove p if that is true, and
%            if p is not true, then A can prove that p is not true.

% Refs     : [HA97]  Huima & Aura (1997), Using Multimodal Logic to Express
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML013+1 [QMLTP]
%          : MML013_1.023_s5_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   1 unt;   1 typ;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    4 (   4 avg)
%            Number of connectives :   12 (   4   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   6 {}@;   6 {#};   0 {.})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    6 (   6 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    2 (   0 usr;   2 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(p_decl,type,
    p: $o ).

tff(ab_axiom_1,axiom-local,
    ( {$box(#a)}
    @ (( p
      => ( {$box(#b)} @ (p) ) )) ) ).

tff(ab_axiom_2,axiom-local,
    ( ~ ( {$box(#b)} @ (p) )
   => ( {$box(#a)}
      @ (~ ( {$box(#b)} @ (p) )) ) ) ).

tff(not_a_axiom_1,axiom-local,
    ~ p ).

tff(conj,conjecture,
    {$box(#a)} @ (~ p) ).

%------------------------------------------------------------------------------
