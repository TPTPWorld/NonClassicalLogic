% semantics
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(set_difference_type,type,(set_difference : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE923+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET923+1 (from TPTP-v5.0.0)
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
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
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
thf ( subset_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ A @ C ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ C @ A ) ) ) ) => ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( fc1_xboole_0 , axiom , ( $box @ ( ( empty @ empty_set ) ) ) ) .
thf ( l4_zfmisc_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( subset @ A @ ( singleton @ B ) ) ) ) => ( ( $box @ ( ( qmltpeq @ A @ empty_set ) ) ) | ( $box @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ empty_set ) ) ) | ( $box @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) => ( $box @ ( ( subset @ A @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rc1_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ( empty @ A ) ) ) ) ) .
thf ( rc2_xboole_0 , axiom , ( ? [ A :$i ] : ( $box @ ( ~ ( ( $box @ ( ( empty @ A ) ) ) ) ) ) ) ) .
thf ( reflexivity_r1_tarski , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( subset @ A @ A ) ) ) ) ) ) ) ) .
thf ( t37_xboole_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ ( set_difference @ A @ B ) @ empty_set ) ) ) => ( $box @ ( ( subset @ A @ B ) ) ) ) ) & ( $box @ ( ( $box @ ( ( subset @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( set_difference @ A @ B ) @ empty_set ) ) ) ) ) ) ) ) ) ) ) .
thf ( t66_zfmisc_1 , conjecture , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ~ ( ( ( $box @ ( ( qmltpeq @ ( set_difference @ A @ ( singleton @ B ) ) @ empty_set ) ) ) & ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ A @ empty_set ) ) ) ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .