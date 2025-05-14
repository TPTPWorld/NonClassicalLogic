
% propositions
thf(p_type,type,(p : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM170+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Mixed Modal Propositional Logic WFFs. problem 16
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
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(con,conjecture,( ( {$box} @ ( {$dia} @ ( p ) ) ) => ( {$dia} @ ( {$box} @ ( p ) ) ) ) ).
