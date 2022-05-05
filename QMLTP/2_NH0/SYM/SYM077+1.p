% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants
thf(a_type,type,(a : ($i))).

% predicates
thf(r_type,type,(r : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM077+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Quantified modal logics wwfs. problem 16.
% Version  : Especial.
% English  :
% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
% Source   : [Sid09]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Unsolved      v1.1
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
thf(con,conjecture,( ( ? [ X :$i ] : ( {$dia} @ ( ( r @ a @ X ) ) ) ) => ( {$dia} @ ( {$box} @ ( ? [ X :$i ] : ( ? [ Y :$i ] : ( ( r @ X @ Y ) ) ) ) ) ) ) ).
