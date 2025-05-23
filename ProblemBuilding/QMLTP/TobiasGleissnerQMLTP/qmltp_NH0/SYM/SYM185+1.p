
% propositions
thf(p_type,type,(p : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM185+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [P94] S. Popcorn. First Steps in Modal Logic. Cambridge,
%                  University Press, 1994.
% Source   : [P94]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Non-Theorem  Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         1.00          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(con,conjecture,( ( {$box} @ ( {$dia} @ ( {$dia} @ ( p ) ) ) ) <=> ( {$box} @ ( {$dia} @ ( p ) ) ) ) ).
