%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : NLP002+1 [QMLTP]
%          : NLP002_1.026_t_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :  117 (   1 unt;  37 typ;   0 def)
%            Number of atoms       :  222 (   0 equ)
%            Maximal formula atoms :   14 (   2 avg)
%            Number of connectives :  152 (  10   ~;   0   |;  64   &)
%                                         (   2 <=>;  76  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   45 (  37   >;   8   *;   0   +;   0  <<)
%            Number of predicates  :   37 (  37 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  155 (; 150   !;   5   ?; 155   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

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
    ! [X: $i] : qmltpeq(X,X) ).

tff(symmetry,axiom-local,
    ! [X: $i,Y: $i] :
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) ) ).

tff(transitivity,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) ) ).

tff(abstraction_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & abstraction(A) )
     => abstraction(B) ) ).

tff(artifact_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & artifact(A) )
     => artifact(B) ) ).

tff(barrel_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & barrel(A,C) )
     => barrel(B,C) ) ).

tff(barrel_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & barrel(C,A) )
     => barrel(C,B) ) ).

tff(car_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & car(A) )
     => car(B) ) ).

tff(chevy_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & chevy(A) )
     => chevy(B) ) ).

tff(city_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & city(A) )
     => city(B) ) ).

tff(dirty_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & dirty(A) )
     => dirty(B) ) ).

tff(down_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & down(A,C) )
     => down(B,C) ) ).

tff(down_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & down(C,A) )
     => down(C,B) ) ).

tff(drs_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & drs(A) )
     => drs(B) ) ).

tff(entity_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & entity(A) )
     => entity(B) ) ).

tff(event_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & event(A) )
     => event(B) ) ).

tff(eventuality_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & eventuality(A) )
     => eventuality(B) ) ).

tff(female_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & female(A) )
     => female(B) ) ).

tff(have_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( qmltpeq(A,B)
        & have(A,C,D) )
     => have(B,C,D) ) ).

tff(have_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( qmltpeq(A,B)
        & have(C,A,D) )
     => have(C,B,D) ) ).

tff(have_substitution_3,axiom-local,
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( qmltpeq(A,B)
        & have(C,D,A) )
     => have(C,D,B) ) ).

tff(hollywood_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & hollywood(A) )
     => hollywood(B) ) ).

tff(human_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & human(A) )
     => human(B) ) ).

tff(in_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(A,C) )
     => in(B,C) ) ).

tff(in_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(C,A) )
     => in(C,B) ) ).

tff(instrumentality_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & instrumentality(A) )
     => instrumentality(B) ) ).

tff(location_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & location(A) )
     => location(B) ) ).

tff(lonely_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & lonely(A) )
     => lonely(B) ) ).

tff(male_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & male(A) )
     => male(B) ) ).

tff(man_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & man(A) )
     => man(B) ) ).

tff(new_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & new(A) )
     => new(B) ) ).

tff(nonhuman_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & nonhuman(A) )
     => nonhuman(B) ) ).

tff(object_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & object(A) )
     => object(B) ) ).

tff(of_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & of(A,C) )
     => of(B,C) ) ).

tff(of_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & of(C,A) )
     => of(C,B) ) ).

tff(old_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & old(A) )
     => old(B) ) ).

tff(owner_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & owner(A) )
     => owner(B) ) ).

tff(partof_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & partof(A,C) )
     => partof(B,C) ) ).

tff(partof_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & partof(C,A) )
     => partof(C,B) ) ).

tff(proposition_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & proposition(A) )
     => proposition(B) ) ).

tff(street_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & street(A) )
     => street(B) ) ).

tff(transport_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & transport(A) )
     => transport(B) ) ).

tff(vehicle_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & vehicle(A) )
     => vehicle(B) ) ).

tff(way_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & way(A) )
     => way(B) ) ).

tff(white_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & white(A) )
     => white(B) ) ).

tff(woman_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & woman(A) )
     => woman(B) ) ).

tff(ax1,axiom-local,
    ! [U: $i] :
      ( chevy(U)
     => car(U) ) ).

tff(ax2,axiom-local,
    ! [U: $i] :
      ( car(U)
     => vehicle(U) ) ).

tff(ax3,axiom-local,
    ! [U: $i] :
      ( vehicle(U)
     => transport(U) ) ).

tff(ax4,axiom-local,
    ! [U: $i] :
      ( transport(U)
     => instrumentality(U) ) ).

tff(ax5,axiom-local,
    ! [U: $i] :
      ( instrumentality(U)
     => artifact(U) ) ).

tff(ax6,axiom-local,
    ! [U: $i] :
      ( instrumentality(U)
     => ~ way(U) ) ).

tff(ax7,axiom-local,
    ! [U: $i] :
      ( street(U)
     => way(U) ) ).

tff(ax8,axiom-local,
    ! [U: $i] :
      ( way(U)
     => artifact(U) ) ).

tff(ax9,axiom-local,
    ! [U: $i] :
      ( artifact(U)
     => object(U) ) ).

tff(ax10,axiom-local,
    ! [U: $i] :
      ( artifact(U)
     => ~ location(U) ) ).

tff(ax11,axiom-local,
    ! [U: $i] :
      ( event(U)
     => eventuality(U) ) ).

tff(ax12,axiom-local,
    ! [U: $i] :
      ( hollywood(U)
     => city(U) ) ).

tff(ax13,axiom-local,
    ! [U: $i] :
      ( city(U)
     => location(U) ) ).

tff(ax14,axiom-local,
    ! [U: $i] :
      ( location(U)
     => object(U) ) ).

tff(ax15,axiom-local,
    ! [U: $i] :
      ( object(U)
     => entity(U) ) ).

tff(ax16,axiom-local,
    ! [U: $i] :
      ( old(U)
     => ~ new(U) ) ).

tff(ax17,axiom-local,
    ! [U: $i] :
      ( eventuality(U)
     => ~ entity(U) ) ).

tff(ax18,axiom-local,
    ! [U: $i] :
      ( abstraction(U)
     => ~ entity(U) ) ).

tff(ax19,axiom-local,
    ! [U: $i] :
      ( abstraction(U)
     => ~ eventuality(U) ) ).

tff(ax20,axiom-local,
    ! [U: $i] :
      ( male(U)
     => ~ female(U) ) ).

tff(ax21,axiom-local,
    ! [U: $i] :
      ( man(U)
     => ~ woman(U) ) ).

tff(ax22,axiom-local,
    ! [U: $i] :
      ( man(U)
     => male(U) ) ).

tff(ax23,axiom-local,
    ! [U: $i] :
      ( male(U)
     => human(U) ) ).

tff(ax24,axiom-local,
    ! [U: $i] :
      ( female(U)
     => human(U) ) ).

tff(ax25,axiom-local,
    ! [U: $i] :
      ( woman(U)
     => female(U) ) ).

tff(ax26,axiom-local,
    ! [U: $i] :
      ( drs(U)
    <=> proposition(U) ) ).

tff(ax27,axiom-local,
    ! [U: $i] :
      ( nonhuman(U)
     => entity(U) ) ).

tff(ax28,axiom-local,
    ! [U: $i] :
      ( human(U)
     => ~ nonhuman(U) ) ).

tff(ax29,axiom-local,
    ! [U: $i,V: $i,W: $i] :
      ( ( have(U,V,W)
        & human(V) )
    <=> ( owner(V)
        & of(V,W) ) ) ).

tff(ax30,axiom-local,
    ! [U: $i,V: $i,W: $i] :
      ( ( have(U,V,W)
        & nonhuman(V)
        & nonhuman(W) )
     => partof(W,V) ) ).

tff(ax31,axiom-local,
    ! [U: $i,V: $i,W: $i] :
      ( ( event(U)
        & have(U,V,W) )
     => of(V,W) ) ).

tff(ax32,axiom-local,
    ! [U: $i,V: $i] :
      ( of(V,U)
     => ? [W: $i] :
          ( event(W)
          & have(W,U,V) ) ) ).

tff(ax33,axiom-local,
    ! [U: $i,V: $i,W: $i] :
      ( ( partof(U,V)
        & partof(U,W) )
     => qmltpeq(V,W) ) ).

tff(co1,conjecture,
    ~ ? [U: $i,V: $i,W: $i,X: $i] :
        ( hollywood(U)
        & city(U)
        & event(V)
        & street(W)
        & way(W)
        & lonely(W)
        & chevy(X)
        & car(X)
        & white(X)
        & dirty(X)
        & old(X)
        & barrel(V,X)
        & down(V,W)
        & in(V,U) ) ).

%------------------------------------------------------------------------------
