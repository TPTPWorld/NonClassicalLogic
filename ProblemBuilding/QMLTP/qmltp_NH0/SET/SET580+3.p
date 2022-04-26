% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).

% functions
thf(difference_type,type,(difference : ($i>$i>$i))).
thf(symmetric_difference_type,type,(symmetric_difference : ($i>$i>$i))).
thf(union_type,type,(union : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET580+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : x is in X sym Y iff x is in X iff x is not in Y
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : x is in the symmetric difference of X and Y iff it is not the
%            case x is in X iff x is in Y.
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (23) [TS89]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Theorem       v1.1
%             D   Unsolved     Unsolved     Theorem       v1.1
%             T   Unsolved     Unsolved     Theorem       v1.1
%             S4  Unsolved     Unsolved     Theorem       v1.1
%             S5  Unsolved     Unsolved     Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         0.75          v1.1
%             D   1.00         1.00         0.83          v1.1
%             T   1.00         1.00         0.83          v1.1
%             S4  1.00         1.00         0.83          v1.1
%             S5  1.00         1.00         0.80          v1.1
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
thf(union_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( union @ B @ C ) ) <=> ( ( member @ D @ B ) | ( member @ D @ C ) ) ) ) ).
thf(difference_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( difference @ B @ C ) ) <=> ( ( member @ D @ B ) & ~ ( ( member @ D @ C ) ) ) ) ) ).
thf(symmetric_difference_defn,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( symmetric_difference @ B @ C ) @ ( union @ ( difference @ B @ C ) @ ( difference @ C @ B ) ) ) ) ).
thf(commutativity_of_union,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ).
thf(commutativity_of_symmetric_difference,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( symmetric_difference @ B @ C ) @ ( symmetric_difference @ C @ B ) ) ) ).
thf(equal_member_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) ) ) ).
thf(prove_th23,conjecture,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ B @ ( symmetric_difference @ C @ D ) ) <=> ~ ( ( ( member @ B @ C ) <=> ( member @ B @ D ) ) ) ) ) ).
%------------------------------------------------------------------------------
