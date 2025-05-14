
% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(difference_type,type,(difference : ($i>$i>$i))).
thf(symmetric_difference_type,type,(symmetric_difference : ($i>$i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET582+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : If x not in X iff x in Y iff x in Z, then X = Y sym\ Z
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If for every x : x is not in X iff x is in Y iff x is in Z,
%            then X is the symmetric difference of Y and Z.
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (25) [TS89]
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
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(difference_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ).
thf(difference_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ).
thf(symmetric_difference_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( symmetric_difference @ A @ C ) @ ( symmetric_difference @ B @ C ) ) ) ) ).
thf(symmetric_difference_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( symmetric_difference @ C @ A ) @ ( symmetric_difference @ C @ B ) ) ) ) ).
thf(union_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ).
thf(union_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ).
thf(member_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(subset_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(member_equal,axiom,( ! [ B :$i,C :$i ] : ( ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) => ( qmltpeq @ B @ C ) ) ) ).
thf(union_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( union @ B @ C ) ) <=> ( ( member @ D @ B ) | ( member @ D @ C ) ) ) ) ).
thf(difference_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( difference @ B @ C ) ) <=> ( ( member @ D @ B ) & ~ ( ( member @ D @ C ) ) ) ) ) ).
thf(symmetric_difference_defn,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( symmetric_difference @ B @ C ) @ ( union @ ( difference @ B @ C ) @ ( difference @ C @ B ) ) ) ) ).
thf(equal_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ( ( subset @ B @ C ) & ( subset @ C @ B ) ) ) ) ).
thf(commutativity_of_union,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ).
thf(commutativity_of_symmetric_difference,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( symmetric_difference @ B @ C ) @ ( symmetric_difference @ C @ B ) ) ) ).
thf(equal_member_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) ) ) ).
thf(subset_defn,axiom,( ! [ B :$i,C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ).
thf(reflexivity_of_subset,axiom,( ! [ B :$i ] : ( subset @ B @ B ) ) ).
thf(prove_th25,conjecture,( ! [ B :$i,C :$i,D :$i ] : ( ! [ E :$i ] : ( ~ ( ( member @ E @ B ) ) <=> ( ( member @ E @ C ) <=> ( member @ E @ D ) ) ) => ( qmltpeq @ B @ ( symmetric_difference @ C @ D ) ) ) ) ).
%------------------------------------------------------------------------------
