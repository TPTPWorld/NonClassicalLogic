% semantics
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(set_union2_type,type,(set_union2 : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET904+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : subset(set_union2(singleton(A),B),B) => in(A,B)
% Version  : [Urb06] axioms : Especial.
% English  :
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t45_zfmisc_1 [Urb06]
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
thf ( reflexivity , axiom , ( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ) .
thf ( symmetry , axiom , ( ! [ X :$i , Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ) .
thf ( transitivity , axiom , ( ! [ X :$i , Y :$i , Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ) .
thf ( set_union2_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_union2 @ A @ C ) @ ( set_union2 @ B @ C ) ) ) ) ) .
thf ( set_union2_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_union2 @ C @ A ) @ ( set_union2 @ C @ B ) ) ) ) ) .
thf ( singleton_substitution_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) .
thf ( empty_substitution_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ) .
thf ( in_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ A @ C ) ) => ( in @ B @ C ) ) ) ) .
thf ( in_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ C @ A ) ) => ( in @ C @ B ) ) ) ) .
thf ( subset_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ) .
thf ( fc2_xboole_0 , axiom , ( ! [ A :$i , B :$i ] : ( ~ ( ( empty @ A ) ) => ~ ( ( empty @ ( set_union2 @ A @ B ) ) ) ) ) ) .
thf ( fc3_xboole_0 , axiom , ( ! [ A :$i , B :$i ] : ( ~ ( ( empty @ A ) ) => ~ ( ( empty @ ( set_union2 @ B @ A ) ) ) ) ) ) .
thf ( commutativity_k2_xboole_0 , axiom , ( ! [ A :$i , B :$i ] : ( qmltpeq @ ( set_union2 @ A @ B ) @ ( set_union2 @ B @ A ) ) ) ) .
thf ( idempotence_k2_xboole_0 , axiom , ( ! [ A :$i , B :$i ] : ( qmltpeq @ ( set_union2 @ A @ A ) @ A ) ) ) .
thf ( reflexivity_r1_tarski , axiom , ( ! [ A :$i , B :$i ] : ( subset @ A @ A ) ) ) .
thf ( antisymmetry_r2_hidden , axiom , ( ! [ A :$i , B :$i ] : ( ( in @ A @ B ) => ~ ( ( in @ B @ A ) ) ) ) ) .
thf ( rc1_xboole_0 , axiom , ( ? [ A :$i ] : ( empty @ A ) ) ) .
thf ( rc2_xboole_0 , axiom , ( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ) .
thf ( t45_zfmisc_1 , conjecture , ( ! [ A :$i , B :$i ] : ( ( subset @ ( set_union2 @ ( singleton @ A ) @ B ) @ B ) => ( in @ A @ B ) ) ) ) .
thf ( l21_zfmisc_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( subset @ ( set_union2 @ ( singleton @ A ) @ B ) @ B ) => ( in @ A @ B ) ) ) ) .
%------------------------------------------------------------------------------