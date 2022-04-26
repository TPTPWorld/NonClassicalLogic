% semantics
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(intersection_type,type,(intersection : ($i>$i>$i))).
thf(difference_type,type,(difference : ($i>$i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE010+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET010+3 (from TPTP-v5.0.0)
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
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
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
thf ( union_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ A @ C ) ) ) ) => ( $box @ ( ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ C @ A ) ) ) ) => ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ A @ C ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subset @ C @ A ) ) ) ) => ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( ( $box @ ( ( $box @ ( ( member @ D @ ( union @ B @ C ) ) ) ) => ( ( $box @ ( ( member @ D @ B ) ) ) | ( $box @ ( ( member @ D @ C ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ D @ B ) ) ) | ( $box @ ( ( member @ D @ C ) ) ) ) => ( $box @ ( ( member @ D @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( ( $box @ ( ( $box @ ( ( member @ D @ ( intersection @ B @ C ) ) ) ) => ( ( $box @ ( ( member @ D @ B ) ) ) & ( $box @ ( ( member @ D @ C ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ D @ B ) ) ) & ( $box @ ( ( member @ D @ C ) ) ) ) => ( $box @ ( ( member @ D @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( difference_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( ( $box @ ( ( $box @ ( ( member @ D @ ( difference @ B @ C ) ) ) ) => ( ( $box @ ( ( member @ D @ B ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ D @ B ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) => ( $box @ ( ( member @ D @ ( difference @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_subset , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( ( $box @ ( ( subset @ B @ C ) ) ) & ( $box @ ( ( subset @ D @ C ) ) ) ) => ( $box @ ( ( subset @ ( union @ B @ D ) @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_is_subset , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( subset @ ( intersection @ B @ C ) @ B ) ) ) ) ) ) ) ) .
thf ( subset_difference , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( subset @ B @ C ) ) ) => ( $box @ ( ( subset @ ( difference @ D @ C ) @ ( difference @ D @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( equal_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ B @ C ) ) ) => ( ( $box @ ( ( subset @ B @ C ) ) ) & ( $box @ ( ( subset @ C @ B ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( subset @ B @ C ) ) ) & ( $box @ ( ( subset @ C @ B ) ) ) ) => ( $box @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) ) ) ) .
thf ( commutativity_of_union , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) .
thf ( commutativity_of_intersection , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( qmltpeq @ ( intersection @ B @ C ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ) .
thf ( subset_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( ( $box @ ( ( $box @ ( ( subset @ B @ C ) ) ) => ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) ) ) => ( $box @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) .
thf ( reflexivity_of_subset , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ( subset @ B @ B ) ) ) ) ) ) .
thf ( equal_member_defn , axiom , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ B @ C ) ) ) => ( $box @ ( ! [ D :$i ] : ( ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) & ( $box @ ( ( $box @ ( ( member @ D @ C ) ) ) => ( $box @ ( ( member @ D @ B ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ D :$i ] : ( ( $box @ ( ( $box @ ( ( member @ D @ B ) ) ) => ( $box @ ( ( member @ D @ C ) ) ) ) ) & ( $box @ ( ( $box @ ( ( member @ D @ C ) ) ) => ( $box @ ( ( member @ D @ B ) ) ) ) ) ) ) ) => ( $box @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) ) ) ) .
thf ( prove_difference_and_intersection_and_union , conjecture , ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( qmltpeq @ ( difference @ B @ ( intersection @ C @ D ) ) @ ( union @ ( difference @ B @ C ) @ ( difference @ B @ D ) ) ) ) ) ) ) ) ) ) ) ) .