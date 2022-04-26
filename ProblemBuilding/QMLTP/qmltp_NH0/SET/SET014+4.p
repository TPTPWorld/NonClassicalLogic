% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(equal_set_type,type,(equal_set : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(product_type,type,(product : ($i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).
thf(intersection_type,type,(intersection : ($i>$i>$i))).
thf(difference_type,type,(difference : ($i>$i>$i))).
thf(sum_type,type,(sum : ($i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).
thf(power_set_type,type,(power_set : ($i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET014+4 : QMLTP v1.1
% Domain   : Set Theory (Naive)
% Problem  : Union of subsets is a subset
% Version  : [Pas99] axioms.
% English  : If A and B are contained in C then the union of A and B is also.
% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(difference_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ).
thf(difference_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ).
thf(intersection_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ).
thf(intersection_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ).
thf(power_set_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( power_set @ A ) @ ( power_set @ B ) ) ) ) ).
thf(product_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( product @ A ) @ ( product @ B ) ) ) ) ).
thf(singleton_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ).
thf(sum_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( sum @ A ) @ ( sum @ B ) ) ) ) ).
thf(union_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ).
thf(union_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ).
thf(unordered_pair_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ).
thf(unordered_pair_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ).
thf(equal_set_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( equal_set @ A @ C ) ) => ( equal_set @ B @ C ) ) ) ).
thf(equal_set_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( equal_set @ C @ A ) ) => ( equal_set @ C @ B ) ) ) ).
thf(member_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(subset_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(subset_0,axiom,( ! [ A :$i,B :$i ] : ( ( subset @ A @ B ) <=> ! [ X :$i ] : ( ( member @ X @ A ) => ( member @ X @ B ) ) ) ) ).
thf(equal_set_0,axiom,( ! [ A :$i,B :$i ] : ( ( equal_set @ A @ B ) <=> ( ( subset @ A @ B ) & ( subset @ B @ A ) ) ) ) ).
thf(power_set_0,axiom,( ! [ X :$i,A :$i ] : ( ( member @ X @ ( power_set @ A ) ) <=> ( subset @ X @ A ) ) ) ).
thf(intersection_0,axiom,( ! [ X :$i,A :$i,B :$i ] : ( ( member @ X @ ( intersection @ A @ B ) ) <=> ( ( member @ X @ A ) & ( member @ X @ B ) ) ) ) ).
thf(union_0,axiom,( ! [ X :$i,A :$i,B :$i ] : ( ( member @ X @ ( union @ A @ B ) ) <=> ( ( member @ X @ A ) | ( member @ X @ B ) ) ) ) ).
thf(empty_set_0,axiom,( ! [ X :$i ] : ~ ( ( member @ X @ empty_set ) ) ) ).
thf(difference_0,axiom,( ! [ B :$i,A :$i,E :$i ] : ( ( member @ B @ ( difference @ E @ A ) ) <=> ( ( member @ B @ E ) & ~ ( ( member @ B @ A ) ) ) ) ) ).
thf(singleton_0,axiom,( ! [ X :$i,A :$i ] : ( ( member @ X @ ( singleton @ A ) ) <=> ( qmltpeq @ X @ A ) ) ) ).
thf(unordered_pair_0,axiom,( ! [ X :$i,A :$i,B :$i ] : ( ( member @ X @ ( unordered_pair @ A @ B ) ) <=> ( ( qmltpeq @ X @ A ) | ( qmltpeq @ X @ B ) ) ) ) ).
thf(sum_0,axiom,( ! [ X :$i,A :$i ] : ( ( member @ X @ ( sum @ A ) ) <=> ? [ Y :$i ] : ( ( member @ Y @ A ) & ( member @ X @ Y ) ) ) ) ).
thf(product_0,axiom,( ! [ X :$i,A :$i ] : ( ( member @ X @ ( product @ A ) ) <=> ! [ Y :$i ] : ( ( member @ Y @ A ) => ( member @ X @ Y ) ) ) ) ).
thf(thI45,conjecture,( ! [ A :$i,X :$i,Y :$i ] : ( ( ( subset @ X @ A ) & ( subset @ Y @ A ) ) <=> ( subset @ ( union @ X @ Y ) @ A ) ) ) ).
%------------------------------------------------------------------------------
