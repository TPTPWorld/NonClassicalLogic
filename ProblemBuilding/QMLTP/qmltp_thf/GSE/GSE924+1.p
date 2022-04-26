% semantics
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(in_type,type,(in : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(set_difference_type,type,(set_difference : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE924+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET924+1 (from TPTP-v5.0.0)
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
%             D   0.25         0.33         0.33          v1.1
%             T   0.25         0.50         0.33          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( set_difference_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( set_difference @ A @ C ) @ ( set_difference @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( set_difference_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( set_difference @ C @ A ) @ ( set_difference @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( singleton_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( empty_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( empty @ A ) ) ) ) => ( $box @ ( ( empty @ B ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ A @ C ) ) ) ) => ( $box @ ( ( in @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( in_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( in @ C @ A ) ) ) ) => ( $box @ ( ( in @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( antisymmetry_r2_hidden , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( in @ A @ B ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( in @ B @ A ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rc1_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ( empty @ A ) ) ) ) ) .
thf ( rc2_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ~ ( ( $box @ ( ( empty @ A ) ) ) ) ) ) ) ) .
thf ( t67_zfmisc_1 , conjecture , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) => ( $box @ ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( l34_zfmisc_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ~ ( ( $box @ ( ( in @ A @ B ) ) ) ) ) ) => ( $box @ ( ( qmltpeq @ ( set_difference @ ( singleton @ A ) @ B ) @ ( singleton @ A ) ) ) ) ) ) ) ) ) ) ) ) .