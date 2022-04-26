% semantics
% modalities

% propositions

% individual constants
thf(c_type,type,(c : ($i))).

% predicates
thf(p_type,type,(p : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM065+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [Fit02] M. Fitting. Types, Tableaus, and Goedel's God,
%            Kluwer, 2002.
% Source   : [Fit02]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.50         0.00          v1.1
%             D   0.50         0.33         0.00          v1.1
%             T   0.00         0.00         0.00          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( $box @ ( ( p @ c ) ) ) => ( ? [ X :$i ] : ( $box @ ( ( p @ X ) ) ) ) ) ) .