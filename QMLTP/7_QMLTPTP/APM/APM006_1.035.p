%------------------------------------------------------------------------------
% File     : APM006_1.035 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Semantic Web
% Problem  : Querying description logic knowledge bases
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [CD+07] Calvanese et al. (2007), EQL-Lite: Effective First-Ord
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM006+1 [QMLTP]
%          : APM006_1.035_s5_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   14 (   0 unt;  10 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    5 (   7 avg)
%            Number of connectives :   21 (   2   ~;   0   |;  12   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   4   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   6 con; 0-0 aty)
%            Number of variables   :    3 (;   2   !;   1   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(ann_decl,type,
    ann: $i ).

tff(mary_decl,type,
    mary: $i ).

tff(bob_decl,type,
    bob: $i ).

tff(john_decl,type,
    john: $i ).

tff(paul_decl,type,
    paul: $i ).

tff(jane_decl,type,
    jane: $i ).

tff(parent_decl,type,
    parent: ( $i * $i ) > $o ).

tff(q2_decl,type,
    q2: $i > $o ).

tff(female_decl,type,
    female: $i > $o ).

tff(male_decl,type,
    male: $i > $o ).

tff(abox,axiom-local,
    ( {$box}
    @ (( female(mary)
       & female(ann)
       & female(jane)
       & male(bob)
       & male(john)
       & male(paul)
       & parent(bob,mary)
       & parent(bob,ann)
       & parent(john,paul)
       & parent(mary,jane) )) ) ).

tff(tbox,axiom-local,
    ! [X: $i] :
      ( ( {$box} @ (male(X)) )
     => ( {$box} @ (~ female(X)) ) ) ).

tff(query,axiom-local,
    ! [X: $i] :
      ( q2(X)
    <=> ( ( {$box} @ (male(X)) )
        & ~ ( {$box}
            @ (? [Y: $i] :
                 ( parent(X,Y)
                 & female(Y) )) ) ) ) ).

tff(con,conjecture,
    ( q2(john)
    & q2(paul) ) ).

%------------------------------------------------------------------------------
