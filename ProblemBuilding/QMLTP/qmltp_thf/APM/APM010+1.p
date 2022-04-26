% semantics
% modalities

% propositions

% individual constants
thf(cs_type,type,(cs : ($i))).
thf(sue_type,type,(sue : ($i))).
thf(mary_type,type,(mary : ($i))).
thf(john_type,type,(john : ($i))).
thf(math_type,type,(math : ($i))).
thf(psych_type,type,(psych : ($i))).

% predicates
thf(teach_type,type,(teach : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : APM010+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : database querying
% Version  : Especial.
% English  :
% Refs     : [Rei92] R. Reiter. What Should a Database Know? Journal of
%            Logic Programming 14 (1&2):127-153, 1992.
% Source   : [Rei92]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.75         0.75          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( db , axiom , ( $box @ ( ( teach @ john @ math ) & ( ? [ X :$i ] : ( ( teach @ X @ cs ) ) ) & ( teach @ mary @ psych ) & ( teach @ sue @ psych ) ) ) ) .
thf ( query , conjecture , ( ? [ X :$i ] : ( ( teach @ X @ psych ) & ( ~ ( ( $box @ ( ( teach @ X @ cs ) ) ) ) ) ) ) ) .