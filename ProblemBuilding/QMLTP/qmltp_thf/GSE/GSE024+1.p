% semantics
% modalities

% propositions

% individual constants
thf(universal_class_type,type,(universal_class : ($i))).
thf(identity_relation_type,type,(identity_relation : ($i))).
thf(successor_relation_type,type,(successor_relation : ($i))).
thf(element_relation_type,type,(element_relation : ($i))).
thf(null_class_type,type,(null_class : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(inductive_type,type,(inductive : ($i>$o))).
thf(disjoint_type,type,(disjoint : ($i>$i>$o))).
thf(function_type,type,(function : ($i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subclass_type,type,(subclass : ($i>$i>$o))).

% functions
thf(singleton_type,type,(singleton : ($i>$i))).
thf(image_type,type,(image : ($i>$i>$i))).
thf(inverse_type,type,(inverse : ($i>$i))).
thf(rotate_type,type,(rotate : ($i>$i))).
thf(unordered_pair_type,type,(unordered_pair : ($i>$i>$i))).
thf(successor_type,type,(successor : ($i>$i))).
thf(apply_type,type,(apply : ($i>$i>$i))).
thf(power_class_type,type,(power_class : ($i>$i))).
thf(range_of_type,type,(range_of : ($i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).
thf(restrict_type,type,(restrict : ($i>$i>$i>$i))).
thf(second_type,type,(second : ($i>$i))).
thf(ordered_pair_type,type,(ordered_pair : ($i>$i>$i))).
thf(domain_of_type,type,(domain_of : ($i>$i))).
thf(sum_class_type,type,(sum_class : ($i>$i))).
thf(compose_type,type,(compose : ($i>$i>$i))).
thf(intersection_type,type,(intersection : ($i>$i>$i))).
thf(cross_product_type,type,(cross_product : ($i>$i>$i))).
thf(complement_type,type,(complement : ($i>$i))).
thf(flip_type,type,(flip : ($i>$i))).
thf(first_type,type,(first : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSE024+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET024+1 (from TPTP-v5.0.0)
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ X @ X ) ) ) ) ) ) .
thf ( symmetry , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( $box @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ) .
thf ( transitivity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) & ( $box @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( apply_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( apply @ A @ C ) @ ( apply @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( apply_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( apply @ C @ A ) @ ( apply @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( complement_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( complement @ A ) @ ( complement @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( compose_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( compose @ A @ C ) @ ( compose @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( compose_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( compose @ C @ A ) @ ( compose @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( cross_product_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( cross_product @ A @ C ) @ ( cross_product @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( cross_product_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( cross_product @ C @ A ) @ ( cross_product @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( domain_of_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( domain_of @ A ) @ ( domain_of @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( first_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( first @ A ) @ ( first @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( flip_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( flip @ A ) @ ( flip @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( image_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( image @ A @ C ) @ ( image @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( image_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( image @ C @ A ) @ ( image @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( intersection_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( inverse_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( inverse @ A ) @ ( inverse @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( ordered_pair_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( ordered_pair @ A @ C ) @ ( ordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( ordered_pair_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( ordered_pair @ C @ A ) @ ( ordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( power_class_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( power_class @ A ) @ ( power_class @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( range_of_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( range_of @ A ) @ ( range_of @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( restrict_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( restrict @ A @ C @ D ) @ ( restrict @ B @ C @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( restrict_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( restrict @ C @ A @ D ) @ ( restrict @ C @ B @ D ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( restrict_substitution_3 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ! [ D :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( restrict @ C @ D @ A ) @ ( restrict @ C @ D @ B ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rotate_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( rotate @ A ) @ ( rotate @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( second_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( second @ A ) @ ( second @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( singleton_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( successor_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( successor @ A ) @ ( successor @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( sum_class_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( sum_class @ A ) @ ( sum_class @ B ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( union_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) => ( $box @ ( ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( disjoint_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( disjoint @ A @ C ) ) ) ) => ( $box @ ( ( disjoint @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( disjoint_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( disjoint @ C @ A ) ) ) ) => ( $box @ ( ( disjoint @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( function_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( function @ A ) ) ) ) => ( $box @ ( ( function @ B ) ) ) ) ) ) ) ) ) ) .
thf ( inductive_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( inductive @ A ) ) ) ) => ( $box @ ( ( inductive @ B ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ A @ C ) ) ) ) => ( $box @ ( ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( member_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( member @ C @ A ) ) ) ) => ( $box @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subclass_substitution_1 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subclass @ A @ C ) ) ) ) => ( $box @ ( ( subclass @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subclass_substitution_2 , axiom , ( $box @ ( ! [ A :$i ] : ( $box @ ( ! [ B :$i ] : ( $box @ ( ! [ C :$i ] : ( $box @ ( ( ( $box @ ( ( qmltpeq @ A @ B ) ) ) & ( $box @ ( ( subclass @ C @ A ) ) ) ) => ( $box @ ( ( subclass @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( subclass_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( subclass @ X @ Y ) ) ) => ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( member @ U @ X ) ) ) => ( $box @ ( ( member @ U @ Y ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( member @ U @ X ) ) ) => ( $box @ ( ( member @ U @ Y ) ) ) ) ) ) ) => ( $box @ ( ( subclass @ X @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( class_elements_are_sets , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( subclass @ X @ universal_class ) ) ) ) ) ) .
thf ( extensionality , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( qmltpeq @ X @ Y ) ) ) => ( ( $box @ ( ( subclass @ X @ Y ) ) ) & ( $box @ ( ( subclass @ Y @ X ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( subclass @ X @ Y ) ) ) & ( $box @ ( ( subclass @ Y @ X ) ) ) ) => ( $box @ ( ( qmltpeq @ X @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_defn , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( member @ U @ ( unordered_pair @ X @ Y ) ) ) ) => ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( ( $box @ ( ( qmltpeq @ U @ X ) ) ) | ( $box @ ( ( qmltpeq @ U @ Y ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( ( $box @ ( ( qmltpeq @ U @ X ) ) ) | ( $box @ ( ( qmltpeq @ U @ Y ) ) ) ) ) => ( $box @ ( ( member @ U @ ( unordered_pair @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( unordered_pair_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( member @ ( unordered_pair @ X @ Y ) @ universal_class ) ) ) ) ) ) ) ) .
thf ( singleton_set_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ ( singleton @ X ) @ ( unordered_pair @ X @ X ) ) ) ) ) ) ) .
thf ( ordered_pair_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( qmltpeq @ ( ordered_pair @ X @ Y ) @ ( unordered_pair @ ( singleton @ X ) @ ( unordered_pair @ X @ ( singleton @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( cross_product_defn , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) ) ) => ( ( $box @ ( ( member @ U @ X ) ) ) & ( $box @ ( ( member @ V @ Y ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ U @ X ) ) ) & ( $box @ ( ( member @ V @ Y ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( cross_product_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( $box @ ( ( member @ Z @ ( cross_product @ X @ Y ) ) ) ) => ( $box @ ( ( qmltpeq @ Z @ ( ordered_pair @ ( first @ Z ) @ ( second @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( element_relation_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) ) ) => ( ( $box @ ( ( member @ Y @ universal_class ) ) ) & ( $box @ ( ( member @ X @ Y ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ Y @ universal_class ) ) ) & ( $box @ ( ( member @ X @ Y ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) ) ) ) ) ) ) ) ) ) ) .
thf ( element_relation_0 , axiom , ( $box @ ( ( subclass @ element_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ) ) .
thf ( intersection_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( ( $box @ ( ( $box @ ( ( member @ Z @ ( intersection @ X @ Y ) ) ) ) => ( ( $box @ ( ( member @ Z @ X ) ) ) & ( $box @ ( ( member @ Z @ Y ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ Z @ X ) ) ) & ( $box @ ( ( member @ Z @ Y ) ) ) ) => ( $box @ ( ( member @ Z @ ( intersection @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( complement_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Z :$i ] : ( ( $box @ ( ( $box @ ( ( member @ Z @ ( complement @ X ) ) ) ) => ( ( $box @ ( ( member @ Z @ universal_class ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ Z @ X ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ Z @ universal_class ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( member @ Z @ X ) ) ) ) ) ) ) => ( $box @ ( ( member @ Z @ ( complement @ X ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( restrict_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ XR :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( qmltpeq @ ( restrict @ XR @ X @ Y ) @ ( intersection @ XR @ ( cross_product @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( null_class_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ~ ( ( $box @ ( ( member @ X @ null_class ) ) ) ) ) ) ) ) ) .
thf ( domain_of_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Z :$i ] : ( ( $box @ ( ( $box @ ( ( member @ Z @ ( domain_of @ X ) ) ) ) => ( ( $box @ ( ( member @ Z @ universal_class ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ Z @ universal_class ) ) ) & ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) ) ) => ( $box @ ( ( member @ Z @ ( domain_of @ X ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rotate_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) ) ) => ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) & ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) & ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( rotate_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( subclass @ ( rotate @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ) ) ) .
thf ( flip_defn , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) ) ) => ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) & ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) & ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( flip_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( subclass @ ( flip @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ) ) ) ) .
thf ( union_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ! [ Z :$i ] : ( ( $box @ ( ( $box @ ( ( member @ Z @ ( union @ X @ Y ) ) ) ) => ( ( $box @ ( ( member @ Z @ X ) ) ) | ( $box @ ( ( member @ Z @ Y ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ Z @ X ) ) ) | ( $box @ ( ( member @ Z @ Y ) ) ) ) => ( $box @ ( ( member @ Z @ ( union @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( successor_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( qmltpeq @ ( successor @ X ) @ ( union @ X @ ( singleton @ X ) ) ) ) ) ) ) ) .
thf ( successor_relation_defn1 , axiom , ( $box @ ( ( subclass @ successor_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ) ) .
thf ( successor_relation_defn2 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) ) ) => ( ( $box @ ( ( member @ X @ universal_class ) ) ) & ( ( $box @ ( ( member @ Y @ universal_class ) ) ) & ( $box @ ( ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ X @ universal_class ) ) ) & ( ( $box @ ( ( member @ Y @ universal_class ) ) ) & ( $box @ ( ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) ) ) ) ) ) ) ) ) ) ) .
thf ( inverse_defn , axiom , ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( qmltpeq @ ( inverse @ Y ) @ ( domain_of @ ( flip @ ( cross_product @ Y @ universal_class ) ) ) ) ) ) ) ) ) .
thf ( range_of_defn , axiom , ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( qmltpeq @ ( range_of @ Z ) @ ( domain_of @ ( inverse @ Z ) ) ) ) ) ) ) ) .
thf ( image_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ XR :$i ] : ( $box @ ( ( qmltpeq @ ( image @ XR @ X ) @ ( range_of @ ( restrict @ XR @ X @ universal_class ) ) ) ) ) ) ) ) ) ) .
thf ( inductive_defn , axiom , ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( inductive @ X ) ) ) => ( ( $box @ ( ( member @ null_class @ X ) ) ) & ( $box @ ( ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ null_class @ X ) ) ) & ( $box @ ( ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) ) => ( $box @ ( ( inductive @ X ) ) ) ) ) ) ) ) ) .
thf ( infinity , axiom , ( ? [ X :$i ] : ( ( $box @ ( ( member @ X @ universal_class ) ) ) & ( ( $box @ ( ( inductive @ X ) ) ) & ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( inductive @ Y ) ) ) => ( $box @ ( ( subclass @ X @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( sum_class_defn , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( member @ U @ ( sum_class @ X ) ) ) ) => ( ? [ Y :$i ] : ( ( $box @ ( ( member @ U @ Y ) ) ) & ( $box @ ( ( member @ Y @ X ) ) ) ) ) ) ) & ( $box @ ( ( ? [ Y :$i ] : ( ( $box @ ( ( member @ U @ Y ) ) ) & ( $box @ ( ( member @ Y @ X ) ) ) ) ) => ( $box @ ( ( member @ U @ ( sum_class @ X ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( sum_class_0 , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( member @ X @ universal_class ) ) ) => ( $box @ ( ( member @ ( sum_class @ X ) @ universal_class ) ) ) ) ) ) ) ) .
thf ( power_class_defn , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( member @ U @ ( power_class @ X ) ) ) ) => ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( $box @ ( ( subclass @ U @ X ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( $box @ ( ( subclass @ U @ X ) ) ) ) => ( $box @ ( ( member @ U @ ( power_class @ X ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( power_class_0 , axiom , ( $box @ ( ! [ U :$i ] : ( $box @ ( ( $box @ ( ( member @ U @ universal_class ) ) ) => ( $box @ ( ( member @ ( power_class @ U ) @ universal_class ) ) ) ) ) ) ) ) .
thf ( compose_defn1 , axiom , ( $box @ ( ! [ XR :$i ] : ( $box @ ( ! [ YR :$i ] : ( $box @ ( ( subclass @ ( compose @ YR @ XR ) @ ( cross_product @ universal_class @ universal_class ) ) ) ) ) ) ) ) ) .
thf ( compose_defn2 , axiom , ( $box @ ( ! [ XR :$i ] : ( $box @ ( ! [ YR :$i ] : ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( ( $box @ ( ( $box @ ( ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) ) ) => ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( $box @ ( ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( $box @ ( ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) ) => ( $box @ ( ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
thf ( function_defn , axiom , ( $box @ ( ! [ XF :$i ] : ( ( $box @ ( ( $box @ ( ( function @ XF ) ) ) => ( ( $box @ ( ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) ) ) & ( $box @ ( ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) ) ) & ( $box @ ( ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) ) => ( $box @ ( ( function @ XF ) ) ) ) ) ) ) ) ) .
thf ( replacement , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ XF :$i ] : ( $box @ ( ( ( $box @ ( ( member @ X @ universal_class ) ) ) & ( $box @ ( ( function @ XF ) ) ) ) => ( $box @ ( ( member @ ( image @ XF @ X ) @ universal_class ) ) ) ) ) ) ) ) ) ) .
thf ( disjoint_defn , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( disjoint @ X @ Y ) ) ) => ( $box @ ( ! [ U :$i ] : ( $box @ ( ~ ( ( ( $box @ ( ( member @ U @ X ) ) ) & ( $box @ ( ( member @ U @ Y ) ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ U :$i ] : ( $box @ ( ~ ( ( ( $box @ ( ( member @ U @ X ) ) ) & ( $box @ ( ( member @ U @ Y ) ) ) ) ) ) ) ) ) => ( $box @ ( ( disjoint @ X @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( regularity , axiom , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ~ ( ( $box @ ( ( qmltpeq @ X @ null_class ) ) ) ) ) ) => ( ? [ U :$i ] : ( ( $box @ ( ( member @ U @ universal_class ) ) ) & ( ( $box @ ( ( member @ U @ X ) ) ) & ( $box @ ( ( disjoint @ U @ X ) ) ) ) ) ) ) ) ) ) ) .
thf ( apply_defn , axiom , ( $box @ ( ! [ XF :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( qmltpeq @ ( apply @ XF @ Y ) @ ( sum_class @ ( image @ XF @ ( singleton @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( choice , axiom , ( ? [ XF :$i ] : ( ( $box @ ( ( function @ XF ) ) ) & ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( member @ Y @ universal_class ) ) ) => ( ( $box @ ( ( qmltpeq @ Y @ null_class ) ) ) | ( $box @ ( ( member @ ( apply @ XF @ Y ) @ Y ) ) ) ) ) ) ) ) ) ) ) .
thf ( set_in_its_singleton , conjecture , ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( member @ X @ universal_class ) ) ) => ( $box @ ( ( member @ X @ ( singleton @ X ) ) ) ) ) ) ) ) ) .