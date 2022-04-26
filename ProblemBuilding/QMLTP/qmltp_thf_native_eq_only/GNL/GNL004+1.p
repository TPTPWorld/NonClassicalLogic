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

% File     : GNL004+1 : QMLTP v1.1

% Domain   : GNL (Goedel translation of Natural Language Processing)

% Problem  : Goedel translation of NLP004+1 (from TPTP-v5.0.0)

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
thf(co1,conjecture,(($box@((?[U:$i,V:$i,W:$i,X:$i,Y:$i,Z:$i,X1:$i,X2:$i,X4:$i,X5:$i]:(($box@((seat@U)))&(($box@((furniture@U)))&(($box@((front@U)))&(($box@((seat@V)))&(($box@((furniture@V)))&(($box@((front@V)))&(($box@((hollywood@W)))&(($box@((city@W)))&(($box@((event@X)))&(($box@((street@Y)))&(($box@((way@Y)))&(($box@((lonely@Y)))&(($box@((chevy@Z)))&(($box@((car@Z)))&(($box@((white@Z)))&(($box@((dirty@Z)))&(($box@((old@Z)))&(($box@((barrel@X@Z)))&(($box@((down@X@Y)))&(($box@((in@X@W)))&(($box@(~(($box@((X1=X2))))))&(($box@((fellow@X1)))&(($box@((man@X1)))&(($box@((young@X1)))&(($box@((fellow@X2)))&(($box@((man@X2)))&(($box@((young@X2)))&(($box@((X1=X4)))&(($box@((in@X4@U)))&(($box@((X2=X5)))&($box@((in@X5@V))))))))))))))))))))))))))))))))))=>(?[X6:$i,X7:$i,X8:$i,X9:$i,X10:$i,X11:$i,X12:$i,X13:$i,X15:$i,X16:$i]:(($box@((seat@X6)))&(($box@((furniture@X6)))&(($box@((front@X6)))&(($box@((seat@X7)))&(($box@((furniture@X7)))&(($box@((front@X7)))&(($box@((hollywood@X8)))&(($box@((city@X8)))&(($box@((event@X9)))&(($box@((chevy@X10)))&(($box@((car@X10)))&(($box@((white@X10)))&(($box@((dirty@X10)))&(($box@((old@X10)))&(($box@((street@X11)))&(($box@((way@X11)))&(($box@((lonely@X11)))&(($box@((barrel@X9@X10)))&(($box@((down@X9@X11)))&(($box@((in@X9@X8)))&(($box@(~(($box@((X12=X13))))))&(($box@((fellow@X12)))&(($box@((man@X12)))&(($box@((young@X12)))&(($box@((fellow@X13)))&(($box@((man@X13)))&(($box@((young@X13)))&(($box@((X12=X15)))&(($box@((in@X15@X6)))&(($box@((X13=X16)))&($box@((in@X16@X7))))))))))))))))))))))))))))))))))))&($box@((?[X17:$i,X18:$i,X19:$i,X20:$i,X21:$i,X22:$i,X23:$i,X24:$i,X26:$i,X27:$i]:(($box@((seat@X17)))&(($box@((furniture@X17)))&(($box@((front@X17)))&(($box@((seat@X18)))&(($box@((furniture@X18)))&(($box@((front@X18)))&(($box@((hollywood@X19)))&(($box@((city@X19)))&(($box@((event@X20)))&(($box@((chevy@X21)))&(($box@((car@X21)))&(($box@((white@X21)))&(($box@((dirty@X21)))&(($box@((old@X21)))&(($box@((street@X22)))&(($box@((way@X22)))&(($box@((lonely@X22)))&(($box@((barrel@X20@X21)))&(($box@((down@X20@X22)))&(($box@((in@X20@X19)))&(($box@(~(($box@((X23=X24))))))&(($box@((fellow@X23)))&(($box@((man@X23)))&(($box@((young@X23)))&(($box@((fellow@X24)))&(($box@((man@X24)))&(($box@((young@X24)))&(($box@((X23=X26)))&(($box@((in@X26@X17)))&(($box@((X24=X27)))&($box@((in@X27@X18))))))))))))))))))))))))))))))))))=>(?[X28:$i,X29:$i,X30:$i,X31:$i,X32:$i,X33:$i,X34:$i,X35:$i,X37:$i,X38:$i]:(($box@((seat@X28)))&(($box@((furniture@X28)))&(($box@((front@X28)))&(($box@((seat@X29)))&(($box@((furniture@X29)))&(($box@((front@X29)))&(($box@((hollywood@X30)))&(($box@((city@X30)))&(($box@((event@X31)))&(($box@((street@X32)))&(($box@((way@X32)))&(($box@((lonely@X32)))&(($box@((chevy@X33)))&(($box@((car@X33)))&(($box@((white@X33)))&(($box@((dirty@X33)))&(($box@((old@X33)))&(($box@((barrel@X31@X33)))&(($box@((down@X31@X32)))&(($box@((in@X31@X30)))&(($box@(~(($box@((X34=X35))))))&(($box@((fellow@X34)))&(($box@((man@X34)))&(($box@((young@X34)))&(($box@((fellow@X35)))&(($box@((man@X35)))&(($box@((young@X35)))&(($box@((X34=X37)))&(($box@((in@X37@X28)))&(($box@((X35=X38)))&($box@((in@X38@X29)))))))))))))))))))))))))))))))))))))).