% semantics
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(equal_set_type,type,(equal_set : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(product_type,type,(product : ($i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).
thf(intersection_type,type,(intersection : ($i>$i>$i))).
thf(difference_type,type,(difference : ($i>$i>$i))).
thf(sum_type,type,(sum : ($i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).
thf(power_set_type,type,(power_set : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE013+4 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET013+4 (from TPTP-v5.0.0)
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
%             T   Unsolved     Unsolved     Theorem       v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Unsolved     Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         0.83          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  1.00         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( difference_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( difference_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( power_set_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( power_set @ A ) @ ( power_set @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( product_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( product @ A ) @ ( product @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( singleton_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( sum_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( sum @ A ) @ ( sum @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( equal_set_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( equal_set @ A @ C ) ) ) ) => ( $box @ ( ( equal_set @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( equal_set_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( equal_set @ C @ A ) ) ) ) => ( $box @ ( ( equal_set @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ A @ C ) ) ) ) => ( $box @ ( ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ C @ A ) ) ) ) => ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ A @ C ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ C @ A ) ) ) ) => ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_0 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( subset @ A @ B ) ) ) => ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( member @ X @ A ) ) ) => ( $box @ ( ( member @ X @ B ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( member @ X @ A ) ) ) => ( $box @ ( ( member @ X @ B ) ) ) ) ) ) ) => ( $box @ ( ( subset @ A @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( equal_set_0 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( equal_set @ A @ B ) ) ) => ( ( $box @ ( ( subset @ A @ B ) ) ) & ( $box @ ( ( subset @ B @ A ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( subset @ A @ B ) ) ) & ( $box @ ( ( subset @ B @ A ) ) ) ) => ( $box @ ( ( equal_set @ A @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( power_set_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( power_set @ A ) ) ) ) => ( $box @ ( ( subset @ X @ A ) ) ) ) ) & ( $box @ ( ( $box @ ( ( subset @ X @ A ) ) ) => ( $box @ ( ( member @ X @ ( power_set @ A ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( intersection @ A @ B ) ) ) ) => ( ( $box @ ( ( member @ X @ A ) ) ) & ( $box @ ( ( member @ X @ B ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ X @ A ) ) ) & ( $box @ ( ( member @ X @ B ) ) ) ) => ( $box @ ( ( member @ X @ ( intersection @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( union @ A @ B ) ) ) ) => ( ( $box @ ( ( member @ X @ A ) ) ) | ( $box @ ( ( member @ X @ B ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ X @ A ) ) ) | ( $box @ ( ( member @ X @ B ) ) ) ) => ( $box @ ( ( member @ X @ ( union @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( empty_set_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ~ ( ( $box @ ( ( member @ X @ empty_set ) ) ) ) ) ) ) ) ) .
thf ( difference_0 , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ E :$i ] : ( ( $box @ ( ( $box @ ( ( member @ B @ ( difference @ E @ A ) ) ) ) => ( ( $box @ ( ( member @ B @ E ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ B @ A ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ B @ E ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ B @ A ) ) ) ) ) ) ) => ( $box @ ( ( member @ B @ ( difference @ E @ A ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( singleton_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( singleton @ A ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ A ) ) ) ) ) & ( $box @ ( ( $box @ ( ( qmltpeq @ X @ A ) ) ) => ( $box @ ( ( member @ X @ ( singleton @ A ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( unordered_pair @ A @ B ) ) ) ) => ( ( $box @ ( ( qmltpeq @ X @ A ) ) ) | ( $box @ ( ( qmltpeq @ X @ B ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ A ) ) ) | ( $box @ ( ( qmltpeq @ X @ B ) ) ) ) => ( $box @ ( ( member @ X @ ( unordered_pair @ A @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( sum_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( sum @ A ) ) ) ) => ( ? [ Y :$i ] : ( ( $box @ ( ( member @ Y @ A ) ) ) & ( $box @ ( ( member @ X @ Y ) ) ) ) ) ) ) & ( $box @ ( ( ? [ Y :$i ] : ( ( $box @ ( ( member @ Y @ A ) ) ) & ( $box @ ( ( member @ X @ Y ) ) ) ) ) => ( $box @ ( ( member @ X @ ( sum @ A ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( product_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ A :$i ] : ( ( $box @ ( ( $box @ ( ( member @ X @ ( product @ A ) ) ) ) => ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( member @ Y @ A ) ) ) => ( $box @ ( ( member @ X @ Y ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( member @ Y @ A ) ) ) => ( $box @ ( ( member @ X @ Y ) ) ) ) ) ) ) => ( $box @ ( ( member @ X @ ( product @ A ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( thI06 , conjecture , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( equal_set @ ( intersection @ A @ B ) @ ( intersection @ B @ A ) ) ) ) ) ) ) ) ) .