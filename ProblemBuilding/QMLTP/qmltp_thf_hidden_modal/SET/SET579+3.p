% semantics
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions
thf(difference_type,type,(difference : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET579+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 20th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (20) [TS89]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         0.75          v1.1
%             D   0.75         0.83         0.67          v1.1
%             T   0.75         0.83         0.67          v1.1
%             S4  0.75         0.83         0.67          v1.1
%             S5  0.75         0.80         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------
thf ( reflexivity , axiom , ( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ) .
thf ( symmetry , axiom , ( ! [ X :$i , Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ) .
thf ( transitivity , axiom , ( ! [ X :$i , Y :$i , Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ) .
thf ( difference_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ A @ C ) @ ( difference @ B @ C ) ) ) ) ) .
thf ( difference_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( difference @ C @ A ) @ ( difference @ C @ B ) ) ) ) ) .
thf ( member_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ) .
thf ( member_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ) .
thf ( subset_substitution_1 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ A @ C ) ) => ( subset @ B @ C ) ) ) ) .
thf ( subset_substitution_2 , axiom , ( ! [ A :$i , B :$i , C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( subset @ C @ A ) ) => ( subset @ C @ B ) ) ) ) .
thf ( difference_defn , axiom , ( ! [ B :$i , C :$i , D :$i ] : ( ( member @ D @ ( difference @ B @ C ) ) <=> ( ( member @ D @ B ) & ~ ( ( member @ D @ C ) ) ) ) ) ) .
thf ( equal_defn , axiom , ( ! [ B :$i , C :$i ] : ( ( qmltpeq @ B @ C ) <=> ( ( subset @ B @ C ) & ( subset @ C @ B ) ) ) ) ) .
thf ( subset_defn , axiom , ( ! [ B :$i , C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ) .
thf ( reflexivity_of_subset , axiom , ( ! [ B :$i ] : ( subset @ B @ B ) ) ) .
thf ( prove_th20 , conjecture , ( ! [ B :$i , C :$i , D :$i ] : ( ! [ E :$i ] : ( ( member @ E @ B ) <=> ( ( member @ E @ C ) & ~ ( ( member @ E @ D ) ) ) ) => ( qmltpeq @ B @ ( difference @ C @ D ) ) ) ) ) .
%------------------------------------------------------------------------------