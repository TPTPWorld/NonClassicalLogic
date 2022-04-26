% semantics
% modalities

% propositions

% individual constants

% predicates
thf(f_type,type,(f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM003+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Quantified modal logic wwfs. problem 3.
% Version  : Especial.
% English  :
% Refs     : [Sid09] Sider (2009), Logic for Philosophy
%            [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic.
%            Kluwer, 1998.
% Source   : [Sid09]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( $box @ ( ? [ X :$i ] : ( ( f @ X ) ) ) ) => ( ? [ X :$i ] : ( $box @ ( ( f @ X ) ) ) ) ) ) .