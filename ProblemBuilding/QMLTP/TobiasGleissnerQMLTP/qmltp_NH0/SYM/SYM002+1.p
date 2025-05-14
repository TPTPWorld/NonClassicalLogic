
% propositions

% individual constants

% predicates
thf(f_type,type,(f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM002+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : converse Barcan scheme instance. Ted Sider's wwf 2.
% Version  : Especial.
% English  : if it is necessary that for all x f(x), then for all x
%            necessarily f(x)
%
% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
%          : [Brc46] [1] R. C. Barcan. A functional calculus of first
%            order based on strict implication. Journal of Symbolic Logic
%            11:1-16, 1946.
% Source   : [Sid09]
% Names    : instance of the converse Barcan formula
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Theorem      Theorem       v1.1
%             D   Non-Theorem  Theorem      Theorem       v1.1
%             T   Non-Theorem  Theorem      Theorem       v1.1
%             S4  Non-Theorem  Theorem      Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.25         0.25          v1.1
%             D   0.75         0.17         0.17          v1.1
%             T   0.50         0.17         0.17          v1.1
%             S4  0.50         0.17         0.17          v1.1
%             S5  0.50         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(con,conjecture,( ( {$box} @ ( ! [ X :$i ] : ( ( f @ X ) ) ) ) => ( ! [ X :$i ] : ( {$box} @ ( ( f @ X ) ) ) ) ) ).
