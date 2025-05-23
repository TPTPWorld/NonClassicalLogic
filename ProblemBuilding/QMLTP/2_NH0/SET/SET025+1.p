% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
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
%------------------------------------------------------------------------------
% File     : SET025+1 : TPTP v51.1
% Domain   : Set Theory
% Problem  : An ordered pair is a set
% Version  : [Qua92] axioms : Reduced & Augmented > Complete.
% English  :
% Refs     : [Qua92] Quaife (1992), Automated Deduction in von Neumann-Bern
%          : [BL+86] Boyer et al. (1986), Set Theory in First-Order Logic:
% Source   : [Qua92]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom-local,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom-local,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom-local,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(apply_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( apply @ A @ C ) @ ( apply @ B @ C ) ) ) ) ).
thf(apply_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( apply @ C @ A ) @ ( apply @ C @ B ) ) ) ) ).
thf(complement_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( complement @ A ) @ ( complement @ B ) ) ) ) ).
thf(compose_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( compose @ A @ C ) @ ( compose @ B @ C ) ) ) ) ).
thf(compose_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( compose @ C @ A ) @ ( compose @ C @ B ) ) ) ) ).
thf(cross_product_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( cross_product @ A @ C ) @ ( cross_product @ B @ C ) ) ) ) ).
thf(cross_product_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( cross_product @ C @ A ) @ ( cross_product @ C @ B ) ) ) ) ).
thf(domain_of_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( domain_of @ A ) @ ( domain_of @ B ) ) ) ) ).
thf(first_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( first @ A ) @ ( first @ B ) ) ) ) ).
thf(flip_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( flip @ A ) @ ( flip @ B ) ) ) ) ).
thf(image_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( image @ A @ C ) @ ( image @ B @ C ) ) ) ) ).
thf(image_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( image @ C @ A ) @ ( image @ C @ B ) ) ) ) ).
thf(intersection_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ).
thf(intersection_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ).
thf(inverse_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( inverse @ A ) @ ( inverse @ B ) ) ) ) ).
thf(ordered_pair_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( ordered_pair @ A @ C ) @ ( ordered_pair @ B @ C ) ) ) ) ).
thf(ordered_pair_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( ordered_pair @ C @ A ) @ ( ordered_pair @ C @ B ) ) ) ) ).
thf(power_class_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( power_class @ A ) @ ( power_class @ B ) ) ) ) ).
thf(range_of_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( range_of @ A ) @ ( range_of @ B ) ) ) ) ).
thf(restrict_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i,D :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( restrict @ A @ C @ D ) @ ( restrict @ B @ C @ D ) ) ) ) ).
thf(restrict_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i,D :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( restrict @ C @ A @ D ) @ ( restrict @ C @ B @ D ) ) ) ) ).
thf(restrict_substitution_3,axiom-local,( ! [ A :$i,B :$i,C :$i,D :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( restrict @ C @ D @ A ) @ ( restrict @ C @ D @ B ) ) ) ) ).
thf(rotate_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( rotate @ A ) @ ( rotate @ B ) ) ) ) ).
thf(second_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( second @ A ) @ ( second @ B ) ) ) ) ).
thf(singleton_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( singleton @ A ) @ ( singleton @ B ) ) ) ) ).
thf(successor_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( successor @ A ) @ ( successor @ B ) ) ) ) ).
thf(sum_class_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( sum_class @ A ) @ ( sum_class @ B ) ) ) ) ).
thf(union_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ).
thf(union_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ).
thf(unordered_pair_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ).
thf(unordered_pair_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ).
thf(disjoint_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( disjoint @ A @ C ) ) => ( disjoint @ B @ C ) ) ) ).
thf(disjoint_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( disjoint @ C @ A ) ) => ( disjoint @ C @ B ) ) ) ).
thf(function_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( function @ A ) ) => ( function @ B ) ) ) ).
thf(inductive_substitution_1,axiom-local,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( inductive @ A ) ) => ( inductive @ B ) ) ) ).
thf(member_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(subclass_substitution_1,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subclass @ A @ C ) ) => ( subclass @ B @ C ) ) ) ).
thf(subclass_substitution_2,axiom-local,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subclass @ C @ A ) ) => ( subclass @ C @ B ) ) ) ).
thf(subclass_defn,axiom-local,( ! [ X :$i,Y :$i ] : ( ( subclass @ X @ Y ) <=> ! [ U :$i ] : ( ( member @ U @ X ) => ( member @ U @ Y ) ) ) ) ).
thf(class_elements_are_sets,axiom-local,( ! [ X :$i ] : ( subclass @ X @ universal_class ) ) ).
thf(extensionality,axiom-local,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) <=> ( ( subclass @ X @ Y ) & ( subclass @ Y @ X ) ) ) ) ).
thf(unordered_pair_defn,axiom-local,( ! [ U :$i,X :$i,Y :$i ] : ( ( member @ U @ ( unordered_pair @ X @ Y ) ) <=> ( ( member @ U @ universal_class ) & ( ( qmltpeq @ U @ X ) | ( qmltpeq @ U @ Y ) ) ) ) ) ).
thf(unordered_pair_0,axiom-local,( ! [ X :$i,Y :$i ] : ( member @ ( unordered_pair @ X @ Y ) @ universal_class ) ) ).
thf(singleton_set_defn,axiom-local,( ! [ X :$i ] : ( qmltpeq @ ( singleton @ X ) @ ( unordered_pair @ X @ X ) ) ) ).
thf(ordered_pair_defn,axiom-local,( ! [ X :$i,Y :$i ] : ( qmltpeq @ ( ordered_pair @ X @ Y ) @ ( unordered_pair @ ( singleton @ X ) @ ( unordered_pair @ X @ ( singleton @ Y ) ) ) ) ) ).
thf(cross_product_defn,axiom-local,( ! [ U :$i,V :$i,X :$i,Y :$i ] : ( ( member @ ( ordered_pair @ U @ V ) @ ( cross_product @ X @ Y ) ) <=> ( ( member @ U @ X ) & ( member @ V @ Y ) ) ) ) ).
thf(cross_product_0,axiom-local,( ! [ X :$i,Y :$i,Z :$i ] : ( ( member @ Z @ ( cross_product @ X @ Y ) ) => ( qmltpeq @ Z @ ( ordered_pair @ ( first @ Z ) @ ( second @ Z ) ) ) ) ) ).
thf(element_relation_defn,axiom-local,( ! [ X :$i,Y :$i ] : ( ( member @ ( ordered_pair @ X @ Y ) @ element_relation ) <=> ( ( member @ Y @ universal_class ) & ( member @ X @ Y ) ) ) ) ).
thf(element_relation_0,axiom-local,( ( subclass @ element_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ).
thf(intersection_0,axiom-local,( ! [ X :$i,Y :$i,Z :$i ] : ( ( member @ Z @ ( intersection @ X @ Y ) ) <=> ( ( member @ Z @ X ) & ( member @ Z @ Y ) ) ) ) ).
thf(complement_0,axiom-local,( ! [ X :$i,Z :$i ] : ( ( member @ Z @ ( complement @ X ) ) <=> ( ( member @ Z @ universal_class ) & ~ ( ( member @ Z @ X ) ) ) ) ) ).
thf(restrict_defn,axiom-local,( ! [ X :$i,XR :$i,Y :$i ] : ( qmltpeq @ ( restrict @ XR @ X @ Y ) @ ( intersection @ XR @ ( cross_product @ X @ Y ) ) ) ) ).
thf(null_class_defn,axiom-local,( ! [ X :$i ] : ~ ( ( member @ X @ null_class ) ) ) ).
thf(domain_of_0,axiom-local,( ! [ X :$i,Z :$i ] : ( ( member @ Z @ ( domain_of @ X ) ) <=> ( ( member @ Z @ universal_class ) & ~ ( ( qmltpeq @ ( restrict @ X @ ( singleton @ Z ) @ universal_class ) @ null_class ) ) ) ) ) ).
thf(rotate_defn,axiom-local,( ! [ X :$i,U :$i,V :$i,W :$i ] : ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( rotate @ X ) ) <=> ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) & ( member @ ( ordered_pair @ ( ordered_pair @ V @ W ) @ U ) @ X ) ) ) ) ).
thf(rotate_0,axiom-local,( ! [ X :$i ] : ( subclass @ ( rotate @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ).
thf(flip_defn,axiom-local,( ! [ U :$i,V :$i,W :$i,X :$i ] : ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( flip @ X ) ) <=> ( ( member @ ( ordered_pair @ ( ordered_pair @ U @ V ) @ W ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) & ( member @ ( ordered_pair @ ( ordered_pair @ V @ U ) @ W ) @ X ) ) ) ) ).
thf(flip_0,axiom-local,( ! [ X :$i ] : ( subclass @ ( flip @ X ) @ ( cross_product @ ( cross_product @ universal_class @ universal_class ) @ universal_class ) ) ) ).
thf(union_defn,axiom-local,( ! [ X :$i,Y :$i,Z :$i ] : ( ( member @ Z @ ( union @ X @ Y ) ) <=> ( ( member @ Z @ X ) | ( member @ Z @ Y ) ) ) ) ).
thf(successor_defn,axiom-local,( ! [ X :$i ] : ( qmltpeq @ ( successor @ X ) @ ( union @ X @ ( singleton @ X ) ) ) ) ).
thf(successor_relation_defn1,axiom-local,( ( subclass @ successor_relation @ ( cross_product @ universal_class @ universal_class ) ) ) ).
thf(successor_relation_defn2,axiom-local,( ! [ X :$i,Y :$i ] : ( ( member @ ( ordered_pair @ X @ Y ) @ successor_relation ) <=> ( ( member @ X @ universal_class ) & ( member @ Y @ universal_class ) & ( qmltpeq @ ( successor @ X ) @ Y ) ) ) ) ).
thf(inverse_defn,axiom-local,( ! [ Y :$i ] : ( qmltpeq @ ( inverse @ Y ) @ ( domain_of @ ( flip @ ( cross_product @ Y @ universal_class ) ) ) ) ) ).
thf(range_of_defn,axiom-local,( ! [ Z :$i ] : ( qmltpeq @ ( range_of @ Z ) @ ( domain_of @ ( inverse @ Z ) ) ) ) ).
thf(image_defn,axiom-local,( ! [ X :$i,XR :$i ] : ( qmltpeq @ ( image @ XR @ X ) @ ( range_of @ ( restrict @ XR @ X @ universal_class ) ) ) ) ).
thf(inductive_defn,axiom-local,( ! [ X :$i ] : ( ( inductive @ X ) <=> ( ( member @ null_class @ X ) & ( subclass @ ( image @ successor_relation @ X ) @ X ) ) ) ) ).
thf(infinity,axiom-local,( ? [ X :$i ] : ( ( member @ X @ universal_class ) & ( inductive @ X ) & ! [ Y :$i ] : ( ( inductive @ Y ) => ( subclass @ X @ Y ) ) ) ) ).
thf(sum_class_defn,axiom-local,( ! [ U :$i,X :$i ] : ( ( member @ U @ ( sum_class @ X ) ) <=> ? [ Y :$i ] : ( ( member @ U @ Y ) & ( member @ Y @ X ) ) ) ) ).
thf(sum_class_0,axiom-local,( ! [ X :$i ] : ( ( member @ X @ universal_class ) => ( member @ ( sum_class @ X ) @ universal_class ) ) ) ).
thf(power_class_defn,axiom-local,( ! [ U :$i,X :$i ] : ( ( member @ U @ ( power_class @ X ) ) <=> ( ( member @ U @ universal_class ) & ( subclass @ U @ X ) ) ) ) ).
thf(power_class_0,axiom-local,( ! [ U :$i ] : ( ( member @ U @ universal_class ) => ( member @ ( power_class @ U ) @ universal_class ) ) ) ).
thf(compose_defn1,axiom-local,( ! [ XR :$i,YR :$i ] : ( subclass @ ( compose @ YR @ XR ) @ ( cross_product @ universal_class @ universal_class ) ) ) ).
thf(compose_defn2,axiom-local,( ! [ XR :$i,YR :$i,U :$i,V :$i ] : ( ( member @ ( ordered_pair @ U @ V ) @ ( compose @ YR @ XR ) ) <=> ( ( member @ U @ universal_class ) & ( member @ V @ ( image @ YR @ ( image @ YR @ ( singleton @ U ) ) ) ) ) ) ) ).
thf(function_defn,axiom-local,( ! [ XF :$i ] : ( ( function @ XF ) <=> ( ( subclass @ XF @ ( cross_product @ universal_class @ universal_class ) ) & ( subclass @ ( compose @ XF @ ( inverse @ XF ) ) @ identity_relation ) ) ) ) ).
thf(replacement,axiom-local,( ! [ X :$i,XF :$i ] : ( ( ( member @ X @ universal_class ) & ( function @ XF ) ) => ( member @ ( image @ XF @ X ) @ universal_class ) ) ) ).
thf(disjoint_defn,axiom-local,( ! [ X :$i,Y :$i ] : ( ( disjoint @ X @ Y ) <=> ! [ U :$i ] : ~ ( ( ( member @ U @ X ) & ( member @ U @ Y ) ) ) ) ) ).
thf(regularity,axiom-local,( ! [ X :$i ] : ( ~ ( ( qmltpeq @ X @ null_class ) ) => ? [ U :$i ] : ( ( member @ U @ universal_class ) & ( member @ U @ X ) & ( disjoint @ U @ X ) ) ) ) ).
thf(apply_defn,axiom-local,( ! [ XF :$i,Y :$i ] : ( qmltpeq @ ( apply @ XF @ Y ) @ ( sum_class @ ( image @ XF @ ( singleton @ Y ) ) ) ) ) ).
thf(choice,axiom-local,( ? [ XF :$i ] : ( ( function @ XF ) & ! [ Y :$i ] : ( ( member @ Y @ universal_class ) => ( ( qmltpeq @ Y @ null_class ) | ( member @ ( apply @ XF @ Y ) @ Y ) ) ) ) ) ).
thf(ordered_pair_is_set,conjecture,( ! [ X :$i,Y :$i ] : ( member @ ( ordered_pair @ X @ Y ) @ universal_class ) ) ).
%------------------------------------------------------------------------------
