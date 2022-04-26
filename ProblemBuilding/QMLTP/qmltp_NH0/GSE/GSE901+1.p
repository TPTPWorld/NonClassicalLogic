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
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE901+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET901+1 (from TPTP-v5.0.0)
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
%             K   0.50         0.50         0.50          v1.1
%             D   0.50         0.50         0.50          v1.1
%             T   0.50         0.50         0.50          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(singleton_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ).
thf(unordered_pair_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(unordered_pair_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(empty_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( empty @ A ) ) ) ) => ( {$box} @ ( ( empty @ B ) ) ) ) ) ) ) ) ) ).
thf(subset_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( subset @ A @ C ) ) ) ) => ( {$box} @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(subset_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( subset @ C @ A ) ) ) ) => ( {$box} @ ( ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(commutativity_k2_tarski,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( qmltpeq @ ( unordered_pair @ A @ B ) @ ( unordered_pair @ B @ A ) ) ) ) ) ) ) ) ).
thf(reflexivity_r1_tarski,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( subset @ A @ A ) ) ) ) ) ) ) ).
thf(fc1_xboole_0,axiom,( {$box} @ ( ( empty @ empty_set ) ) ) ).
thf(rc1_xboole_0,axiom,( ? [ A :$i ] : ( {$box} @ ( ( empty @ A ) ) ) ) ).
thf(rc2_xboole_0,axiom,( ? [ A :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( empty @ A ) ) ) ) ) ) ) ).
thf(t42_zfmisc_1,conjecture,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( subset @ A @ ( unordered_pair @ B @ C ) ) ) ) => ( {$box} @ ( ~ ( ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ empty_set ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ~ ( ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ empty_set ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( ( subset @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(l46_zfmisc_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( subset @ A @ ( unordered_pair @ B @ C ) ) ) ) => ( {$box} @ ( ~ ( ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ empty_set ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ~ ( ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ empty_set ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ B ) ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( singleton @ C ) ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( ( subset @ A @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ).
