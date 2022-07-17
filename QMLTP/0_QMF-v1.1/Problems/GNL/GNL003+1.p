%--------------------------------------------------------------------------
% File     : GNL003+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)       
% Problem  : Goedel translation of NLP003+1 (from TPTP-v5.0.0)      
% Version  : Especial.
% English  :

% Refs     : [TPTP] G. Sutcliffe. TPTP library v2.7.0. http://www.tptp.org 
%            [SS98] G. Sutcliffe, C.B. Suttner. The TPTP Problem Library:  
%                   CNF Release v1.2.1. Journal of Automated Reasoning,    
%                   21(2):177--203, 1998.                                  
%            [Goe69] K. Goedel. An interpretation of the intuitionistic    
%                    sentential logic. In J. Hintikka, Ed., The Philosophy 
%                    of Mathematics, pp~128--129. Oxford University Press, 
%                    1969.                                                 
% Source   : [TPTP], [Goe69]
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
%
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,
( #box : ( ! [X] : ( #box : (qmltpeq(X, X)))))).

qmf(symmetry,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( #box : (qmltpeq(X, Y))) => ( #box : (qmltpeq(Y, X))) ))))))).

qmf(transitivity,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (qmltpeq(X, Y))) & ( #box : (qmltpeq(Y, Z))) ) => ( #box : (qmltpeq(X, Z))) ))))))))).

qmf(abstraction_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (abstraction(A))) ) => ( #box : (abstraction(B))) ))))))).

qmf(artifact_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (artifact(A))) ) => ( #box : (artifact(B))) ))))))).

qmf(barrel_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (barrel(A, C))) ) => ( #box : (barrel(B, C))) ))))))))).

qmf(barrel_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (barrel(C, A))) ) => ( #box : (barrel(C, B))) ))))))))).

qmf(car_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (car(A))) ) => ( #box : (car(B))) ))))))).

qmf(chevy_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (chevy(A))) ) => ( #box : (chevy(B))) ))))))).

qmf(city_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (city(A))) ) => ( #box : (city(B))) ))))))).

qmf(dirty_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (dirty(A))) ) => ( #box : (dirty(B))) ))))))).

qmf(down_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (down(A, C))) ) => ( #box : (down(B, C))) ))))))))).

qmf(down_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (down(C, A))) ) => ( #box : (down(C, B))) ))))))))).

qmf(drs_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (drs(A))) ) => ( #box : (drs(B))) ))))))).

qmf(entity_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (entity(A))) ) => ( #box : (entity(B))) ))))))).

qmf(event_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (event(A))) ) => ( #box : (event(B))) ))))))).

qmf(eventuality_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (eventuality(A))) ) => ( #box : (eventuality(B))) ))))))).

qmf(female_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (female(A))) ) => ( #box : (female(B))) ))))))).

qmf(have_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (have(A, C, D))) ) => ( #box : (have(B, C, D))) ))))))))))).

qmf(have_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (have(C, A, D))) ) => ( #box : (have(C, B, D))) ))))))))))).

qmf(have_substitution_3,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (have(C, D, A))) ) => ( #box : (have(C, D, B))) ))))))))))).

qmf(hollywood_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (hollywood(A))) ) => ( #box : (hollywood(B))) ))))))).

qmf(human_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (human(A))) ) => ( #box : (human(B))) ))))))).

qmf(in_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(A, C))) ) => ( #box : (in(B, C))) ))))))))).

qmf(in_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(C, A))) ) => ( #box : (in(C, B))) ))))))))).

qmf(instrumentality_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (instrumentality(A))) ) => ( #box : (instrumentality(B))) ))))))).

qmf(location_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (location(A))) ) => ( #box : (location(B))) ))))))).

qmf(lonely_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (lonely(A))) ) => ( #box : (lonely(B))) ))))))).

qmf(male_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (male(A))) ) => ( #box : (male(B))) ))))))).

qmf(man_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (man(A))) ) => ( #box : (man(B))) ))))))).

qmf(new_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (new(A))) ) => ( #box : (new(B))) ))))))).

qmf(nonhuman_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (nonhuman(A))) ) => ( #box : (nonhuman(B))) ))))))).

qmf(object_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (object(A))) ) => ( #box : (object(B))) ))))))).

qmf(of_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (of(A, C))) ) => ( #box : (of(B, C))) ))))))))).

qmf(of_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (of(C, A))) ) => ( #box : (of(C, B))) ))))))))).

qmf(old_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (old(A))) ) => ( #box : (old(B))) ))))))).

qmf(owner_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (owner(A))) ) => ( #box : (owner(B))) ))))))).

qmf(partof_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (partof(A, C))) ) => ( #box : (partof(B, C))) ))))))))).

qmf(partof_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (partof(C, A))) ) => ( #box : (partof(C, B))) ))))))))).

qmf(proposition_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (proposition(A))) ) => ( #box : (proposition(B))) ))))))).

qmf(street_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (street(A))) ) => ( #box : (street(B))) ))))))).

qmf(transport_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (transport(A))) ) => ( #box : (transport(B))) ))))))).

qmf(vehicle_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (vehicle(A))) ) => ( #box : (vehicle(B))) ))))))).

qmf(way_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (way(A))) ) => ( #box : (way(B))) ))))))).

qmf(white_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (white(A))) ) => ( #box : (white(B))) ))))))).

qmf(woman_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (woman(A))) ) => ( #box : (woman(B))) ))))))).

qmf(ax1,axiom,
( #box : ( ! [U] : ( #box : (( #box : (chevy(U))) => ( #box : (car(U))) ))))).

qmf(ax2,axiom,
( #box : ( ! [U] : ( #box : (( #box : (car(U))) => ( #box : (vehicle(U))) ))))).

qmf(ax3,axiom,
( #box : ( ! [U] : ( #box : (( #box : (vehicle(U))) => ( #box : (transport(U))) ))))).

qmf(ax4,axiom,
( #box : ( ! [U] : ( #box : (( #box : (transport(U))) => ( #box : (instrumentality(U))) ))))).

qmf(ax5,axiom,
( #box : ( ! [U] : ( #box : (( #box : (instrumentality(U))) => ( #box : (artifact(U))) ))))).

qmf(ax6,axiom,
( #box : ( ! [U] : ( #box : (( #box : (instrumentality(U))) => ( #box : (~ ( #box : (way(U))) )) ))))).

qmf(ax7,axiom,
( #box : ( ! [U] : ( #box : (( #box : (street(U))) => ( #box : (way(U))) ))))).

qmf(ax8,axiom,
( #box : ( ! [U] : ( #box : (( #box : (way(U))) => ( #box : (artifact(U))) ))))).

qmf(ax9,axiom,
( #box : ( ! [U] : ( #box : (( #box : (artifact(U))) => ( #box : (object(U))) ))))).

qmf(ax10,axiom,
( #box : ( ! [U] : ( #box : (( #box : (artifact(U))) => ( #box : (~ ( #box : (location(U))) )) ))))).

qmf(ax11,axiom,
( #box : ( ! [U] : ( #box : (( #box : (event(U))) => ( #box : (eventuality(U))) ))))).

qmf(ax12,axiom,
( #box : ( ! [U] : ( #box : (( #box : (hollywood(U))) => ( #box : (city(U))) ))))).

qmf(ax13,axiom,
( #box : ( ! [U] : ( #box : (( #box : (city(U))) => ( #box : (location(U))) ))))).

qmf(ax14,axiom,
( #box : ( ! [U] : ( #box : (( #box : (location(U))) => ( #box : (object(U))) ))))).

qmf(ax15,axiom,
( #box : ( ! [U] : ( #box : (( #box : (object(U))) => ( #box : (entity(U))) ))))).

qmf(ax16,axiom,
( #box : ( ! [U] : ( #box : (( #box : (old(U))) => ( #box : (~ ( #box : (new(U))) )) ))))).

qmf(ax17,axiom,
( #box : ( ! [U] : ( #box : (( #box : (eventuality(U))) => ( #box : (~ ( #box : (entity(U))) )) ))))).

qmf(ax18,axiom,
( #box : ( ! [U] : ( #box : (( #box : (abstraction(U))) => ( #box : (~ ( #box : (entity(U))) )) ))))).

qmf(ax19,axiom,
( #box : ( ! [U] : ( #box : (( #box : (abstraction(U))) => ( #box : (~ ( #box : (eventuality(U))) )) ))))).

qmf(ax20,axiom,
( #box : ( ! [U] : ( #box : (( #box : (male(U))) => ( #box : (~ ( #box : (female(U))) )) ))))).

qmf(ax21,axiom,
( #box : ( ! [U] : ( #box : (( #box : (man(U))) => ( #box : (~ ( #box : (woman(U))) )) ))))).

qmf(ax22,axiom,
( #box : ( ! [U] : ( #box : (( #box : (man(U))) => ( #box : (male(U))) ))))).

qmf(ax23,axiom,
( #box : ( ! [U] : ( #box : (( #box : (male(U))) => ( #box : (human(U))) ))))).

qmf(ax24,axiom,
( #box : ( ! [U] : ( #box : (( #box : (female(U))) => ( #box : (human(U))) ))))).

qmf(ax25,axiom,
( #box : ( ! [U] : ( #box : (( #box : (woman(U))) => ( #box : (female(U))) ))))).

qmf(ax26,axiom,
( #box : ( ! [U] : (( #box : (( #box : (drs(U))) => ( #box : (proposition(U))) )) & (#box : (( #box : (proposition(U))) => ( #box : (drs(U))) )))))).

qmf(ax27,axiom,
( #box : ( ! [U] : ( #box : (( #box : (nonhuman(U))) => ( #box : (entity(U))) ))))).

qmf(ax28,axiom,
( #box : ( ! [U] : ( #box : (( #box : (human(U))) => ( #box : (~ ( #box : (nonhuman(U))) )) ))))).

qmf(ax29,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : (( #box : (( ( #box : (have(U, V, W))) & ( #box : (human(V))) ) => ( ( #box : (owner(V))) & ( #box : (of(V, W))) ) )) & (#box : (( ( #box : (owner(V))) & ( #box : (of(V, W))) ) => ( ( #box : (have(U, V, W))) & ( #box : (human(V))) ) )))))))))).

qmf(ax30,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : (( ( #box : (have(U, V, W))) & ( ( #box : (nonhuman(V))) & ( #box : (nonhuman(W))) ) ) => ( #box : (partof(W, V))) ))))))))).

qmf(ax31,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : (( ( #box : (event(U))) & ( #box : (have(U, V, W))) ) => ( #box : (of(V, W))) ))))))))).

qmf(ax32,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : (( #box : (of(V, U))) => ( ? [W] : ( ( #box : (event(W))) & ( #box : (have(W, U, V))) )) ))))))).

qmf(ax33,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : (( ( #box : (partof(U, V))) & ( #box : (partof(U, W))) ) => ( #box : (qmltpeq(V, W))) ))))))))).

qmf(co1,conjecture,
( #box : (~ ( ? [U, V, W, X] : ( ( #box : (hollywood(U))) & ( ( #box : (city(U))) & ( ( #box : (event(V))) & ( ( #box : (chevy(W))) & ( ( #box : (car(W))) & ( ( #box : (white(W))) & ( ( #box : (dirty(W))) & ( ( #box : (old(W))) & ( ( #box : (street(X))) & ( ( #box : (way(X))) & ( ( #box : (lonely(X))) & ( ( #box : (barrel(V, W))) & ( ( #box : (down(V, X))) & ( #box : (in(V, U))) ) ) ) ) ) ) ) ) ) ) ) ) )) ))).

