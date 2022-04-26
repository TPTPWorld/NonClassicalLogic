% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(not_equal_type,type,(not_equal : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions
thf(intersection_type,type,(intersection : ($i>$i>$i))).

% converted problem
%------------------------------------------------------------------------------
% File     : SET581+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 24th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (24) [TS89]
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
thf(reflexivity,axiom,( ! [ X :$i ] : ( qmltpeq @ X @ X ) ) ).
thf(symmetry,axiom,( ! [ X :$i,Y :$i ] : ( ( qmltpeq @ X @ Y ) => ( qmltpeq @ Y @ X ) ) ) ).
thf(transitivity,axiom,( ! [ X :$i,Y :$i,Z :$i ] : ( ( ( qmltpeq @ X @ Y ) & ( qmltpeq @ Y @ Z ) ) => ( qmltpeq @ X @ Z ) ) ) ).
thf(intersection_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ).
thf(intersection_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( qmltpeq @ A @ B ) => ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ).
thf(empty_substitution_1,axiom,( ! [ A :$i,B :$i ] : ( ( ( qmltpeq @ A @ B ) & ( empty @ A ) ) => ( empty @ B ) ) ) ).
thf(member_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ A @ C ) ) => ( member @ B @ C ) ) ) ).
thf(member_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( member @ C @ A ) ) => ( member @ C @ B ) ) ) ).
thf(not_equal_substitution_1,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( not_equal @ A @ C ) ) => ( not_equal @ B @ C ) ) ) ).
thf(not_equal_substitution_2,axiom,( ! [ A :$i,B :$i,C :$i ] : ( ( ( qmltpeq @ A @ B ) & ( not_equal @ C @ A ) ) => ( not_equal @ C @ B ) ) ) ).
thf(intersection_defn,axiom,( ! [ B :$i,C :$i,D :$i ] : ( ( member @ D @ ( intersection @ B @ C ) ) <=> ( ( member @ D @ B ) & ( member @ D @ C ) ) ) ) ).
thf(empty_set_defn,axiom,( ! [ B :$i ] : ~ ( ( member @ B @ empty_set ) ) ) ).
thf(equal_member_defn,axiom,( ! [ B :$i,C :$i ] : ( ( qmltpeq @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) <=> ( member @ D @ C ) ) ) ) ).
thf(not_equal_defn,axiom,( ! [ B :$i,C :$i ] : ( ( not_equal @ B @ C ) <=> ~ ( ( qmltpeq @ B @ C ) ) ) ) ).
thf(commutativity_of_intersection,axiom,( ! [ B :$i,C :$i ] : ( qmltpeq @ ( intersection @ B @ C ) @ ( intersection @ C @ B ) ) ) ).
thf(empty_defn,axiom,( ! [ B :$i ] : ( ( empty @ B ) <=> ! [ C :$i ] : ~ ( ( member @ C @ B ) ) ) ) ).
thf(prove_th24,conjecture,( ! [ B :$i,C :$i,D :$i ] : ( ( ( member @ B @ C ) & ( member @ B @ D ) ) => ( not_equal @ ( intersection @ C @ D ) @ empty_set ) ) ) ).
%------------------------------------------------------------------------------
