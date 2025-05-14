% semantics
% modalities

% propositions

% individual constants

% predicates
thf(r_type,type,(r : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM062+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic.
%            Kluwer, 1998.
% Source   : [FM98]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Non-Theorem  Theorem      Theorem       v1.1
%             T   Non-Theorem  Theorem      Theorem       v1.1
%             S4  Non-Theorem  Theorem      Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.25         0.25          v1.1
%             D   0.75         0.17         0.17          v1.1
%             T   0.75         0.17         0.17          v1.1
%             S4  0.75         0.17         0.17          v1.1
%             S5  0.75         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( $box @ ( ! [ X :$i ] : ( ? [ Y :$i ] : ( $dia @ ( ( r @ X @ Y ) ) ) ) ) ) => ( ! [ X :$i ] : ( $box @ ( $dia @ ( ? [ Y :$i ] : ( ( r @ X @ Y ) ) ) ) ) ) ) ) .