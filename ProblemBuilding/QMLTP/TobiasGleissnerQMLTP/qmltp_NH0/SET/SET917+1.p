
% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(disjoint_type,type,(disjoint : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(set_intersection2_type,type,(set_intersection2 : ($i>$i>$i))).
thf(singleton_type,type,(singleton : ($i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET917+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : disjoint(sgtn(A),B) | intersection(sgtn(A),B) = sgtn(A)
% Version  : [Urb06] axioms : Especial.
% English  :
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t58_zfmisc_1 [Urb06]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.25          v1.1
%             D   0.75         0.67         0.33          v1.1
%             T   0.75         0.67         0.50          v1.1
%             S4  0.75         0.67         0.50          v1.1
%             S5  0.75         0.60         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(set_intersection2_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ A @ C ) @ ( set_intersection2 @ B @ C ) ) ) ) ).
thf(set_intersection2_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ C @ A ) @ ( set_intersection2 @ C @ B ) ) ) ) ).
thf(singleton_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ).
thf(disjoint_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( disjoint @ A @ C ) ) => ( disjoint @ B @ C ) ) ) ).
thf(disjoint_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( disjoint @ C @ A ) ) => ( disjoint @ C @ B ) ) ) ).
thf(empty_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ).
thf(in_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ A @ C ) ) => ( in @ B @ C ) ) ) ).
thf(in_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ C @ A ) ) => ( in @ C @ B ) ) ) ).
thf(antisymmetry_r2_hidden,axiom,( ! [ A :$i,B :$i ] : ( ( in @ A @ B ) => ~ ( ( in @ B @ A ) ) ) ) ).
thf(commutativity_k3_xboole_0,axiom,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( set_intersection2 @ A @ B ) @ ( set_intersection2 @ B @ A ) ) ) ).
thf(idempotence_k3_xboole_0,axiom,( ! [ A :$i,B :$i ] : ( qmltpeq @ ( set_intersection2 @ A @ A ) @ A ) ) ).
thf(l28_zfmisc_1,axiom,( ! [ A :$i,B :$i ] : ( ~ ( ( in @ A @ B ) ) => ( disjoint @ ( singleton @ A ) @ B ) ) ) ).
thf(l32_zfmisc_1,axiom,( ! [ A :$i,B :$i ] : ( ( in @ A @ B ) => ( qmltpeq @ ( set_intersection2 @ B @ ( singleton @ A ) ) @ ( singleton @ A ) ) ) ) ).
thf(rc1_xboole_0,axiom,( ? [ A :$i ] : ( empty @ A ) ) ).
thf(rc2_xboole_0,axiom,( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ).
thf(symmetry_r1_xboole_0,axiom,( ! [ A :$i,B :$i ] : ( ( disjoint @ A @ B ) => ( disjoint @ B @ A ) ) ) ).
thf(t58_zfmisc_1,conjecture,( ! [ A :$i,B :$i ] : ( ( disjoint @ ( singleton @ A ) @ B ) | ( qmltpeq @ ( set_intersection2 @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) ).
%------------------------------------------------------------------------------
