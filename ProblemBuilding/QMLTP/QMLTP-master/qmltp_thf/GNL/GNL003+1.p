% semantics
% modalities

% propositions

% individual constants

% predicates
thf(chevy_type,type,(chevy : ($i>$o))).
thf(hollywood_type,type,(hollywood : ($i>$o))).
thf(woman_type,type,(woman : ($i>$o))).
thf(city_type,type,(city : ($i>$o))).
thf(down_type,type,(down : ($i>$i>$o))).
thf(vehicle_type,type,(vehicle : ($i>$o))).
thf(artifact_type,type,(artifact : ($i>$o))).
thf(white_type,type,(white : ($i>$o))).
thf(car_type,type,(car : ($i>$o))).
thf(street_type,type,(street : ($i>$o))).
thf(of_type,type,(of : ($i>$i>$o))).
thf(proposition_type,type,(proposition : ($i>$o))).
thf(have_type,type,(have : ($i>$i>$i>$o))).
thf(man_type,type,(man : ($i>$o))).
thf(event_type,type,(event : ($i>$o))).
thf(female_type,type,(female : ($i>$o))).
thf(lonely_type,type,(lonely : ($i>$o))).
thf(human_type,type,(human : ($i>$o))).
thf(dirty_type,type,(dirty : ($i>$o))).
thf(owner_type,type,(owner : ($i>$o))).
thf(barrel_type,type,(barrel : ($i>$i>$o))).
thf(new_type,type,(new : ($i>$o))).
thf(partof_type,type,(partof : ($i>$i>$o))).
thf(drs_type,type,(drs : ($i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(old_type,type,(old : ($i>$o))).
thf(abstraction_type,type,(abstraction : ($i>$o))).
thf(transport_type,type,(transport : ($i>$o))).
thf(instrumentality_type,type,(instrumentality : ($i>$o))).
thf(way_type,type,(way : ($i>$o))).
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(eventuality_type,type,(eventuality : ($i>$o))).
thf(location_type,type,(location : ($i>$o))).
thf(nonhuman_type,type,(nonhuman : ($i>$o))).
thf(entity_type,type,(entity : ($i>$o))).
thf(male_type,type,(male : ($i>$o))).
thf(object_type,type,(object : ($i>$o))).

% functions

% converted problem
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
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( abstraction_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( abstraction @ A ) ) ) ) => ( $box @ ( ( abstraction @ B ) ) ) ) ) ) ) ) ) ) .
thf ( artifact_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( artifact @ A ) ) ) ) => ( $box @ ( ( artifact @ B ) ) ) ) ) ) ) ) ) ) .
thf ( barrel_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( barrel @ A @ C ) ) ) ) => ( $box @ ( ( barrel @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( barrel_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( barrel @ C @ A ) ) ) ) => ( $box @ ( ( barrel @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( car_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( car @ A ) ) ) ) => ( $box @ ( ( car @ B ) ) ) ) ) ) ) ) ) ) .
thf ( chevy_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( chevy @ A ) ) ) ) => ( $box @ ( ( chevy @ B ) ) ) ) ) ) ) ) ) ) .
thf ( city_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( city @ A ) ) ) ) => ( $box @ ( ( city @ B ) ) ) ) ) ) ) ) ) ) .
thf ( dirty_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( dirty @ A ) ) ) ) => ( $box @ ( ( dirty @ B ) ) ) ) ) ) ) ) ) ) .
thf ( down_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( down @ A @ C ) ) ) ) => ( $box @ ( ( down @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( down_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( down @ C @ A ) ) ) ) => ( $box @ ( ( down @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( drs_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( drs @ A ) ) ) ) => ( $box @ ( ( drs @ B ) ) ) ) ) ) ) ) ) ) .
thf ( entity_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( entity @ A ) ) ) ) => ( $box @ ( ( entity @ B ) ) ) ) ) ) ) ) ) ) .
thf ( event_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( event @ A ) ) ) ) => ( $box @ ( ( event @ B ) ) ) ) ) ) ) ) ) ) .
thf ( eventuality_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( eventuality @ A ) ) ) ) => ( $box @ ( ( eventuality @ B ) ) ) ) ) ) ) ) ) ) .
thf ( female_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( female @ A ) ) ) ) => ( $box @ ( ( female @ B ) ) ) ) ) ) ) ) ) ) .
thf ( have_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( have @ A @ C @ D ) ) ) ) => ( $box @ ( ( have @ B @ C @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( have_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( have @ C @ A @ D ) ) ) ) => ( $box @ ( ( have @ C @ B @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( have_substitution_3 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( have @ C @ D @ A ) ) ) ) => ( $box @ ( ( have @ C @ D @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( hollywood_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( hollywood @ A ) ) ) ) => ( $box @ ( ( hollywood @ B ) ) ) ) ) ) ) ) ) ) .
thf ( human_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( human @ A ) ) ) ) => ( $box @ ( ( human @ B ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ A @ C ) ) ) ) => ( $box @ ( ( in @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ C @ A ) ) ) ) => ( $box @ ( ( in @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( instrumentality_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( instrumentality @ A ) ) ) ) => ( $box @ ( ( instrumentality @ B ) ) ) ) ) ) ) ) ) ) .
thf ( location_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( location @ A ) ) ) ) => ( $box @ ( ( location @ B ) ) ) ) ) ) ) ) ) ) .
thf ( lonely_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( lonely @ A ) ) ) ) => ( $box @ ( ( lonely @ B ) ) ) ) ) ) ) ) ) ) .
thf ( male_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( male @ A ) ) ) ) => ( $box @ ( ( male @ B ) ) ) ) ) ) ) ) ) ) .
thf ( man_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( man @ A ) ) ) ) => ( $box @ ( ( man @ B ) ) ) ) ) ) ) ) ) ) .
thf ( new_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( new @ A ) ) ) ) => ( $box @ ( ( new @ B ) ) ) ) ) ) ) ) ) ) .
thf ( nonhuman_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( nonhuman @ A ) ) ) ) => ( $box @ ( ( nonhuman @ B ) ) ) ) ) ) ) ) ) ) .
thf ( object_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( object @ A ) ) ) ) => ( $box @ ( ( object @ B ) ) ) ) ) ) ) ) ) ) .
thf ( of_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( of @ A @ C ) ) ) ) => ( $box @ ( ( of @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( of_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( of @ C @ A ) ) ) ) => ( $box @ ( ( of @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( old_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( old @ A ) ) ) ) => ( $box @ ( ( old @ B ) ) ) ) ) ) ) ) ) ) .
thf ( owner_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( owner @ A ) ) ) ) => ( $box @ ( ( owner @ B ) ) ) ) ) ) ) ) ) ) .
thf ( partof_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( partof @ A @ C ) ) ) ) => ( $box @ ( ( partof @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( partof_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( partof @ C @ A ) ) ) ) => ( $box @ ( ( partof @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( proposition_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( proposition @ A ) ) ) ) => ( $box @ ( ( proposition @ B ) ) ) ) ) ) ) ) ) ) .
thf ( street_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( street @ A ) ) ) ) => ( $box @ ( ( street @ B ) ) ) ) ) ) ) ) ) ) .
thf ( transport_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( transport @ A ) ) ) ) => ( $box @ ( ( transport @ B ) ) ) ) ) ) ) ) ) ) .
thf ( vehicle_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( vehicle @ A ) ) ) ) => ( $box @ ( ( vehicle @ B ) ) ) ) ) ) ) ) ) ) .
thf ( way_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( way @ A ) ) ) ) => ( $box @ ( ( way @ B ) ) ) ) ) ) ) ) ) ) .
thf ( white_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( white @ A ) ) ) ) => ( $box @ ( ( white @ B ) ) ) ) ) ) ) ) ) ) .
thf ( woman_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( woman @ A ) ) ) ) => ( $box @ ( ( woman @ B ) ) ) ) ) ) ) ) ) ) .
thf ( ax1 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( chevy @ U ) ) ) => ( $box @ ( ( car @ U ) ) ) ) ) ) ) ) .
thf ( ax2 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( car @ U ) ) ) => ( $box @ ( ( vehicle @ U ) ) ) ) ) ) ) ) .
thf ( ax3 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( vehicle @ U ) ) ) => ( $box @ ( ( transport @ U ) ) ) ) ) ) ) ) .
thf ( ax4 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( transport @ U ) ) ) => ( $box @ ( ( instrumentality @ U ) ) ) ) ) ) ) ) .
thf ( ax5 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( instrumentality @ U ) ) ) => ( $box @ ( ( artifact @ U ) ) ) ) ) ) ) ) .
thf ( ax6 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( instrumentality @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( way @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax7 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( street @ U ) ) ) => ( $box @ ( ( way @ U ) ) ) ) ) ) ) ) .
thf ( ax8 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( way @ U ) ) ) => ( $box @ ( ( artifact @ U ) ) ) ) ) ) ) ) .
thf ( ax9 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( artifact @ U ) ) ) => ( $box @ ( ( object @ U ) ) ) ) ) ) ) ) .
thf ( ax10 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( artifact @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( location @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax11 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( event @ U ) ) ) => ( $box @ ( ( eventuality @ U ) ) ) ) ) ) ) ) .
thf ( ax12 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( hollywood @ U ) ) ) => ( $box @ ( ( city @ U ) ) ) ) ) ) ) ) .
thf ( ax13 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( city @ U ) ) ) => ( $box @ ( ( location @ U ) ) ) ) ) ) ) ) .
thf ( ax14 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( location @ U ) ) ) => ( $box @ ( ( object @ U ) ) ) ) ) ) ) ) .
thf ( ax15 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( object @ U ) ) ) => ( $box @ ( ( entity @ U ) ) ) ) ) ) ) ) .
thf ( ax16 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( old @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( new @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax17 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( eventuality @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( entity @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax18 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( abstraction @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( entity @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax19 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( abstraction @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( eventuality @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax20 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( male @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( female @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax21 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( man @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( woman @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax22 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( man @ U ) ) ) => ( $box @ ( ( male @ U ) ) ) ) ) ) ) ) .
thf ( ax23 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( male @ U ) ) ) => ( $box @ ( ( human @ U ) ) ) ) ) ) ) ) .
thf ( ax24 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( female @ U ) ) ) => ( $box @ ( ( human @ U ) ) ) ) ) ) ) ) .
thf ( ax25 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( woman @ U ) ) ) => ( $box @ ( ( female @ U ) ) ) ) ) ) ) ) .
thf ( ax26 , axiom , ( $box @ ( ! [ U :$i ] : ( ( $box @ ( ( $box @ ( ( drs @ U ) ) ) => ( $box @ ( ( proposition @ U ) ) ) ) ) & ( $box @ ( ( $box @ ( ( proposition @ U ) ) ) => ( $box @ ( ( drs @ U ) ) ) ) ) ) ) ) ) .
thf ( ax27 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( nonhuman @ U ) ) ) => ( $box @ ( ( entity @ U ) ) ) ) ) ) ) ) .
thf ( ax28 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( human @ U ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( nonhuman @ U ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax29 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( ( $box @ ( ( ( $box @ ( ( have @ U @ V @ W ) ) ) & ( $box @ ( ( human @ V ) ) ) ) => ( ( $box @ ( ( owner @ V ) ) ) & ( $box @ ( ( of @ V @ W ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( owner @ V ) ) ) & ( $box @ ( ( of @ V @ W ) ) ) ) => ( ( $box @ ( ( have @ U @ V @ W ) ) ) & ( $box @ ( ( human @ V ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax30 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ( ( $box @ ( ( have @ U @ V @ W ) ) ) & ( ( $box @ ( ( nonhuman @ V ) ) ) & ( $box @ ( ( nonhuman @ W ) ) ) ) ) => ( $box @ ( ( partof @ W @ V ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax31 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ( ( $box @ ( ( event @ U ) ) ) & ( $box @ ( ( have @ U @ V @ W ) ) ) ) => ( $box @ ( ( of @ V @ W ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax32 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ( $box @ ( ( of @ V @ U ) ) ) => ( ? [ W :$i ] : ( ( $box @ ( ( event @ W ) ) ) & ( $box @ ( ( have @ W @ U @ V ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( ax33 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ( ( $box @ ( ( partof @ U @ V ) ) ) & ( $box @ ( ( partof @ U @ W ) ) ) ) => ( $box @ ( ( qmltpeq @ V @ W ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( co1 , conjecture , ( $box @ ( ~ ( ( ? [ U :$i , V :$i , W :$i , X :$i ] : ( ( $box @ ( ( hollywood @ U ) ) ) & ( ( $box @ ( ( city @ U ) ) ) & ( ( $box @ ( ( event @ V ) ) ) & ( ( $box @ ( ( chevy @ W ) ) ) & ( ( $box @ ( ( car @ W ) ) ) & ( ( $box @ ( ( white @ W ) ) ) & ( ( $box @ ( ( dirty @ W ) ) ) & ( ( $box @ ( ( old @ W ) ) ) & ( ( $box @ ( ( street @ X ) ) ) & ( ( $box @ ( ( way @ X ) ) ) & ( ( $box @ ( ( lonely @ X ) ) ) & ( ( $box @ ( ( barrel @ V @ W ) ) ) & ( ( $box @ ( ( down @ V @ X ) ) ) & ( $box @ ( ( in @ V @ U ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .