% semantics
% modalities

% propositions

% individual constants

% predicates
thf(in_type,type,(in : ($i>$i>$o))).
thf(disjoint_type,type,(disjoint : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE915+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET915+1 (from TPTP-v5.0.0)
% Version  : Especial.
% English  :
% Refs     : [TPTP] G. Sutcliffe. TPTP library v2.7.0. http://www.tptp.org
%            [SS98] G. Sutcliffe, C.B. Suttner. The TPTP Problem Library:
%                   CNF Release v1.2.1. Journal of Automated Reasoning,
%                   21(2):177--203, 1998.
%            [Goe69] K. Goedel. An interpretation of the intuitionistic
%                    sentential logic. In J. Hintikka, Ed., The Philosophy
%                    of Mathematics, pp~128--129. Oxford University Press,
%                    1969.
% Source   : [TPTP], [Goe69]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.25         0.25          v1.1
%             D   0.00         0.17         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.25         0.50         0.50          v1.1
%             S5  0.25         0.40         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( symmetry_r1_xboole_0 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( disjoint @ A @ B ) ) ) => ( $box @ ( ( disjoint @ B @ A ) ) ) ) ) ) ) ) ) ) .
thf ( antisymmetry_r2_hidden , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( in @ A @ B ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( in @ B @ A ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rc1_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ( empty @ A ) ) ) ) ) .
thf ( rc2_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ~ ( ( $box @ ( ( empty @ A ) ) ) ) ) ) ) ) .
thf ( t56_zfmisc_1 , conjecture , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) => ( $box @ ( ( disjoint @ ( singleton @ A ) @ B ) ) ) ) ) ) ) ) ) ) .
thf ( l28_zfmisc_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) => ( $box @ ( ( disjoint @ ( singleton @ A ) @ B ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------