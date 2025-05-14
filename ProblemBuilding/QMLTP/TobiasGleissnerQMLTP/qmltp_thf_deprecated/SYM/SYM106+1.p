% semantics
% modalities

% propositions
thf(p_type,type,(p : ($o))).
thf(q_type,type,(q : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM106+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Modal Propositional Logic Theorems. problem 6
% Version  : Especial.
% English  :
% Refs     : [S07] T. Sider. Logic for Philosophy. Oxford, 2007.
%
% Source   : http://www.tedsider.org/teaching/lfp
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.00         0.00          v1.1
%             D   0.00         0.00         0.00          v1.1
%             T   0.00         0.00         0.00          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( $box @ ( p ) ) => ( $box @ ( q => p ) ) ) ) .