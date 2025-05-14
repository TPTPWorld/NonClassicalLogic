
% propositions

% individual constants

% predicates
thf(in_type,type,(in : ($i>$i>$o))).
thf(disjoint_type,type,(disjoint : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET915+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ~ in(A,B) => disjoint(singleton(A),B)
% Version  : [Urb06] axioms : Especial.
% English  :
% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t56_zfmisc_1 [Urb06]
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
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(symmetry_r1_xboole_0,axiom,( ! [ A :$i,B :$i ] : ( ( disjoint @ A @ B ) => ( disjoint @ B @ A ) ) ) ).
thf(antisymmetry_r2_hidden,axiom,( ! [ A :$i,B :$i ] : ( ( in @ A @ B ) => ~ ( ( in @ B @ A ) ) ) ) ).
thf(rc1_xboole_0,axiom,( ? [ A :$i ] : ( empty @ A ) ) ).
thf(rc2_xboole_0,axiom,( ? [ A :$i ] : ~ ( ( empty @ A ) ) ) ).
thf(t56_zfmisc_1,conjecture,( ! [ A :$i,B :$i ] : ( ~ ( ( in @ A @ B ) ) => ( disjoint @ ( singleton @ A ) @ B ) ) ) ).
thf(l28_zfmisc_1,axiom,( ! [ A :$i,B :$i ] : ( ~ ( ( in @ A @ B ) ) => ( disjoint @ ( singleton @ A ) @ B ) ) ) ).
%------------------------------------------------------------------------------
