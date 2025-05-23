% semantics
% modalities

% propositions

% individual constants

% predicates
thf(a_type,type,(a : ($i>$o))).
thf(b_type,type,(b : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM028+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic.
%            Kluwer, 1998.
% Source   : [FM98]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.25         0.25          v1.1
%             D   0.00         0.17         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( ( $dia @ ( ? [ X :$i ] : ( $box @ ( ( a @ X ) ) ) ) ) & ( $box @ ( ! [ X :$i ] : ( $dia @ ( ( b @ X ) ) ) ) ) ) => ( $dia @ ( ? [ X :$i ] : ( $dia @ ( ( a @ X ) & ( b @ X ) ) ) ) ) ) ) .