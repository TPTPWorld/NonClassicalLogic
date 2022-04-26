% semantics
% modalities

% propositions

% individual constants

% predicates
thf(r_type,type,(r : ($i>$i>$o))).
thf(e_type,type,(e : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM044+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [For94] G. Forbes. Modern Logic. A Text in Elementary
%            Symbolic Logic}. Oxford University Press, 1994.
% Source   : [For94]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.75         0.75          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( $dia @ ( ? [ X :$i ] : ( $box @ ( ( e @ X ) & ( ! [ Y :$i ] : ( ( r @ X @ Y ) ) ) ) ) ) ) => ( $box @ ( ! [ Y :$i ] : ( ? [ X :$i ] : ( ( r @ X @ Y ) ) ) ) ) ) ) .