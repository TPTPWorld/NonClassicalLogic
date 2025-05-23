%------------------------------------------------------------------------------
% File     : NLP002+1 : QMLTP v1.1
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 2
% Version  : [Bos00] axioms.
% English  : A problem generated by the DORIS [Bos00] system when parsing
%            the statement "The old dirty white Chevy barrels down a lonely
%            street in Hollywood".

% Refs     : [Bos00] Bos (2000), DORIS: Discourse Oriented Representation an
%            [Bau99] Baumgartner 999), FTP'2000 - Problem Sets
% Source   : [Bau99]
% Names    :

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,(
    ! [X] : qmltpeq(X,X)   )).

qmf(symmetry,axiom,(
    ! [X,Y] : 
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) )   )).

qmf(transitivity,axiom,(
    ! [X,Y,Z] : 
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) )   )).

qmf(abstraction_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & abstraction(A) )
     => abstraction(B) )   )).

qmf(artifact_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & artifact(A) )
     => artifact(B) )   )).

qmf(barrel_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & barrel(A,C) )
     => barrel(B,C) )   )).

qmf(barrel_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & barrel(C,A) )
     => barrel(C,B) )   )).

qmf(car_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & car(A) )
     => car(B) )   )).

qmf(chevy_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & chevy(A) )
     => chevy(B) )   )).

qmf(city_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & city(A) )
     => city(B) )   )).

qmf(dirty_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & dirty(A) )
     => dirty(B) )   )).

qmf(down_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & down(A,C) )
     => down(B,C) )   )).

qmf(down_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & down(C,A) )
     => down(C,B) )   )).

qmf(drs_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & drs(A) )
     => drs(B) )   )).

qmf(entity_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & entity(A) )
     => entity(B) )   )).

qmf(event_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & event(A) )
     => event(B) )   )).

qmf(eventuality_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & eventuality(A) )
     => eventuality(B) )   )).

qmf(female_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & female(A) )
     => female(B) )   )).

qmf(have_substitution_1,axiom,(
    ! [A,B,C,D] : 
      ( ( qmltpeq(A,B)
        & have(A,C,D) )
     => have(B,C,D) )   )).

qmf(have_substitution_2,axiom,(
    ! [A,B,C,D] : 
      ( ( qmltpeq(A,B)
        & have(C,A,D) )
     => have(C,B,D) )   )).

qmf(have_substitution_3,axiom,(
    ! [A,B,C,D] : 
      ( ( qmltpeq(A,B)
        & have(C,D,A) )
     => have(C,D,B) )   )).

qmf(hollywood_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & hollywood(A) )
     => hollywood(B) )   )).

qmf(human_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & human(A) )
     => human(B) )   )).

qmf(in_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & in(A,C) )
     => in(B,C) )   )).

qmf(in_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & in(C,A) )
     => in(C,B) )   )).

qmf(instrumentality_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & instrumentality(A) )
     => instrumentality(B) )   )).

qmf(location_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & location(A) )
     => location(B) )   )).

qmf(lonely_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & lonely(A) )
     => lonely(B) )   )).

qmf(male_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & male(A) )
     => male(B) )   )).

qmf(man_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & man(A) )
     => man(B) )   )).

qmf(new_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & new(A) )
     => new(B) )   )).

qmf(nonhuman_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & nonhuman(A) )
     => nonhuman(B) )   )).

qmf(object_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & object(A) )
     => object(B) )   )).

qmf(of_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & of(A,C) )
     => of(B,C) )   )).

qmf(of_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & of(C,A) )
     => of(C,B) )   )).

qmf(old_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & old(A) )
     => old(B) )   )).

qmf(owner_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & owner(A) )
     => owner(B) )   )).

qmf(partof_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & partof(A,C) )
     => partof(B,C) )   )).

qmf(partof_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & partof(C,A) )
     => partof(C,B) )   )).

qmf(proposition_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & proposition(A) )
     => proposition(B) )   )).

qmf(street_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & street(A) )
     => street(B) )   )).

qmf(transport_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & transport(A) )
     => transport(B) )   )).

qmf(vehicle_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & vehicle(A) )
     => vehicle(B) )   )).

qmf(way_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & way(A) )
     => way(B) )   )).

qmf(white_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & white(A) )
     => white(B) )   )).

qmf(woman_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & woman(A) )
     => woman(B) )   )).

qmf(ax1,axiom,(
    ! [U] : 
      ( chevy(U)
     => car(U) )   )).

qmf(ax2,axiom,(
    ! [U] : 
      ( car(U)
     => vehicle(U) )   )).

qmf(ax3,axiom,(
    ! [U] : 
      ( vehicle(U)
     => transport(U) )   )).

qmf(ax4,axiom,(
    ! [U] : 
      ( transport(U)
     => instrumentality(U) )   )).

qmf(ax5,axiom,(
    ! [U] : 
      ( instrumentality(U)
     => artifact(U) )   )).

qmf(ax6,axiom,(
    ! [U] : 
      ( instrumentality(U)
     => ~ way(U) )   )).

qmf(ax7,axiom,(
    ! [U] : 
      ( street(U)
     => way(U) )   )).

qmf(ax8,axiom,(
    ! [U] : 
      ( way(U)
     => artifact(U) )   )).

qmf(ax9,axiom,(
    ! [U] : 
      ( artifact(U)
     => object(U) )   )).

qmf(ax10,axiom,(
    ! [U] : 
      ( artifact(U)
     => ~ location(U) )   )).

qmf(ax11,axiom,(
    ! [U] : 
      ( event(U)
     => eventuality(U) )   )).

qmf(ax12,axiom,(
    ! [U] : 
      ( hollywood(U)
     => city(U) )   )).

qmf(ax13,axiom,(
    ! [U] : 
      ( city(U)
     => location(U) )   )).

qmf(ax14,axiom,(
    ! [U] : 
      ( location(U)
     => object(U) )   )).

qmf(ax15,axiom,(
    ! [U] : 
      ( object(U)
     => entity(U) )   )).

qmf(ax16,axiom,(
    ! [U] : 
      ( old(U)
     => ~ new(U) )   )).

qmf(ax17,axiom,(
    ! [U] : 
      ( eventuality(U)
     => ~ entity(U) )   )).

qmf(ax18,axiom,(
    ! [U] : 
      ( abstraction(U)
     => ~ entity(U) )   )).

qmf(ax19,axiom,(
    ! [U] : 
      ( abstraction(U)
     => ~ eventuality(U) )   )).

qmf(ax20,axiom,(
    ! [U] : 
      ( male(U)
     => ~ female(U) )   )).

qmf(ax21,axiom,(
    ! [U] : 
      ( man(U)
     => ~ woman(U) )   )).

qmf(ax22,axiom,(
    ! [U] : 
      ( man(U)
     => male(U) )   )).

qmf(ax23,axiom,(
    ! [U] : 
      ( male(U)
     => human(U) )   )).

qmf(ax24,axiom,(
    ! [U] : 
      ( female(U)
     => human(U) )   )).

qmf(ax25,axiom,(
    ! [U] : 
      ( woman(U)
     => female(U) )   )).

qmf(ax26,axiom,(
    ! [U] : 
      ( drs(U)
    <=> proposition(U) )   )).

qmf(ax27,axiom,(
    ! [U] : 
      ( nonhuman(U)
     => entity(U) )   )).

qmf(ax28,axiom,(
    ! [U] : 
      ( human(U)
     => ~ nonhuman(U) )   )).

qmf(ax29,axiom,(
    ! [U,V,W] : 
      ( ( have(U,V,W)
        & human(V) )
    <=> ( owner(V)
        & of(V,W) ) )   )).

qmf(ax30,axiom,(
    ! [U,V,W] : 
      ( ( have(U,V,W)
        & nonhuman(V)
        & nonhuman(W) )
     => partof(W,V) )   )).

qmf(ax31,axiom,(
    ! [U,V,W] : 
      ( ( event(U)
        & have(U,V,W) )
     => of(V,W) )   )).

qmf(ax32,axiom,(
    ! [U,V] : 
      ( of(V,U)
     => ? [W] : 
          ( event(W)
          & have(W,U,V) ) )   )).

qmf(ax33,axiom,(
    ! [U,V,W] : 
      ( ( partof(U,V)
        & partof(U,W) )
     => qmltpeq(V,W) )   )).

qmf(co1,conjecture,(
    ~ ( ? [U,V,W,X] : 
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
          & in(V,U) ) )   )).
%------------------------------------------------------------------------------
