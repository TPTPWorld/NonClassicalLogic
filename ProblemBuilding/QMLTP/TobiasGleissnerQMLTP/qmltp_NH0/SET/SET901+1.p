
% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET901+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : Basic properties of sets, theorem 42
% Version  : [Urb06] axioms : Especial.
% English  : subset(A,unordered_pair(B,C)) <=> ~ ( A != empty_set &
%            A != singleton(B) & A != singleton(C) & A != unordered_pair(B,C) )
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t42_zfmisc_1 [Urb06]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.00         0.00          v1.1
%             D   0.25         0.17         0.17          v1.1
%             T   0.25         0.17         0.17          v1.1
%             S4  0.25         0.17         0.17          v1.1
%             S5  0.25         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(singleton_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ).
thf(unordered_pair_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ).
thf(unordered_pair_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ).
thf(empty_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ).
thf(subset_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(commutativity_k2_tarski,axiom,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( unordered_pair @ A @ B ) @ ( unordered_pair @ B @ A ) ) ) ).
thf(reflexivity_r1_tarski,axiom,( ! [ A :$i,B :$i ] : ( subset @ A @ A ) ) ).
thf(fc1_xboole_0,axiom,( ( empty @ empty_set ) ) ).
thf(rc1_xboole_0,axiom,( ? [ A :$i ] : ( empty @ A ) ) ).
thf(rc2_xboole_0,axiom,( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ).
thf(t42_zfmisc_1,conjecture,( ! [ A :$i,B :$i,C :$i ] : ( ( subset @ A @ ( unordered_pair @ B @ C ) ) <=> ~ ( ( ~ ( ( qmltpeq @ A @ empty_set ) ) & ~ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) & ~ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) & ~ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ).
thf(l46_zfmisc_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( subset @ A @ ( unordered_pair @ B @ C ) ) <=> ~ ( ( ~ ( ( qmltpeq @ A @ empty_set ) ) & ~ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) & ~ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) & ~ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ).
%------------------------------------------------------------------------------
