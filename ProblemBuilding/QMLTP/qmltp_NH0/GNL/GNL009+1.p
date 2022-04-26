% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(chevy_type,type,(chevy : ($i>$o))).
thf(dirty_type,type,(dirty : ($i>$o))).
thf(barrel_type,type,(barrel : ($i>$i>$o))).
thf(hollywood_type,type,(hollywood : ($i>$o))).
thf(city_type,type,(city : ($i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(young_type,type,(young : ($i>$o))).
thf(old_type,type,(old : ($i>$o))).
thf(down_type,type,(down : ($i>$i>$o))).
thf(way_type,type,(way : ($i>$o))).
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(seat_type,type,(seat : ($i>$o))).
thf(white_type,type,(white : ($i>$o))).
thf(car_type,type,(car : ($i>$o))).
thf(furniture_type,type,(furniture : ($i>$o))).
thf(street_type,type,(street : ($i>$o))).
thf(fellow_type,type,(fellow : ($i>$o))).
thf(front_type,type,(front : ($i>$o))).
thf(man_type,type,(man : ($i>$o))).
thf(event_type,type,(event : ($i>$o))).
thf(lonely_type,type,(lonely : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GNL009+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)
% Problem  : Goedel translation of NLP009+1 (from TPTP-v5.0.0)
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
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.50         0.67         0.67          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(barrel_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( barrel @ A @ C ) ) ) ) => ( {$box} @ ( ( barrel @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(barrel_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( barrel @ C @ A ) ) ) ) => ( {$box} @ ( ( barrel @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(car_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( car @ A ) ) ) ) => ( {$box} @ ( ( car @ B ) ) ) ) ) ) ) ) ) ).
thf(chevy_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( chevy @ A ) ) ) ) => ( {$box} @ ( ( chevy @ B ) ) ) ) ) ) ) ) ) ).
thf(city_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( city @ A ) ) ) ) => ( {$box} @ ( ( city @ B ) ) ) ) ) ) ) ) ) ).
thf(dirty_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( dirty @ A ) ) ) ) => ( {$box} @ ( ( dirty @ B ) ) ) ) ) ) ) ) ) ).
thf(down_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( down @ A @ C ) ) ) ) => ( {$box} @ ( ( down @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(down_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( down @ C @ A ) ) ) ) => ( {$box} @ ( ( down @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(event_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( event @ A ) ) ) ) => ( {$box} @ ( ( event @ B ) ) ) ) ) ) ) ) ) ).
thf(fellow_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( fellow @ A ) ) ) ) => ( {$box} @ ( ( fellow @ B ) ) ) ) ) ) ) ) ) ).
thf(front_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( front @ A ) ) ) ) => ( {$box} @ ( ( front @ B ) ) ) ) ) ) ) ) ) ).
thf(furniture_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( furniture @ A ) ) ) ) => ( {$box} @ ( ( furniture @ B ) ) ) ) ) ) ) ) ) ).
thf(hollywood_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( hollywood @ A ) ) ) ) => ( {$box} @ ( ( hollywood @ B ) ) ) ) ) ) ) ) ) ).
thf(in_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( in @ A @ C ) ) ) ) => ( {$box} @ ( ( in @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(in_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( in @ C @ A ) ) ) ) => ( {$box} @ ( ( in @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(lonely_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( lonely @ A ) ) ) ) => ( {$box} @ ( ( lonely @ B ) ) ) ) ) ) ) ) ) ).
thf(man_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( man @ A ) ) ) ) => ( {$box} @ ( ( man @ B ) ) ) ) ) ) ) ) ) ).
thf(old_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( old @ A ) ) ) ) => ( {$box} @ ( ( old @ B ) ) ) ) ) ) ) ) ) ).
thf(seat_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( seat @ A ) ) ) ) => ( {$box} @ ( ( seat @ B ) ) ) ) ) ) ) ) ) ).
thf(street_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( street @ A ) ) ) ) => ( {$box} @ ( ( street @ B ) ) ) ) ) ) ) ) ) ).
thf(way_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( way @ A ) ) ) ) => ( {$box} @ ( ( way @ B ) ) ) ) ) ) ) ) ) ).
thf(white_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( white @ A ) ) ) ) => ( {$box} @ ( ( white @ B ) ) ) ) ) ) ) ) ) ).
thf(young_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( young @ A ) ) ) ) => ( {$box} @ ( ( young @ B ) ) ) ) ) ) ) ) ) ).
thf(co1,conjecture,( ( {$box} @ ( ( ? [ U :$i,V :$i,W :$i,X :$i,Y :$i,Z :$i,X1 :$i,X2 :$i,X3 :$i ] : ( ( {$box} @ ( ( hollywood @ U ) ) ) & ( ( {$box} @ ( ( city @ U ) ) ) & ( ( {$box} @ ( ( event @ V ) ) ) & ( ( {$box} @ ( ( street @ W ) ) ) & ( ( {$box} @ ( ( way @ W ) ) ) & ( ( {$box} @ ( ( lonely @ W ) ) ) & ( ( {$box} @ ( ( chevy @ X ) ) ) & ( ( {$box} @ ( ( car @ X ) ) ) & ( ( {$box} @ ( ( white @ X ) ) ) & ( ( {$box} @ ( ( dirty @ X ) ) ) & ( ( {$box} @ ( ( old @ X ) ) ) & ( ( {$box} @ ( ( barrel @ V @ X ) ) ) & ( ( {$box} @ ( ( down @ V @ W ) ) ) & ( ( {$box} @ ( ( in @ V @ U ) ) ) & ( ( {$box} @ ( ( seat @ X1 ) ) ) & ( ( {$box} @ ( ( furniture @ X1 ) ) ) & ( ( {$box} @ ( ( front @ X1 ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) ) ) & ( ( {$box} @ ( ( fellow @ Y ) ) ) & ( ( {$box} @ ( ( man @ Y ) ) ) & ( ( {$box} @ ( ( young @ Y ) ) ) & ( ( {$box} @ ( ( fellow @ Z ) ) ) & ( ( {$box} @ ( ( man @ Z ) ) ) & ( ( {$box} @ ( ( young @ Z ) ) ) & ( ( {$box} @ ( ( qmltpeq @ Y @ X2 ) ) ) & ( ( {$box} @ ( ( in @ X2 @ X1 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ Z @ X3 ) ) ) & ( {$box} @ ( ( in @ X3 @ X1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ X4 :$i,X5 :$i,X6 :$i,X7 :$i,X8 :$i,X9 :$i,X10 :$i,X11 :$i,X12 :$i ] : ( ( {$box} @ ( ( hollywood @ X4 ) ) ) & ( ( {$box} @ ( ( city @ X4 ) ) ) & ( ( {$box} @ ( ( event @ X5 ) ) ) & ( ( {$box} @ ( ( chevy @ X6 ) ) ) & ( ( {$box} @ ( ( car @ X6 ) ) ) & ( ( {$box} @ ( ( white @ X6 ) ) ) & ( ( {$box} @ ( ( dirty @ X6 ) ) ) & ( ( {$box} @ ( ( old @ X6 ) ) ) & ( ( {$box} @ ( ( street @ X7 ) ) ) & ( ( {$box} @ ( ( way @ X7 ) ) ) & ( ( {$box} @ ( ( lonely @ X7 ) ) ) & ( ( {$box} @ ( ( barrel @ X5 @ X6 ) ) ) & ( ( {$box} @ ( ( down @ X5 @ X7 ) ) ) & ( ( {$box} @ ( ( in @ X5 @ X4 ) ) ) & ( ( {$box} @ ( ( seat @ X10 ) ) ) & ( ( {$box} @ ( ( furniture @ X10 ) ) ) & ( ( {$box} @ ( ( front @ X10 ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ X8 @ X9 ) ) ) ) ) ) & ( ( {$box} @ ( ( fellow @ X8 ) ) ) & ( ( {$box} @ ( ( man @ X8 ) ) ) & ( ( {$box} @ ( ( young @ X8 ) ) ) & ( ( {$box} @ ( ( fellow @ X9 ) ) ) & ( ( {$box} @ ( ( man @ X9 ) ) ) & ( ( {$box} @ ( ( young @ X9 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X8 @ X11 ) ) ) & ( ( {$box} @ ( ( in @ X11 @ X10 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X9 @ X12 ) ) ) & ( {$box} @ ( ( in @ X12 @ X10 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( ? [ X13 :$i,X14 :$i,X15 :$i,X16 :$i,X17 :$i,X18 :$i,X19 :$i,X20 :$i,X21 :$i ] : ( ( {$box} @ ( ( hollywood @ X13 ) ) ) & ( ( {$box} @ ( ( city @ X13 ) ) ) & ( ( {$box} @ ( ( event @ X14 ) ) ) & ( ( {$box} @ ( ( chevy @ X15 ) ) ) & ( ( {$box} @ ( ( car @ X15 ) ) ) & ( ( {$box} @ ( ( white @ X15 ) ) ) & ( ( {$box} @ ( ( dirty @ X15 ) ) ) & ( ( {$box} @ ( ( old @ X15 ) ) ) & ( ( {$box} @ ( ( street @ X16 ) ) ) & ( ( {$box} @ ( ( way @ X16 ) ) ) & ( ( {$box} @ ( ( lonely @ X16 ) ) ) & ( ( {$box} @ ( ( barrel @ X14 @ X15 ) ) ) & ( ( {$box} @ ( ( down @ X14 @ X16 ) ) ) & ( ( {$box} @ ( ( in @ X14 @ X13 ) ) ) & ( ( {$box} @ ( ( seat @ X19 ) ) ) & ( ( {$box} @ ( ( furniture @ X19 ) ) ) & ( ( {$box} @ ( ( front @ X19 ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ X17 @ X18 ) ) ) ) ) ) & ( ( {$box} @ ( ( fellow @ X17 ) ) ) & ( ( {$box} @ ( ( man @ X17 ) ) ) & ( ( {$box} @ ( ( young @ X17 ) ) ) & ( ( {$box} @ ( ( fellow @ X18 ) ) ) & ( ( {$box} @ ( ( man @ X18 ) ) ) & ( ( {$box} @ ( ( young @ X18 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X17 @ X20 ) ) ) & ( ( {$box} @ ( ( in @ X20 @ X19 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X18 @ X21 ) ) ) & ( {$box} @ ( ( in @ X21 @ X19 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ X22 :$i,X23 :$i,X24 :$i,X25 :$i,X26 :$i,X27 :$i,X28 :$i,X29 :$i,X30 :$i ] : ( ( {$box} @ ( ( hollywood @ X22 ) ) ) & ( ( {$box} @ ( ( city @ X22 ) ) ) & ( ( {$box} @ ( ( event @ X23 ) ) ) & ( ( {$box} @ ( ( street @ X24 ) ) ) & ( ( {$box} @ ( ( way @ X24 ) ) ) & ( ( {$box} @ ( ( lonely @ X24 ) ) ) & ( ( {$box} @ ( ( chevy @ X25 ) ) ) & ( ( {$box} @ ( ( car @ X25 ) ) ) & ( ( {$box} @ ( ( white @ X25 ) ) ) & ( ( {$box} @ ( ( dirty @ X25 ) ) ) & ( ( {$box} @ ( ( old @ X25 ) ) ) & ( ( {$box} @ ( ( barrel @ X23 @ X25 ) ) ) & ( ( {$box} @ ( ( down @ X23 @ X24 ) ) ) & ( ( {$box} @ ( ( in @ X23 @ X22 ) ) ) & ( ( {$box} @ ( ( seat @ X28 ) ) ) & ( ( {$box} @ ( ( furniture @ X28 ) ) ) & ( ( {$box} @ ( ( front @ X28 ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ X26 @ X27 ) ) ) ) ) ) & ( ( {$box} @ ( ( fellow @ X26 ) ) ) & ( ( {$box} @ ( ( man @ X26 ) ) ) & ( ( {$box} @ ( ( young @ X26 ) ) ) & ( ( {$box} @ ( ( fellow @ X27 ) ) ) & ( ( {$box} @ ( ( man @ X27 ) ) ) & ( ( {$box} @ ( ( young @ X27 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X26 @ X29 ) ) ) & ( ( {$box} @ ( ( in @ X29 @ X28 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ X27 @ X30 ) ) ) & ( {$box} @ ( ( in @ X30 @ X28 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
