% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(set_intersection2_type,type,(set_intersection2 : ($i>$i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET912+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ( in(A,B) & in(C,B) ) => intsctn(uno_pair(A,C),B) = uno_pair(A,C)
% Version  : [Urb06] axioms : Especial.
% English  :
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t53_zfmisc_1 [Urb06]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.50          v1.1
%             D   0.75         0.67         0.50          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.75         0.67         0.67          v1.1
%             S5  0.75         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom-local,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom-local,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom-local,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(set_intersection2_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ A @ C ) @ ( set_intersection2 @ B @ C ) ) ) ) ).
thf(set_intersection2_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ C @ A ) @ ( set_intersection2 @ C @ B ) ) ) ) ).
thf(unordered_pair_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ).
thf(unordered_pair_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ).
thf(empty_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ).
thf(in_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ A @ C ) ) => ( in @ B @ C ) ) ) ).
thf(in_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ C @ A ) ) => ( in @ C @ B ) ) ) ).
thf(subset_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(antisymmetry_r2_hidden,axiom-local,( ! [ A :$i,B :$i ] : ( ( in @ A @ B ) => ~ ( ( in @ B @ A ) ) ) ) ).
thf(commutativity_k2_tarski,axiom-local,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( unordered_pair @ A @ B ) @ ( unordered_pair @ B @ A ) ) ) ).
thf(commutativity_k3_xboole_0,axiom-local,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( set_intersection2 @ A @ B ) @ ( set_intersection2 @ B @ A ) ) ) ).
thf(idempotence_k3_xboole_0,axiom-local,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( set_intersection2 @ A @ A ) @ A ) ) ).
thf(rc1_xboole_0,axiom-local,( ? [ A :$i ] : ( empty @ A ) ) ).
thf(rc2_xboole_0,axiom-local,( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ).
thf(reflexivity_r1_tarski,axiom-local,( ! [ A :$i,B :$i ] : ( subset @ A @ A ) ) ).
thf(t28_xboole_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( subset @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ A @ B ) @ A ) ) ) ).
thf(t38_zfmisc_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( subset @ ( unordered_pair @ A @ B ) @ C ) <=> ( ( in @ A @ C ) & ( in @ B @ C ) ) ) ) ).
thf(t53_zfmisc_1,conjecture,( ! [ A :$i,B :$i,C :$i ] : ( ( ( in @ A @ B ) & ( in @ C @ B ) ) => ( qmltpeq @ ( set_intersection2 @ ( unordered_pair @ A @ C ) @ B ) @ ( unordered_pair @ A @ C ) ) ) ) ).
%------------------------------------------------------------------------------
