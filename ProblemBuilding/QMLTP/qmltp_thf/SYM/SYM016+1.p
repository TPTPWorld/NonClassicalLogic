% semantics
% modalities

% propositions
thf(p_type,type,(p : ($o))).

% individual constants
thf(a_type,type,(a : ($i))).

% predicates
thf(f_type,type,(f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM016+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [Gir00] R. Girle. Modal Logics and Philosophy. Acumen Publ.,
%            2000.
% Source   : [Gir00]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.50          v1.1
%             D   0.75         0.67         0.50          v1.1
%             T   0.75         0.67         0.50          v1.1
%             S4  0.75         0.83         0.67          v1.1
%             S5  0.75         0.80         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( ! [ X :$i ] : ( ( $dia @ ( ( f @ X ) ) ) | ( $dia @ ( ~ ( ( f @ X ) ) ) ) ) ) => ( $box @ ( ( $box @ ( ( f @ a ) ) ) <=> ( p | ( ~ ( p ) ) ) ) ) ) ) .