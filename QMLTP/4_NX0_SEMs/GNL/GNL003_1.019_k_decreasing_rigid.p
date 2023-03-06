%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 3
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP NLP003+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GNL003+1 [QMLTP]
%          : GNL003_1.019_k_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :  117 (   0 unt;  37 typ;   0 def)
%            Number of atoms       : 1164 (   0 equ)
%            Maximal formula atoms :    2 (  14 avg)
%            Number of connectives :  626 (  10   ~;   0   |;  68   &)
%                                         (   0 <=>;  80  =>;   0  <=;   0 <~>)
%                                         ( 468 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :  468 ( 468 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   45 (  37   >;   8   *;   0   +;   0  <<)
%            Number of predicates  :   38 (  37 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  155 (; 150   !;   5   ?; 155   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_K ] ).

tff(chevy_decl,type,
    chevy: $i > $o ).

tff(hollywood_decl,type,
    hollywood: $i > $o ).

tff(woman_decl,type,
    woman: $i > $o ).

tff(city_decl,type,
    city: $i > $o ).

tff(down_decl,type,
    down: ( $i * $i ) > $o ).

tff(vehicle_decl,type,
    vehicle: $i > $o ).

tff(artifact_decl,type,
    artifact: $i > $o ).

tff(white_decl,type,
    white: $i > $o ).

tff(car_decl,type,
    car: $i > $o ).

tff(street_decl,type,
    street: $i > $o ).

tff(of_decl,type,
    of: ( $i * $i ) > $o ).

tff(proposition_decl,type,
    proposition: $i > $o ).

tff(have_decl,type,
    have: ( $i * $i * $i ) > $o ).

tff(man_decl,type,
    man: $i > $o ).

tff(event_decl,type,
    event: $i > $o ).

tff(female_decl,type,
    female: $i > $o ).

tff(lonely_decl,type,
    lonely: $i > $o ).

tff(human_decl,type,
    human: $i > $o ).

tff(dirty_decl,type,
    dirty: $i > $o ).

tff(owner_decl,type,
    owner: $i > $o ).

tff(barrel_decl,type,
    barrel: ( $i * $i ) > $o ).

tff(new_decl,type,
    new: $i > $o ).

tff(partof_decl,type,
    partof: ( $i * $i ) > $o ).

tff(drs_decl,type,
    drs: $i > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(old_decl,type,
    old: $i > $o ).

tff(abstraction_decl,type,
    abstraction: $i > $o ).

tff(transport_decl,type,
    transport: $i > $o ).

tff(instrumentality_decl,type,
    instrumentality: $i > $o ).

tff(way_decl,type,
    way: $i > $o ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(eventuality_decl,type,
    eventuality: $i > $o ).

tff(location_decl,type,
    location: $i > $o ).

tff(nonhuman_decl,type,
    nonhuman: $i > $o ).

tff(entity_decl,type,
    entity: $i > $o ).

tff(male_decl,type,
    male: $i > $o ).

tff(object_decl,type,
    object: $i > $o ).

tff(reflexivity,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(X,X)) )) ) ).

tff(symmetry,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(X,Y)) )
                => ( {$box} @ (qmltpeq(Y,X)) ) )) )) )) ) ).

tff(transitivity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(X,Y)) )
                        & ( {$box} @ (qmltpeq(Y,Z)) ) )
                     => ( {$box} @ (qmltpeq(X,Z)) ) )) )) )) )) ) ).

tff(abstraction_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (abstraction(A)) ) )
                => ( {$box} @ (abstraction(B)) ) )) )) )) ) ).

tff(artifact_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (artifact(A)) ) )
                => ( {$box} @ (artifact(B)) ) )) )) )) ) ).

tff(barrel_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (barrel(A,C)) ) )
                     => ( {$box} @ (barrel(B,C)) ) )) )) )) )) ) ).

tff(barrel_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (barrel(C,A)) ) )
                     => ( {$box} @ (barrel(C,B)) ) )) )) )) )) ) ).

tff(car_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (car(A)) ) )
                => ( {$box} @ (car(B)) ) )) )) )) ) ).

tff(chevy_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (chevy(A)) ) )
                => ( {$box} @ (chevy(B)) ) )) )) )) ) ).

tff(city_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (city(A)) ) )
                => ( {$box} @ (city(B)) ) )) )) )) ) ).

tff(dirty_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (dirty(A)) ) )
                => ( {$box} @ (dirty(B)) ) )) )) )) ) ).

tff(down_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (down(A,C)) ) )
                     => ( {$box} @ (down(B,C)) ) )) )) )) )) ) ).

tff(down_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (down(C,A)) ) )
                     => ( {$box} @ (down(C,B)) ) )) )) )) )) ) ).

tff(drs_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (drs(A)) ) )
                => ( {$box} @ (drs(B)) ) )) )) )) ) ).

tff(entity_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (entity(A)) ) )
                => ( {$box} @ (entity(B)) ) )) )) )) ) ).

tff(event_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (event(A)) ) )
                => ( {$box} @ (event(B)) ) )) )) )) ) ).

tff(eventuality_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (eventuality(A)) ) )
                => ( {$box} @ (eventuality(B)) ) )) )) )) ) ).

tff(female_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (female(A)) ) )
                => ( {$box} @ (female(B)) ) )) )) )) ) ).

tff(have_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                             & ( {$box} @ (have(A,C,D)) ) )
                          => ( {$box} @ (have(B,C,D)) ) )) )) )) )) )) ) ).

tff(have_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                             & ( {$box} @ (have(C,A,D)) ) )
                          => ( {$box} @ (have(C,B,D)) ) )) )) )) )) )) ) ).

tff(have_substitution_3,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (! [D: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                             & ( {$box} @ (have(C,D,A)) ) )
                          => ( {$box} @ (have(C,D,B)) ) )) )) )) )) )) ) ).

tff(hollywood_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (hollywood(A)) ) )
                => ( {$box} @ (hollywood(B)) ) )) )) )) ) ).

tff(human_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (human(A)) ) )
                => ( {$box} @ (human(B)) ) )) )) )) ) ).

tff(in_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(A,C)) ) )
                     => ( {$box} @ (in(B,C)) ) )) )) )) )) ) ).

tff(in_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(C,A)) ) )
                     => ( {$box} @ (in(C,B)) ) )) )) )) )) ) ).

tff(instrumentality_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (instrumentality(A)) ) )
                => ( {$box} @ (instrumentality(B)) ) )) )) )) ) ).

tff(location_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (location(A)) ) )
                => ( {$box} @ (location(B)) ) )) )) )) ) ).

tff(lonely_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (lonely(A)) ) )
                => ( {$box} @ (lonely(B)) ) )) )) )) ) ).

tff(male_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (male(A)) ) )
                => ( {$box} @ (male(B)) ) )) )) )) ) ).

tff(man_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (man(A)) ) )
                => ( {$box} @ (man(B)) ) )) )) )) ) ).

tff(new_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (new(A)) ) )
                => ( {$box} @ (new(B)) ) )) )) )) ) ).

tff(nonhuman_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (nonhuman(A)) ) )
                => ( {$box} @ (nonhuman(B)) ) )) )) )) ) ).

tff(object_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (object(A)) ) )
                => ( {$box} @ (object(B)) ) )) )) )) ) ).

tff(of_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (of(A,C)) ) )
                     => ( {$box} @ (of(B,C)) ) )) )) )) )) ) ).

tff(of_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (of(C,A)) ) )
                     => ( {$box} @ (of(C,B)) ) )) )) )) )) ) ).

tff(old_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (old(A)) ) )
                => ( {$box} @ (old(B)) ) )) )) )) ) ).

tff(owner_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (owner(A)) ) )
                => ( {$box} @ (owner(B)) ) )) )) )) ) ).

tff(partof_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (partof(A,C)) ) )
                     => ( {$box} @ (partof(B,C)) ) )) )) )) )) ) ).

tff(partof_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (partof(C,A)) ) )
                     => ( {$box} @ (partof(C,B)) ) )) )) )) )) ) ).

tff(proposition_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (proposition(A)) ) )
                => ( {$box} @ (proposition(B)) ) )) )) )) ) ).

tff(street_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (street(A)) ) )
                => ( {$box} @ (street(B)) ) )) )) )) ) ).

tff(transport_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (transport(A)) ) )
                => ( {$box} @ (transport(B)) ) )) )) )) ) ).

tff(vehicle_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (vehicle(A)) ) )
                => ( {$box} @ (vehicle(B)) ) )) )) )) ) ).

tff(way_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (way(A)) ) )
                => ( {$box} @ (way(B)) ) )) )) )) ) ).

tff(white_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (white(A)) ) )
                => ( {$box} @ (white(B)) ) )) )) )) ) ).

tff(woman_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (woman(A)) ) )
                => ( {$box} @ (woman(B)) ) )) )) )) ) ).

tff(ax1,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (chevy(U)) )
           => ( {$box} @ (car(U)) ) )) )) ) ).

tff(ax2,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (car(U)) )
           => ( {$box} @ (vehicle(U)) ) )) )) ) ).

tff(ax3,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (vehicle(U)) )
           => ( {$box} @ (transport(U)) ) )) )) ) ).

tff(ax4,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (transport(U)) )
           => ( {$box} @ (instrumentality(U)) ) )) )) ) ).

tff(ax5,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (instrumentality(U)) )
           => ( {$box} @ (artifact(U)) ) )) )) ) ).

tff(ax6,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (instrumentality(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (way(U)) )) ) )) )) ) ).

tff(ax7,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (street(U)) )
           => ( {$box} @ (way(U)) ) )) )) ) ).

tff(ax8,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (way(U)) )
           => ( {$box} @ (artifact(U)) ) )) )) ) ).

tff(ax9,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (artifact(U)) )
           => ( {$box} @ (object(U)) ) )) )) ) ).

tff(ax10,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (artifact(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (location(U)) )) ) )) )) ) ).

tff(ax11,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (event(U)) )
           => ( {$box} @ (eventuality(U)) ) )) )) ) ).

tff(ax12,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (hollywood(U)) )
           => ( {$box} @ (city(U)) ) )) )) ) ).

tff(ax13,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (city(U)) )
           => ( {$box} @ (location(U)) ) )) )) ) ).

tff(ax14,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (location(U)) )
           => ( {$box} @ (object(U)) ) )) )) ) ).

tff(ax15,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (object(U)) )
           => ( {$box} @ (entity(U)) ) )) )) ) ).

tff(ax16,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (old(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (new(U)) )) ) )) )) ) ).

tff(ax17,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (eventuality(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (entity(U)) )) ) )) )) ) ).

tff(ax18,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (abstraction(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (entity(U)) )) ) )) )) ) ).

tff(ax19,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (abstraction(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (eventuality(U)) )) ) )) )) ) ).

tff(ax20,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (male(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (female(U)) )) ) )) )) ) ).

tff(ax21,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (man(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (woman(U)) )) ) )) )) ) ).

tff(ax22,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (man(U)) )
           => ( {$box} @ (male(U)) ) )) )) ) ).

tff(ax23,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (male(U)) )
           => ( {$box} @ (human(U)) ) )) )) ) ).

tff(ax24,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (female(U)) )
           => ( {$box} @ (human(U)) ) )) )) ) ).

tff(ax25,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (woman(U)) )
           => ( {$box} @ (female(U)) ) )) )) ) ).

tff(ax26,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (drs(U)) )
             => ( {$box} @ (proposition(U)) ) )) )
         & ( {$box}
           @ (( ( {$box} @ (proposition(U)) )
             => ( {$box} @ (drs(U)) ) )) ) )) ) ).

tff(ax27,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (nonhuman(U)) )
           => ( {$box} @ (entity(U)) ) )) )) ) ).

tff(ax28,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (human(U)) )
           => ( {$box}
              @ (~ ( {$box} @ (nonhuman(U)) )) ) )) )) ) ).

tff(ax29,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( ( {$box}
                     @ (( ( ( {$box} @ (have(U,V,W)) )
                          & ( {$box} @ (human(V)) ) )
                       => ( ( {$box} @ (owner(V)) )
                          & ( {$box} @ (of(V,W)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (owner(V)) )
                          & ( {$box} @ (of(V,W)) ) )
                       => ( ( {$box} @ (have(U,V,W)) )
                          & ( {$box} @ (human(V)) ) ) )) ) )) )) )) ) ).

tff(ax30,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (have(U,V,W)) )
                        & ( {$box} @ (nonhuman(V)) )
                        & ( {$box} @ (nonhuman(W)) ) )
                     => ( {$box} @ (partof(W,V)) ) )) )) )) )) ) ).

tff(ax31,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (event(U)) )
                        & ( {$box} @ (have(U,V,W)) ) )
                     => ( {$box} @ (of(V,W)) ) )) )) )) )) ) ).

tff(ax32,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (( ( {$box} @ (of(V,U)) )
                => ? [W: $i] :
                     ( ( {$box} @ (event(W)) )
                     & ( {$box} @ (have(W,U,V)) ) ) )) )) )) ) ).

tff(ax33,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (partof(U,V)) )
                        & ( {$box} @ (partof(U,W)) ) )
                     => ( {$box} @ (qmltpeq(V,W)) ) )) )) )) )) ) ).

tff(co1,conjecture,
    ( {$box}
    @ (~ ? [U: $i,V: $i,W: $i,X: $i] :
           ( ( {$box} @ (hollywood(U)) )
           & ( {$box} @ (city(U)) )
           & ( {$box} @ (event(V)) )
           & ( {$box} @ (chevy(W)) )
           & ( {$box} @ (car(W)) )
           & ( {$box} @ (white(W)) )
           & ( {$box} @ (dirty(W)) )
           & ( {$box} @ (old(W)) )
           & ( {$box} @ (street(X)) )
           & ( {$box} @ (way(X)) )
           & ( {$box} @ (lonely(X)) )
           & ( {$box} @ (barrel(V,W)) )
           & ( {$box} @ (down(V,X)) )
           & ( {$box} @ (in(V,U)) ) )) ) ).

%------------------------------------------------------------------------------
