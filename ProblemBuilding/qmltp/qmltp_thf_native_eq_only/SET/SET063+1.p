% semantics

% modalities

% propositions

% individual constants

thf(universal_class_type,type,(universal_class:($i))).
thf(identity_relation_type,type,(identity_relation:($i))).
thf(successor_relation_type,type,(successor_relation:($i))).
thf(element_relation_type,type,(element_relation:($i))).
thf(null_class_type,type,(null_class:($i))).
% predicates

thf(inductive_type,type,(inductive:($i>$o))).
thf(disjoint_type,type,(disjoint:($i>$i>$o))).
thf(function_type,type,(function:($i>$o))).
thf(member_type,type,(member:($i>$i>$o))).
thf(subclass_type,type,(subclass:($i>$i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(image_type,type,(image:($i>$i>$i))).
thf(inverse_type,type,(inverse:($i>$i))).
thf(rotate_type,type,(rotate:($i>$i))).
thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
thf(successor_type,type,(successor:($i>$i))).
thf(apply_type,type,(apply:($i>$i>$i))).
thf(power_class_type,type,(power_class:($i>$i))).
thf(range_of_type,type,(range_of:($i>$i))).
thf(union_type,type,(union:($i>$i>$i))).
thf(restrict_type,type,(restrict:($i>$i>$i>$i))).
thf(second_type,type,(second:($i>$i))).
thf(ordered_pair_type,type,(ordered_pair:($i>$i>$i))).
thf(domain_of_type,type,(domain_of:($i>$i))).
thf(sum_class_type,type,(sum_class:($i>$i))).
thf(compose_type,type,(compose:($i>$i>$i))).
thf(intersection_type,type,(intersection:($i>$i>$i))).
thf(cross_product_type,type,(cross_product:($i>$i>$i))).
thf(complement_type,type,(complement:($i>$i))).
thf(flip_type,type,(flip:($i>$i))).
thf(first_type,type,(first:($i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET063+1 : QMLTP v1.1

% Domain   : Set Theory

% Problem  : If X is a subset of the empty set, then X is the empty set

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

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom apply_substitution_1
% removed axiom apply_substitution_2
% removed axiom complement_substitution_1
% removed axiom compose_substitution_1
% removed axiom compose_substitution_2
% removed axiom cross_product_substitution_1
% removed axiom cross_product_substitution_2
% removed axiom domain_of_substitution_1
% removed axiom first_substitution_1
% removed axiom flip_substitution_1
% removed axiom image_substitution_1
% removed axiom image_substitution_2
% removed axiom intersection_substitution_1
% removed axiom intersection_substitution_2
% removed axiom inverse_substitution_1
% removed axiom ordered_pair_substitution_1
% removed axiom ordered_pair_substitution_2
% removed axiom power_class_substitution_1
% removed axiom range_of_substitution_1
% removed axiom restrict_substitution_1
% removed axiom restrict_substitution_2
% removed axiom restrict_substitution_3
% removed axiom rotate_substitution_1
% removed axiom second_substitution_1
% removed axiom singleton_substitution_1
% removed axiom successor_substitution_1
% removed axiom sum_class_substitution_1
% removed axiom union_substitution_1
% removed axiom union_substitution_2
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom disjoint_substitution_1
% removed axiom disjoint_substitution_2
% removed axiom function_substitution_1
% removed axiom inductive_substitution_1
% removed axiom member_substitution_1
% removed axiom member_substitution_2
% removed axiom subclass_substitution_1
% removed axiom subclass_substitution_2
thf(subclass_defn,axiom,(![X:$i,Y:$i]:((subclass@X@Y)<=>![U:$i]:((member@U@X)=>(member@U@Y))))).
thf(class_elements_are_sets,axiom,(![X:$i]:(subclass@X@universal_class))).
thf(extensionality,axiom,(![X:$i,Y:$i]:((X=Y)<=>((subclass@X@Y)&(subclass@Y@X))))).
thf(unordered_pair_defn,axiom,(![U:$i,X:$i,Y:$i]:((member@U@(unordered_pair@X@Y))<=>((member@U@universal_class)&((U=X)|(U=Y)))))).
thf(unordered_pair_0,axiom,(![X:$i,Y:$i]:(member@(unordered_pair@X@Y)@universal_class))).
thf(singleton_set_defn,axiom,(![X:$i]:((singleton@X)=(unordered_pair@X@X)))).
thf(ordered_pair_defn,axiom,(![X:$i,Y:$i]:((ordered_pair@X@Y)=(unordered_pair@(singleton@X)@(unordered_pair@X@(singleton@Y)))))).
thf(cross_product_defn,axiom,(![U:$i,V:$i,X:$i,Y:$i]:((member@(ordered_pair@U@V)@(cross_product@X@Y))<=>((member@U@X)&(member@V@Y))))).
thf(cross_product_0,axiom,(![X:$i,Y:$i,Z:$i]:((member@Z@(cross_product@X@Y))=>(Z=(ordered_pair@(first@Z)@(second@Z)))))).
thf(element_relation_defn,axiom,(![X:$i,Y:$i]:((member@(ordered_pair@X@Y)@element_relation)<=>((member@Y@universal_class)&(member@X@Y))))).
thf(element_relation_0,axiom,((subclass@element_relation@(cross_product@universal_class@universal_class)))).
thf(intersection_0,axiom,(![X:$i,Y:$i,Z:$i]:((member@Z@(intersection@X@Y))<=>((member@Z@X)&(member@Z@Y))))).
thf(complement_0,axiom,(![X:$i,Z:$i]:((member@Z@(complement@X))<=>((member@Z@universal_class)&~((member@Z@X)))))).
thf(restrict_defn,axiom,(![X:$i,XR:$i,Y:$i]:((restrict@XR@X@Y)=(intersection@XR@(cross_product@X@Y))))).
thf(null_class_defn,axiom,(![X:$i]:~((member@X@null_class)))).
thf(domain_of_0,axiom,(![X:$i,Z:$i]:((member@Z@(domain_of@X))<=>((member@Z@universal_class)&~(((restrict@X@(singleton@Z)@universal_class)=null_class)))))).
thf(rotate_defn,axiom,(![X:$i,U:$i,V:$i,W:$i]:((member@(ordered_pair@(ordered_pair@U@V)@W)@(rotate@X))<=>((member@(ordered_pair@(ordered_pair@U@V)@W)@(cross_product@(cross_product@universal_class@universal_class)@universal_class))&(member@(ordered_pair@(ordered_pair@V@W)@U)@X))))).
thf(rotate_0,axiom,(![X:$i]:(subclass@(rotate@X)@(cross_product@(cross_product@universal_class@universal_class)@universal_class)))).
thf(flip_defn,axiom,(![U:$i,V:$i,W:$i,X:$i]:((member@(ordered_pair@(ordered_pair@U@V)@W)@(flip@X))<=>((member@(ordered_pair@(ordered_pair@U@V)@W)@(cross_product@(cross_product@universal_class@universal_class)@universal_class))&(member@(ordered_pair@(ordered_pair@V@U)@W)@X))))).
thf(flip_0,axiom,(![X:$i]:(subclass@(flip@X)@(cross_product@(cross_product@universal_class@universal_class)@universal_class)))).
thf(union_defn,axiom,(![X:$i,Y:$i,Z:$i]:((member@Z@(union@X@Y))<=>((member@Z@X)|(member@Z@Y))))).
thf(successor_defn,axiom,(![X:$i]:((successor@X)=(union@X@(singleton@X))))).
thf(successor_relation_defn1,axiom,((subclass@successor_relation@(cross_product@universal_class@universal_class)))).
thf(successor_relation_defn2,axiom,(![X:$i,Y:$i]:((member@(ordered_pair@X@Y)@successor_relation)<=>((member@X@universal_class)&(member@Y@universal_class)&((successor@X)=Y))))).
thf(inverse_defn,axiom,(![Y:$i]:((inverse@Y)=(domain_of@(flip@(cross_product@Y@universal_class)))))).
thf(range_of_defn,axiom,(![Z:$i]:((range_of@Z)=(domain_of@(inverse@Z))))).
thf(image_defn,axiom,(![X:$i,XR:$i]:((image@XR@X)=(range_of@(restrict@XR@X@universal_class))))).
thf(inductive_defn,axiom,(![X:$i]:((inductive@X)<=>((member@null_class@X)&(subclass@(image@successor_relation@X)@X))))).
thf(infinity,axiom,(?[X:$i]:((member@X@universal_class)&(inductive@X)&![Y:$i]:((inductive@Y)=>(subclass@X@Y))))).
thf(sum_class_defn,axiom,(![U:$i,X:$i]:((member@U@(sum_class@X))<=>?[Y:$i]:((member@U@Y)&(member@Y@X))))).
thf(sum_class_0,axiom,(![X:$i]:((member@X@universal_class)=>(member@(sum_class@X)@universal_class)))).
thf(power_class_defn,axiom,(![U:$i,X:$i]:((member@U@(power_class@X))<=>((member@U@universal_class)&(subclass@U@X))))).
thf(power_class_0,axiom,(![U:$i]:((member@U@universal_class)=>(member@(power_class@U)@universal_class)))).
thf(compose_defn1,axiom,(![XR:$i,YR:$i]:(subclass@(compose@YR@XR)@(cross_product@universal_class@universal_class)))).
thf(compose_defn2,axiom,(![XR:$i,YR:$i,U:$i,V:$i]:((member@(ordered_pair@U@V)@(compose@YR@XR))<=>((member@U@universal_class)&(member@V@(image@YR@(image@YR@(singleton@U)))))))).
thf(function_defn,axiom,(![XF:$i]:((function@XF)<=>((subclass@XF@(cross_product@universal_class@universal_class))&(subclass@(compose@XF@(inverse@XF))@identity_relation))))).
thf(replacement,axiom,(![X:$i,XF:$i]:(((member@X@universal_class)&(function@XF))=>(member@(image@XF@X)@universal_class)))).
thf(disjoint_defn,axiom,(![X:$i,Y:$i]:((disjoint@X@Y)<=>![U:$i]:~(((member@U@X)&(member@U@Y)))))).
thf(regularity,axiom,(![X:$i]:(~((X=null_class))=>?[U:$i]:((member@U@universal_class)&(member@U@X)&(disjoint@U@X))))).
thf(apply_defn,axiom,(![XF:$i,Y:$i]:((apply@XF@Y)=(sum_class@(image@XF@(singleton@Y)))))).
thf(choice,axiom,(?[XF:$i]:((function@XF)&![Y:$i]:((member@Y@universal_class)=>((Y=null_class)|(member@(apply@XF@Y)@Y)))))).
thf(corollary_of_null_class_is_subclass,conjecture,(![X:$i]:((subclass@X@null_class)=>(X=null_class)))).
%------------------------------------------------------------------------------