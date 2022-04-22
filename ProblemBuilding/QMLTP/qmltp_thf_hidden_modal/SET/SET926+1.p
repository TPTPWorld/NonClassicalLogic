% semantics
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(set_difference_type,type,(set_difference : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET926+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : difference(sgtn(A),B) = empty | difference(sgtn(A),B) = sgtn(A)
% Version  : [Urb06] axioms : Especial.
% English  :
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t69_zfmisc_1 [Urb06]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.25         0.25          v1.1
%             D   0.25         0.33         0.33          v1.1
%             T   0.25         0.33         0.33          v1.1
%             S4  0.25         0.33         0.33          v1.1
%             S5  0.25         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ) .
thf ( symmetry , axiom , ( ! [ X :$i , Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ) .
thf ( transitivity , axiom , ( ! [ X :$i , Y :$i , Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ) .
thf ( set_difference_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_difference @ A @ C ) @ ( set_difference @ B @ C ) ) ) ) ) .
thf ( set_difference_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( set_difference @ C @ A ) @ ( set_difference @ C @ B ) ) ) ) ) .
thf ( singleton_substitution_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) .
thf ( empty_substitution_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ) .
thf ( in_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ A @ C ) ) => ( in @ B @ C ) ) ) ) .
thf ( in_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( in @ C @ A ) ) => ( in @ C @ B ) ) ) ) .
thf ( antisymmetry_r2_hidden , axiom , ( ! [ A :$i , B :$i ] : ( ( in @ A @ B ) => ~ ( ( in @ B @ A ) ) ) ) ) .
thf ( fc1_xboole_0 , axiom , ( ( empty @ empty_set ) ) ) .
thf ( l34_zfmisc_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) <=> ~ ( ( in @ A @ B ) ) ) ) ) .
thf ( l36_zfmisc_1 , axiom , ( ! [ A :$i , B :$i ] : ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ empty_set ) <=> ( in @ A @ B ) ) ) ) .
thf ( rc1_xboole_0 , axiom , ( ? [ A :$i ] : ( empty @ A ) ) ) .
thf ( rc2_xboole_0 , axiom , ( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ) .
thf ( t69_zfmisc_1 , conjecture , ( ! [ A :$i , B :$i ] : ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ empty_set ) | ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) ) .
%------------------------------------------------------------------------------