% semantics
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSE063+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET063+3 (from TPTP-v5.0.0)
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
%             D   Theorem      Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.75         0.50         0.50          v1.1
%             S5  0.75         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( empty_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( empty @ A ) ) ) ) => ( $box @ ( ( empty @ B ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ A @ C ) ) ) ) => ( $box @ ( ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ C @ A ) ) ) ) => ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ A @ C ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ C @ A ) ) ) ) => ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( empty_set_subset , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ( subset @ empty_set @ B ) ) ) ) ) ) .
thf ( empty_set_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ~ ( ( $box @ ( ( member @ B @ empty_set ) ) ) ) ) ) ) ) ) .
thf ( subset_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( ( $box @ ( ( $box @ ( ( subset @ B @ C ) ) ) => ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) .
thf ( equal_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ B @ C ) ) ) => ( ( $box @ ( ( subset @ B @ C ) ) ) & ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( subset @ B @ C ) ) ) & ( $box @ ( ( subset @ C @ B ) ) ) ) => ( $box @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) ) ) ) .
thf ( reflexivity_of_subset , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ( subset @ B @ B ) ) ) ) ) ) .
thf ( empty_defn , axiom , ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( empty @ B ) ) ) => ( $box @ ( ! [ C :$i ] : ( $box @ ( ~ ( ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ C :$i ] : ( $box @ ( ~ ( ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) => ( $box @ ( ( empty @ B ) ) ) ) ) ) ) ) ) .
thf ( prove_subset_of_empty_set_is_empty_set , conjecture , ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( subset @ B @ empty_set ) ) ) => ( $box @ ( ( qmltpeq @ B @ empty_set ) ) ) ) ) ) ) ) .