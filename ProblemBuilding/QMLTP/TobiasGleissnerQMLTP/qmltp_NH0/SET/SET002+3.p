
% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(union_type,type,(union : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : SET002+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Idempotency of union
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (62) [TS89]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.00         0.25          v1.1
%             D   0.25         0.17         0.33          v1.1
%             T   0.25         0.17         0.33          v1.1
%             S4  0.25         0.17         0.33          v1.1
%             S5  0.25         0.20         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(union_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ).
thf(union_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ).
thf(member_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(subset_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ).
thf(subset_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ).
thf(subset_union,axiom,( ! [ B :$i,C :$i ] : ( ( subset @ B @ C ) => ( qmltpeq @ ( union @ B @ C ) @ C ) ) ) ).
thf(union_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( union @ B @ C ) ) <=> ( ( member @ D @ B ) | ( member @ D @ C ) ) ) ) ).
thf(equal_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ( ( subset @ B @ C ) & ( subset @ C @ B ) ) ) ) ).
thf(commutativity_of_union,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ).
thf(subset_defn,axiom,( ! [ B :$i,C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ).
thf(reflexivity_of_subset,axiom,( ! [ B :$i ] : ( subset @ B @ B ) ) ).
thf(equal_member_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) ) ) ).
thf(prove_idempotency_of_union,conjecture,( ! [ B :$i ] : ( qmltpeq @ ( union @ B @ B ) @ B ) ) ).
%------------------------------------------------------------------------------
