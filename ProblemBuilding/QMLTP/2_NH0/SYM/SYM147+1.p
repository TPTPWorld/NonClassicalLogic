% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions
thf(p_type,type,(p : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM147+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Modal Propositional Logic Theorems. problem 47
% Version  : Especial.
% English  :
% Refs     : [S07] T. Sider. Logic for Philosophy. Oxford, 2007.
%
% Source   : http://www.tedsider.org/teaching/lfp
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(con,conjecture,( ( {$box} @ ( {$dia} @ ( {$box} @ ( {$dia} @ ( p ) ) ) ) ) => ( {$box} @ ( {$dia} @ ( p ) ) ) ) ).
