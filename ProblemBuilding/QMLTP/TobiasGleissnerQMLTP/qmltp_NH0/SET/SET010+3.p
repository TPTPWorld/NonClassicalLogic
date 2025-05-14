
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
%------------------------------------------------------------------------------
% File     : SET010+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : X \ Y ^ Z = (X \ Y) U (X \ Z)
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The difference of X and the intersection of Y and Z is the
%            union of (the difference of X and Y) and (the difference of X
%            and Z).
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (86) [TS89]
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
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(difference_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ).
thf(difference_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ).
thf(intersection_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ).
thf(intersection_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ).
thf(union_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ).
thf(union_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ).
thf(member_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(subset_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(union_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( union @ B @ C ) ) <=> ( ( member @ D @ B ) | ( member @ D @ C ) ) ) ) ).
thf(intersection_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( intersection @ B @ C ) ) <=> ( ( member @ D @ B ) & ( member @ D @ C ) ) ) ) ).
thf(difference_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( difference @ B @ C ) ) <=> ( ( member @ D @ B ) & ~ ( ( member @ D @ C ) ) ) ) ) ).
thf(union_subset,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( ( subset @ B @ C ) & ( subset @ D @ C ) ) => ( subset @ ( union @ B @ D ) @ C ) ) ) ).
thf(intersection_is_subset,axiom,( ! [ B :$i,C :$i ] : ( subset @ ( intersection @ B @ C ) @ B ) ) ).
thf(subset_difference,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( subset @ B @ C ) => ( subset @ ( difference @ D @ C ) @ ( difference @ D @ B ) ) ) ) ).
thf(equal_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ( ( subset @ B @ C ) & ( subset @ C @ B ) ) ) ) ).
thf(commutativity_of_union,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ).
thf(commutativity_of_intersection,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( intersection @ B @ C ) @ ( intersection @ C @ B ) ) ) ).
thf(subset_defn,axiom,( ! [ B :$i,C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ).
thf(reflexivity_of_subset,axiom,( ! [ B :$i ] : ( subset @ B @ B ) ) ).
thf(equal_member_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) ) ) ).
thf(prove_difference_and_intersection_and_union,conjecture,( ! [ B :$i,C :$i,D :$i ] : ( qmltpeq @ ( difference @ B @ ( intersection @ C @ D ) ) @ ( union @ ( difference @ B @ C ) @ ( difference @ B @ D ) ) ) ) ).
%------------------------------------------------------------------------------
