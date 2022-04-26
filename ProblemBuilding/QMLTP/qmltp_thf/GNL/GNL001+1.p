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
thf(old_type,type,(old : ($i>$o))).
thf(down_type,type,(down : ($i>$i>$o))).
thf(way_type,type,(way : ($i>$o))).
thf(white_type,type,(white : ($i>$o))).
thf(car_type,type,(car : ($i>$o))).
thf(street_type,type,(street : ($i>$o))).
thf(event_type,type,(event : ($i>$o))).
thf(lonely_type,type,(lonely : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GNL001+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)
% Problem  : Goedel translation of NLP001+1 (from TPTP-v5.0.0)
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
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.50         0.75          v1.1
%             D   0.25         0.33         0.50          v1.1
%             T   0.25         0.33         0.50          v1.1
%             S4  0.25         0.33         0.50          v1.1
%             S5  0.25         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( co1 , conjecture , ( ( $box @ ( ( ? [ U :$i , V :$i , W :$i , X :$i ] : ( ( $box @ ( ( hollywood @ U ) ) ) & ( ( $box @ ( ( city @ U ) ) ) & ( ( $box @ ( ( event @ V ) ) ) & ( ( $box @ ( ( street @ W ) ) ) & ( ( $box @ ( ( way @ W ) ) ) & ( ( $box @ ( ( lonely @ W ) ) ) & ( ( $box @ ( ( chevy @ X ) ) ) & ( ( $box @ ( ( car @ X ) ) ) & ( ( $box @ ( ( white @ X ) ) ) & ( ( $box @ ( ( dirty @ X ) ) ) & ( ( $box @ ( ( old @ X ) ) ) & ( ( $box @ ( ( barrel @ V @ X ) ) ) & ( ( $box @ ( ( down @ V @ W ) ) ) & ( $box @ ( ( in @ V @ U ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ Y :$i , Z :$i , X1 :$i , X2 :$i ] : ( ( $box @ ( ( hollywood @ Y ) ) ) & ( ( $box @ ( ( city @ Y ) ) ) & ( ( $box @ ( ( event @ Z ) ) ) & ( ( $box @ ( ( chevy @ X1 ) ) ) & ( ( $box @ ( ( car @ X1 ) ) ) & ( ( $box @ ( ( white @ X1 ) ) ) & ( ( $box @ ( ( dirty @ X1 ) ) ) & ( ( $box @ ( ( old @ X1 ) ) ) & ( ( $box @ ( ( street @ X2 ) ) ) & ( ( $box @ ( ( way @ X2 ) ) ) & ( ( $box @ ( ( lonely @ X2 ) ) ) & ( ( $box @ ( ( barrel @ Z @ X1 ) ) ) & ( ( $box @ ( ( down @ Z @ X2 ) ) ) & ( $box @ ( ( in @ Z @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ? [ X3 :$i , X4 :$i , X5 :$i , X6 :$i ] : ( ( $box @ ( ( hollywood @ X3 ) ) ) & ( ( $box @ ( ( city @ X3 ) ) ) & ( ( $box @ ( ( event @ X4 ) ) ) & ( ( $box @ ( ( chevy @ X5 ) ) ) & ( ( $box @ ( ( car @ X5 ) ) ) & ( ( $box @ ( ( white @ X5 ) ) ) & ( ( $box @ ( ( dirty @ X5 ) ) ) & ( ( $box @ ( ( old @ X5 ) ) ) & ( ( $box @ ( ( street @ X6 ) ) ) & ( ( $box @ ( ( way @ X6 ) ) ) & ( ( $box @ ( ( lonely @ X6 ) ) ) & ( ( $box @ ( ( barrel @ X4 @ X5 ) ) ) & ( ( $box @ ( ( down @ X4 @ X6 ) ) ) & ( $box @ ( ( in @ X4 @ X3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ X7 :$i , X8 :$i , X9 :$i , X10 :$i ] : ( ( $box @ ( ( hollywood @ X7 ) ) ) & ( ( $box @ ( ( city @ X7 ) ) ) & ( ( $box @ ( ( event @ X8 ) ) ) & ( ( $box @ ( ( street @ X9 ) ) ) & ( ( $box @ ( ( way @ X9 ) ) ) & ( ( $box @ ( ( lonely @ X9 ) ) ) & ( ( $box @ ( ( chevy @ X10 ) ) ) & ( ( $box @ ( ( car @ X10 ) ) ) & ( ( $box @ ( ( white @ X10 ) ) ) & ( ( $box @ ( ( dirty @ X10 ) ) ) & ( ( $box @ ( ( old @ X10 ) ) ) & ( ( $box @ ( ( barrel @ X8 @ X10 ) ) ) & ( ( $box @ ( ( down @ X8 @ X9 ) ) ) & ( $box @ ( ( in @ X8 @ X7 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------