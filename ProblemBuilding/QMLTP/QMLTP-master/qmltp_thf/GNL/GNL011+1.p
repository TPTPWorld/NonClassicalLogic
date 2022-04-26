% semantics
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
% File     : GNL011+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)
% Problem  : Goedel translation of NLP011+1 (from TPTP-v5.0.0)
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
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( barrel_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( barrel @ A @ C ) ) ) ) => ( $box @ ( ( barrel @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( barrel_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( barrel @ C @ A ) ) ) ) => ( $box @ ( ( barrel @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( car_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( car @ A ) ) ) ) => ( $box @ ( ( car @ B ) ) ) ) ) ) ) ) ) ) .
thf ( chevy_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( chevy @ A ) ) ) ) => ( $box @ ( ( chevy @ B ) ) ) ) ) ) ) ) ) ) .
thf ( city_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( city @ A ) ) ) ) => ( $box @ ( ( city @ B ) ) ) ) ) ) ) ) ) ) .
thf ( dirty_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( dirty @ A ) ) ) ) => ( $box @ ( ( dirty @ B ) ) ) ) ) ) ) ) ) ) .
thf ( down_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( down @ A @ C ) ) ) ) => ( $box @ ( ( down @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( down_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( down @ C @ A ) ) ) ) => ( $box @ ( ( down @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( event_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( event @ A ) ) ) ) => ( $box @ ( ( event @ B ) ) ) ) ) ) ) ) ) ) .
thf ( fellow_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( fellow @ A ) ) ) ) => ( $box @ ( ( fellow @ B ) ) ) ) ) ) ) ) ) ) .
thf ( front_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( front @ A ) ) ) ) => ( $box @ ( ( front @ B ) ) ) ) ) ) ) ) ) ) .
thf ( furniture_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( furniture @ A ) ) ) ) => ( $box @ ( ( furniture @ B ) ) ) ) ) ) ) ) ) ) .
thf ( hollywood_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( hollywood @ A ) ) ) ) => ( $box @ ( ( hollywood @ B ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ A @ C ) ) ) ) => ( $box @ ( ( in @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ C @ A ) ) ) ) => ( $box @ ( ( in @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( lonely_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( lonely @ A ) ) ) ) => ( $box @ ( ( lonely @ B ) ) ) ) ) ) ) ) ) ) .
thf ( man_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( man @ A ) ) ) ) => ( $box @ ( ( man @ B ) ) ) ) ) ) ) ) ) ) .
thf ( old_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( old @ A ) ) ) ) => ( $box @ ( ( old @ B ) ) ) ) ) ) ) ) ) ) .
thf ( seat_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( seat @ A ) ) ) ) => ( $box @ ( ( seat @ B ) ) ) ) ) ) ) ) ) ) .
thf ( street_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( street @ A ) ) ) ) => ( $box @ ( ( street @ B ) ) ) ) ) ) ) ) ) ) .
thf ( way_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( way @ A ) ) ) ) => ( $box @ ( ( way @ B ) ) ) ) ) ) ) ) ) ) .
thf ( white_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( white @ A ) ) ) ) => ( $box @ ( ( white @ B ) ) ) ) ) ) ) ) ) ) .
thf ( young_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( young @ A ) ) ) ) => ( $box @ ( ( young @ B ) ) ) ) ) ) ) ) ) ) .
thf ( co1 , conjecture , ( ( $box @ ( ( ? [ U :$i , V :$i , W :$i , X :$i , Y :$i , Z :$i , X1 :$i , X2 :$i , X3 :$i , X4 :$i ] : ( ( $box @ ( ( seat @ U ) ) ) & ( ( $box @ ( ( furniture @ U ) ) ) & ( ( $box @ ( ( front @ U ) ) ) & ( ( $box @ ( ( hollywood @ V ) ) ) & ( ( $box @ ( ( city @ V ) ) ) & ( ( $box @ ( ( event @ W ) ) ) & ( ( $box @ ( ( street @ X ) ) ) & ( ( $box @ ( ( way @ X ) ) ) & ( ( $box @ ( ( lonely @ X ) ) ) & ( ( $box @ ( ( chevy @ Y ) ) ) & ( ( $box @ ( ( car @ Y ) ) ) & ( ( $box @ ( ( white @ Y ) ) ) & ( ( $box @ ( ( dirty @ Y ) ) ) & ( ( $box @ ( ( old @ Y ) ) ) & ( ( $box @ ( ( barrel @ W @ Y ) ) ) & ( ( $box @ ( ( down @ W @ X ) ) ) & ( ( $box @ ( ( in @ W @ V ) ) ) & ( ( $box @ ( ( seat @ X2 ) ) ) & ( ( $box @ ( ( furniture @ X2 ) ) ) & ( ( $box @ ( ( front @ X2 ) ) ) & ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ Z @ X1 ) ) ) ) ) ) & ( ( $box @ ( ( fellow @ Z ) ) ) & ( ( $box @ ( ( man @ Z ) ) ) & ( ( $box @ ( ( young @ Z ) ) ) & ( ( $box @ ( ( fellow @ X1 ) ) ) & ( ( $box @ ( ( man @ X1 ) ) ) & ( ( $box @ ( ( young @ X1 ) ) ) & ( ( $box @ ( ( qmltpeq @ Z @ X3 ) ) ) & ( ( $box @ ( ( in @ X3 @ X2 ) ) ) & ( ( $box @ ( ( qmltpeq @ X1 @ X4 ) ) ) & ( $box @ ( ( in @ X4 @ U ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ X5 :$i , X6 :$i , X7 :$i , X8 :$i , X9 :$i , X10 :$i , X11 :$i , X12 :$i , X13 :$i , X14 :$i ] : ( ( $box @ ( ( seat @ X5 ) ) ) & ( ( $box @ ( ( furniture @ X5 ) ) ) & ( ( $box @ ( ( front @ X5 ) ) ) & ( ( $box @ ( ( hollywood @ X6 ) ) ) & ( ( $box @ ( ( city @ X6 ) ) ) & ( ( $box @ ( ( event @ X7 ) ) ) & ( ( $box @ ( ( street @ X8 ) ) ) & ( ( $box @ ( ( way @ X8 ) ) ) & ( ( $box @ ( ( lonely @ X8 ) ) ) & ( ( $box @ ( ( chevy @ X9 ) ) ) & ( ( $box @ ( ( car @ X9 ) ) ) & ( ( $box @ ( ( white @ X9 ) ) ) & ( ( $box @ ( ( dirty @ X9 ) ) ) & ( ( $box @ ( ( old @ X9 ) ) ) & ( ( $box @ ( ( barrel @ X7 @ X9 ) ) ) & ( ( $box @ ( ( down @ X7 @ X8 ) ) ) & ( ( $box @ ( ( in @ X7 @ X6 ) ) ) & ( ( $box @ ( ( seat @ X12 ) ) ) & ( ( $box @ ( ( furniture @ X12 ) ) ) & ( ( $box @ ( ( front @ X12 ) ) ) & ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ X10 @ X11 ) ) ) ) ) ) & ( ( $box @ ( ( fellow @ X10 ) ) ) & ( ( $box @ ( ( man @ X10 ) ) ) & ( ( $box @ ( ( young @ X10 ) ) ) & ( ( $box @ ( ( fellow @ X11 ) ) ) & ( ( $box @ ( ( man @ X11 ) ) ) & ( ( $box @ ( ( young @ X11 ) ) ) & ( ( $box @ ( ( qmltpeq @ X10 @ X13 ) ) ) & ( ( $box @ ( ( in @ X13 @ X5 ) ) ) & ( ( $box @ ( ( qmltpeq @ X11 @ X14 ) ) ) & ( $box @ ( ( in @ X14 @ X12 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ? [ X15 :$i , X16 :$i , X17 :$i , X18 :$i , X19 :$i , X20 :$i , X21 :$i , X22 :$i , X23 :$i , X24 :$i ] : ( ( $box @ ( ( seat @ X15 ) ) ) & ( ( $box @ ( ( furniture @ X15 ) ) ) & ( ( $box @ ( ( front @ X15 ) ) ) & ( ( $box @ ( ( hollywood @ X16 ) ) ) & ( ( $box @ ( ( city @ X16 ) ) ) & ( ( $box @ ( ( event @ X17 ) ) ) & ( ( $box @ ( ( street @ X18 ) ) ) & ( ( $box @ ( ( way @ X18 ) ) ) & ( ( $box @ ( ( lonely @ X18 ) ) ) & ( ( $box @ ( ( chevy @ X19 ) ) ) & ( ( $box @ ( ( car @ X19 ) ) ) & ( ( $box @ ( ( white @ X19 ) ) ) & ( ( $box @ ( ( dirty @ X19 ) ) ) & ( ( $box @ ( ( old @ X19 ) ) ) & ( ( $box @ ( ( barrel @ X17 @ X19 ) ) ) & ( ( $box @ ( ( down @ X17 @ X18 ) ) ) & ( ( $box @ ( ( in @ X17 @ X16 ) ) ) & ( ( $box @ ( ( seat @ X22 ) ) ) & ( ( $box @ ( ( furniture @ X22 ) ) ) & ( ( $box @ ( ( front @ X22 ) ) ) & ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ X20 @ X21 ) ) ) ) ) ) & ( ( $box @ ( ( fellow @ X20 ) ) ) & ( ( $box @ ( ( man @ X20 ) ) ) & ( ( $box @ ( ( young @ X20 ) ) ) & ( ( $box @ ( ( fellow @ X21 ) ) ) & ( ( $box @ ( ( man @ X21 ) ) ) & ( ( $box @ ( ( young @ X21 ) ) ) & ( ( $box @ ( ( qmltpeq @ X20 @ X23 ) ) ) & ( ( $box @ ( ( in @ X23 @ X15 ) ) ) & ( ( $box @ ( ( qmltpeq @ X21 @ X24 ) ) ) & ( $box @ ( ( in @ X24 @ X22 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ X25 :$i , X26 :$i , X27 :$i , X28 :$i , X29 :$i , X30 :$i , X31 :$i , X32 :$i , X33 :$i , X34 :$i ] : ( ( $box @ ( ( seat @ X25 ) ) ) & ( ( $box @ ( ( furniture @ X25 ) ) ) & ( ( $box @ ( ( front @ X25 ) ) ) & ( ( $box @ ( ( hollywood @ X26 ) ) ) & ( ( $box @ ( ( city @ X26 ) ) ) & ( ( $box @ ( ( event @ X27 ) ) ) & ( ( $box @ ( ( street @ X28 ) ) ) & ( ( $box @ ( ( way @ X28 ) ) ) & ( ( $box @ ( ( lonely @ X28 ) ) ) & ( ( $box @ ( ( chevy @ X29 ) ) ) & ( ( $box @ ( ( car @ X29 ) ) ) & ( ( $box @ ( ( white @ X29 ) ) ) & ( ( $box @ ( ( dirty @ X29 ) ) ) & ( ( $box @ ( ( old @ X29 ) ) ) & ( ( $box @ ( ( barrel @ X27 @ X29 ) ) ) & ( ( $box @ ( ( down @ X27 @ X28 ) ) ) & ( ( $box @ ( ( in @ X27 @ X26 ) ) ) & ( ( $box @ ( ( seat @ X32 ) ) ) & ( ( $box @ ( ( furniture @ X32 ) ) ) & ( ( $box @ ( ( front @ X32 ) ) ) & ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ X30 @ X31 ) ) ) ) ) ) & ( ( $box @ ( ( fellow @ X30 ) ) ) & ( ( $box @ ( ( man @ X30 ) ) ) & ( ( $box @ ( ( young @ X30 ) ) ) & ( ( $box @ ( ( fellow @ X31 ) ) ) & ( ( $box @ ( ( man @ X31 ) ) ) & ( ( $box @ ( ( young @ X31 ) ) ) & ( ( $box @ ( ( qmltpeq @ X30 @ X33 ) ) ) & ( ( $box @ ( ( in @ X33 @ X32 ) ) ) & ( ( $box @ ( ( qmltpeq @ X31 @ X34 ) ) ) & ( $box @ ( ( in @ X34 @ X25 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .