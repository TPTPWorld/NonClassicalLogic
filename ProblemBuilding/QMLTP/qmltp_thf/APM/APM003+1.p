% semantics
% modalities

% propositions

% individual constants
thf(u_type,type,(u : ($i))).
thf(one_type,type,(one : ($i))).

% predicates
thf(number_type,type,(number : ($i>$i>$o))).
thf(string_type,type,(string : ($i>$o))).
thf(in_type,type,(in : ($i>$i>$i>$o))).
thf(do_type,type,(do : ($i>$i>$i>$o))).
thf(entry_box_type,type,(entry_box : ($i>$o))).
thf(userid_type,type,(userid : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : APM003+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : generation of abstract instructions: enter a number in a(#box
% Version  : Biased.
% English  :
% Refs     : [Sto00] M. Stone. Towards a computational account of knowledge,
%            action and inference in instructions. Journal of Language and
%            Computation, 1:231-246, 2000.
% Source   : [Sto00]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Theorem      Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.50         0.33          v1.1
%             S5  0.75         0.40         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : slightly adapted from the original example: used only one
%            modal operator (#box) for both user and common-ground beliefs
%--------------------------------------------------------------------------
thf ( ax1 , axiom , ( $box @ ( ? [ I :$i ] : ( $box @ ( ( userid @ u @ I ) & ( string @ I ) ) ) ) ) ) .
thf ( ax2 , axiom , ( ? [ B :$i ] : ( $box @ ( ( entry_box @ B ) & ( number @ B @ one ) ) ) ) ) .
thf ( ax3 , axiom , ( $box @ ( ! [ S :$i , I :$i , B :$i ] : ( ( ( string @ I ) & ( entry_box @ B ) ) => ( ? [ A :$i ] : ( $box @ ( ! [ S2 :$i ] : ( ( do @ S @ A @ S2 ) => ( in @ I @ B @ S2 ) ) ) ) ) ) ) ) ) .
thf ( con , conjecture , ( $box @ ( ? [ I :$i , B :$i , A :$i , S :$i ] : ( ( $box @ ( ( userid @ u @ I ) & ( entry_box @ B ) & ( number @ B @ one ) ) ) & ( $box @ ( ! [ S2 :$i ] : ( ( do @ S @ A @ S2 ) => ( in @ I @ B @ S2 ) ) ) ) ) ) ) ) .