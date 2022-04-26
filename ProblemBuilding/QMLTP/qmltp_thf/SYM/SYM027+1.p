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
% File     : SYM027+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic.
%            Kluwer, 1998.
% Source   : [FM98]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Theorem       v1.1
%             D   Non-Theorem  Non-Theorem  Theorem       v1.1
%             T   Non-Theorem  Non-Theorem  Theorem       v1.1
%             S4  Non-Theorem  Non-Theorem  Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.75         0.50          v1.1
%             D   0.75         0.83         0.33          v1.1
%             T   0.50         0.67         0.33          v1.1
%             S4  0.50         0.67         0.33          v1.1
%             S5  0.50         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( ( $dia @ ( ! [ X :$i ] : ( a @ X ) ) ) & ( $box @ ( ? [ X :$i ] : ( ( b @ X ) ) ) ) ) => ( ? [ X :$i ] : ( $dia @ ( ( a @ X ) & ( b @ X ) ) ) ) ) ) .