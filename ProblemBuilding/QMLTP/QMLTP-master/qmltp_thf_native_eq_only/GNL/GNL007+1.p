% semantics

% modalities

% propositions

% individual constants

% predicates

thf(chevy_type,type,(chevy:($i>$o))).
thf(dirty_type,type,(dirty:($i>$o))).
thf(barrel_type,type,(barrel:($i>$i>$o))).
thf(hollywood_type,type,(hollywood:($i>$o))).
thf(city_type,type,(city:($i>$o))).
thf(in_type,type,(in:($i>$i>$o))).
thf(young_type,type,(young:($i>$o))).
thf(old_type,type,(old:($i>$o))).
thf(down_type,type,(down:($i>$i>$o))).
thf(way_type,type,(way:($i>$o))).
thf(seat_type,type,(seat:($i>$o))).
thf(white_type,type,(white:($i>$o))).
thf(car_type,type,(car:($i>$o))).
thf(furniture_type,type,(furniture:($i>$o))).
thf(street_type,type,(street:($i>$o))).
thf(fellow_type,type,(fellow:($i>$o))).
thf(front_type,type,(front:($i>$o))).
thf(man_type,type,(man:($i>$o))).
thf(event_type,type,(event:($i>$o))).
thf(lonely_type,type,(lonely:($i>$o))).
% functions

% converted problem

%--------------------------------------------------------------------------

% File     : GNL007+1 : QMLTP v1.1

% Domain   : GNL (Goedel translation of Natural Language Processing)

% Problem  : Goedel translation of NLP007+1 (from TPTP-v5.0.0)

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

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom barrel_substitution_1
% removed axiom barrel_substitution_2
% removed axiom car_substitution_1
% removed axiom chevy_substitution_1
% removed axiom city_substitution_1
% removed axiom dirty_substitution_1
% removed axiom down_substitution_1
% removed axiom down_substitution_2
% removed axiom event_substitution_1
% removed axiom fellow_substitution_1
% removed axiom front_substitution_1
% removed axiom furniture_substitution_1
% removed axiom hollywood_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
% removed axiom lonely_substitution_1
% removed axiom man_substitution_1
% removed axiom old_substitution_1
% removed axiom seat_substitution_1
% removed axiom street_substitution_1
% removed axiom way_substitution_1
% removed axiom white_substitution_1
% removed axiom young_substitution_1
thf(co1,conjecture,(($box@((?[U:$i,V:$i,W:$i,X:$i,Y:$i,Z:$i,X1:$i,X2:$i,X3:$i,X4:$i]:(($box@((seat@U)))&(($box@((furniture@U)))&(($box@((front@U)))&(($box@((hollywood@V)))&(($box@((city@V)))&(($box@((event@W)))&(($box@((chevy@X)))&(($box@((car@X)))&(($box@((white@X)))&(($box@((dirty@X)))&(($box@((old@X)))&(($box@((street@Y)))&(($box@((way@Y)))&(($box@((lonely@Y)))&(($box@((barrel@W@X)))&(($box@((down@W@Y)))&(($box@((in@W@V)))&(($box@((seat@X2)))&(($box@((furniture@X2)))&(($box@((front@X2)))&(($box@(~(($box@((Z=X1))))))&(($box@((fellow@Z)))&(($box@((man@Z)))&(($box@((young@Z)))&(($box@((fellow@X1)))&(($box@((man@X1)))&(($box@((young@X1)))&(($box@((Z=X3)))&(($box@((in@X3@X2)))&(($box@((X1=X4)))&($box@((in@X4@U))))))))))))))))))))))))))))))))))=>(?[X5:$i,X6:$i,X7:$i,X8:$i,X9:$i,X10:$i,X11:$i,X12:$i,X13:$i,X14:$i]:(($box@((seat@X5)))&(($box@((furniture@X5)))&(($box@((front@X5)))&(($box@((hollywood@X6)))&(($box@((city@X6)))&(($box@((event@X7)))&(($box@((chevy@X8)))&(($box@((car@X8)))&(($box@((white@X8)))&(($box@((dirty@X8)))&(($box@((old@X8)))&(($box@((street@X9)))&(($box@((way@X9)))&(($box@((lonely@X9)))&(($box@((barrel@X7@X8)))&(($box@((down@X7@X9)))&(($box@((in@X7@X6)))&(($box@((seat@X12)))&(($box@((furniture@X12)))&(($box@((front@X12)))&(($box@(~(($box@((X10=X11))))))&(($box@((fellow@X10)))&(($box@((man@X10)))&(($box@((young@X10)))&(($box@((fellow@X11)))&(($box@((man@X11)))&(($box@((young@X11)))&(($box@((X10=X13)))&(($box@((in@X13@X5)))&(($box@((X11=X14)))&($box@((in@X14@X12))))))))))))))))))))))))))))))))))))&($box@((?[X15:$i,X16:$i,X17:$i,X18:$i,X19:$i,X20:$i,X21:$i,X22:$i,X23:$i,X24:$i]:(($box@((seat@X15)))&(($box@((furniture@X15)))&(($box@((front@X15)))&(($box@((hollywood@X16)))&(($box@((city@X16)))&(($box@((event@X17)))&(($box@((chevy@X18)))&(($box@((car@X18)))&(($box@((white@X18)))&(($box@((dirty@X18)))&(($box@((old@X18)))&(($box@((street@X19)))&(($box@((way@X19)))&(($box@((lonely@X19)))&(($box@((barrel@X17@X18)))&(($box@((down@X17@X19)))&(($box@((in@X17@X16)))&(($box@((seat@X22)))&(($box@((furniture@X22)))&(($box@((front@X22)))&(($box@(~(($box@((X20=X21))))))&(($box@((fellow@X20)))&(($box@((man@X20)))&(($box@((young@X20)))&(($box@((fellow@X21)))&(($box@((man@X21)))&(($box@((young@X21)))&(($box@((X20=X23)))&(($box@((in@X23@X15)))&(($box@((X21=X24)))&($box@((in@X24@X22))))))))))))))))))))))))))))))))))=>(?[X25:$i,X26:$i,X27:$i,X28:$i,X29:$i,X30:$i,X31:$i,X32:$i,X33:$i,X34:$i]:(($box@((seat@X25)))&(($box@((furniture@X25)))&(($box@((front@X25)))&(($box@((hollywood@X26)))&(($box@((city@X26)))&(($box@((event@X27)))&(($box@((chevy@X28)))&(($box@((car@X28)))&(($box@((white@X28)))&(($box@((dirty@X28)))&(($box@((old@X28)))&(($box@((street@X29)))&(($box@((way@X29)))&(($box@((lonely@X29)))&(($box@((barrel@X27@X28)))&(($box@((down@X27@X29)))&(($box@((in@X27@X26)))&(($box@((seat@X32)))&(($box@((furniture@X32)))&(($box@((front@X32)))&(($box@(~(($box@((X30=X31))))))&(($box@((fellow@X30)))&(($box@((man@X30)))&(($box@((young@X30)))&(($box@((fellow@X31)))&(($box@((man@X31)))&(($box@((young@X31)))&(($box@((X30=X33)))&(($box@((in@X33@X32)))&(($box@((X31=X34)))&($box@((in@X34@X25)))))))))))))))))))))))))))))))))))))).