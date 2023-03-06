%------------------------------------------------------------------------------
% File     : MML006_1.002 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : The bungling chemist
% Version  : [QMLTP] axioms.
% English  : Assume that a chemical compound c is made by pouring the elements
%            a and b into the same beaker. The two elements a and b are not
%            acid. It is possible that after making the compound c it results
%            in an acid. Then it is possible that pouring element a results
%            not in an acid, and pouring a and b in the beaker results in an
%            acid.

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML006+1 [QMLTP]
%          : MML006_1.002_t_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    8 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   46 (   0 equ)
%            Maximal formula atoms :    4 (   6 avg)
%            Number of connectives :   28 (   6   ~;   0   |;   1   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  17 {}@;  17 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   17 (  17 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    3 (   0 usr;   3 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(acid_decl,type,
    acid: $o ).

tff(pour_ab_make_axiom_1,axiom-local,
    ( ( {$box(#pour_a)}
      @ ({$box(#pour_b)} @ (acid)) )
   => ( {$box(#make_c)} @ (acid) ) ) ).

tff(pour_ab_make_axiom_2,axiom-local,
    ( ( {$box(#pour_a)}
      @ ({$box(#pour_b)} @ (~ acid)) )
   => ( {$box(#make_c)} @ (~ acid) ) ) ).

tff(pour_ba_make_axiom_1,axiom-local,
    ( ( {$box(#pour_b)}
      @ ({$box(#pour_a)} @ (acid)) )
   => ( {$box(#make_c)} @ (acid) ) ) ).

tff(pour_ba_make_axiom_2,axiom-local,
    ( ( {$box(#pour_b)}
      @ ({$box(#pour_a)} @ (~ acid)) )
   => ( {$box(#make_c)} @ (~ acid) ) ) ).

tff(pour_a_acid,axiom-local,
    {$box(#pour_a)} @ (~ acid) ).

tff(make_c_acid,axiom-local,
    {$dia(#make_c)} @ (acid) ).

tff(conj,conjecture,
    ( ( {$dia(#pour_a)} @ (~ acid) )
    & ( {$dia(#pour_a)}
      @ ({$dia(#pour_b)} @ (acid)) ) ) ).

%------------------------------------------------------------------------------
