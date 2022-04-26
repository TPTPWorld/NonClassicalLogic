% semantics
% modalities

% propositions

% individual constants

% predicates
thf(e_type,type,(e : ($i>$o))).
thf(f_type,type,(f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM050+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [For94] G. Forbes. Modern Logic. A Text in Elementary
%            Symbolic Logic}. Oxford University Press, 1994.
% Source   : [For94]
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
thf ( con , conjecture , ( ( $dia @ ( ! [ X :$i ] : ( $box @ ( ( e @ X ) ) ) ) ) => ( $dia @ ( ( $box @ ( ! [ X :$i ] : ( f @ X ) ) ) => ( ! [ X :$i ] : ( $box @ ( ( f @ X ) ) ) ) ) ) ) ) .