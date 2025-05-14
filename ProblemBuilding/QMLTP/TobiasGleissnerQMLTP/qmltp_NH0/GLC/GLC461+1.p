
% propositions
thf(r2_type,type,(r2 : ($o))).
thf(r3_type,type,(r3 : ($o))).
thf(r4_type,type,(r4 : ($o))).
thf(r5_type,type,(r5 : ($o))).
thf(equivalence_1_type,type,(equivalence_1 : ($o))).
thf(equivalence_2_type,type,(equivalence_2 : ($o))).
thf(cn2_type,type,(cn2 : ($o))).
thf(cn1_type,type,(cn1 : ($o))).
thf(cn3_type,type,(cn3 : ($o))).
thf(kn2_type,type,(kn2 : ($o))).
thf(kn1_type,type,(kn1 : ($o))).
thf(kn3_type,type,(kn3 : ($o))).
thf(equivalence_3_type,type,(equivalence_3 : ($o))).
thf(op_implies_or_type,type,(op_implies_or : ($o))).
thf(op_and_type,type,(op_and : ($o))).
thf(and_2_type,type,(and_2 : ($o))).
thf(and_3_type,type,(and_3 : ($o))).
thf(and_1_type,type,(and_1 : ($o))).
thf(implies_2_type,type,(implies_2 : ($o))).
thf(implies_3_type,type,(implies_3 : ($o))).
thf(op_implies_and_type,type,(op_implies_and : ($o))).
thf(implies_1_type,type,(implies_1 : ($o))).
thf(substitution_of_equivalents_type,type,(substitution_of_equivalents : ($o))).
thf(op_or_type,type,(op_or : ($o))).
thf(modus_tollens_type,type,(modus_tollens : ($o))).
thf(or_1_type,type,(or_1 : ($o))).
thf(or_2_type,type,(or_2 : ($o))).
thf(or_3_type,type,(or_3 : ($o))).
thf(op_equiv_type,type,(op_equiv : ($o))).
thf(modus_ponens_type,type,(modus_ponens : ($o))).
thf(r1_type,type,(r1 : ($o))).

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(is_a_theorem_type,type,(is_a_theorem : ($i>$o))).

% functions
thf(equiv_type,type,(equiv : ($i>$i>$i))).
thf(not_type,type,(not : ($i>$i))).
thf(or_type,type,(or : ($i>$i>$i))).
thf(and_type,type,(and : ($i>$i>$i))).
thf(implies_type,type,(implies : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GLC461+1 : QMLTP v1.1
% Domain   : GLC (Goedel translation of Logic Calculi)
% Problem  : Goedel translation of LCL461+1 (from TPTP-v5.0.0)
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
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(and_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( and @ A @ C ) @ ( and @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(and_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( and @ C @ A ) @ ( and @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(equiv_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( equiv @ A @ C ) @ ( equiv @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(equiv_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( equiv @ C @ A ) @ ( equiv @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(implies_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( implies @ A @ C ) @ ( implies @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(implies_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( implies @ C @ A ) @ ( implies @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(not_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( not @ A ) @ ( not @ B ) ) ) ) ) ) ) ) ) ) ).
thf(or_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( or @ A @ C ) @ ( or @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(or_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( or @ C @ A ) @ ( or @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(is_a_theorem_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( is_a_theorem @ A ) ) ) ) => ( {$box} @ ( ( is_a_theorem @ B ) ) ) ) ) ) ) ) ) ).
thf(modus_ponens_0,axiom,( ( {$box} @ ( ( {$box} @ ( modus_ponens ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( is_a_theorem @ X ) ) ) & ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ Y ) ) ) ) ) => ( {$box} @ ( ( is_a_theorem @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( is_a_theorem @ X ) ) ) & ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ Y ) ) ) ) ) => ( {$box} @ ( ( is_a_theorem @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( modus_ponens ) ) ) ) ) ).
thf(substitution_of_equivalents_0,axiom,( ( {$box} @ ( ( {$box} @ ( substitution_of_equivalents ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( is_a_theorem @ ( equiv @ X @ Y ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( is_a_theorem @ ( equiv @ X @ Y ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( substitution_of_equivalents ) ) ) ) ) ).
thf(modus_tollens_0,axiom,( ( {$box} @ ( ( {$box} @ ( modus_tollens ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ ( not @ Y ) @ ( not @ X ) ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ ( not @ Y ) @ ( not @ X ) ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( modus_tollens ) ) ) ) ) ).
thf(implies_1_0,axiom,( ( {$box} @ ( ( {$box} @ ( implies_1 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( implies @ Y @ X ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( implies @ Y @ X ) ) ) ) ) ) ) ) ) => ( {$box} @ ( implies_1 ) ) ) ) ) ).
thf(implies_2_0,axiom,( ( {$box} @ ( ( {$box} @ ( implies_2 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ ( implies @ X @ Y ) ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ ( implies @ X @ Y ) ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( implies_2 ) ) ) ) ) ).
thf(implies_3_0,axiom,( ( {$box} @ ( ( {$box} @ ( implies_3 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Y ) @ ( implies @ ( implies @ Y @ Z ) @ ( implies @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Y ) @ ( implies @ ( implies @ Y @ Z ) @ ( implies @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( implies_3 ) ) ) ) ) ).
thf(and_1_0,axiom,( ( {$box} @ ( ( {$box} @ ( and_1 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ X @ Y ) @ X ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ X @ Y ) @ X ) ) ) ) ) ) ) ) => ( {$box} @ ( and_1 ) ) ) ) ) ).
thf(and_2_0,axiom,( ( {$box} @ ( ( {$box} @ ( and_2 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ X @ Y ) @ Y ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ X @ Y ) @ Y ) ) ) ) ) ) ) ) => ( {$box} @ ( and_2 ) ) ) ) ) ).
thf(and_3_0,axiom,( ( {$box} @ ( ( {$box} @ ( and_3 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( implies @ Y @ ( and @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( implies @ Y @ ( and @ X @ Y ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( and_3 ) ) ) ) ) ).
thf(or_1_0,axiom,( ( {$box} @ ( ( {$box} @ ( or_1 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( or @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ X @ ( or @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( or_1 ) ) ) ) ) ).
thf(or_2_0,axiom,( ( {$box} @ ( ( {$box} @ ( or_2 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ Y @ ( or @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ Y @ ( or @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( or_2 ) ) ) ) ) ).
thf(or_3_0,axiom,( ( {$box} @ ( ( {$box} @ ( or_3 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Z ) @ ( implies @ ( implies @ Y @ Z ) @ ( implies @ ( or @ X @ Y ) @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Z ) @ ( implies @ ( implies @ Y @ Z ) @ ( implies @ ( or @ X @ Y ) @ Z ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( or_3 ) ) ) ) ) ).
thf(equivalence_1_0,axiom,( ( {$box} @ ( ( {$box} @ ( equivalence_1 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( equiv @ X @ Y ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( equiv @ X @ Y ) @ ( implies @ X @ Y ) ) ) ) ) ) ) ) ) => ( {$box} @ ( equivalence_1 ) ) ) ) ) ).
thf(equivalence_2_0,axiom,( ( {$box} @ ( ( {$box} @ ( equivalence_2 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( equiv @ X @ Y ) @ ( implies @ Y @ X ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( equiv @ X @ Y ) @ ( implies @ Y @ X ) ) ) ) ) ) ) ) ) => ( {$box} @ ( equivalence_2 ) ) ) ) ) ).
thf(equivalence_3_0,axiom,( ( {$box} @ ( ( {$box} @ ( equivalence_3 ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Y ) @ ( implies @ ( implies @ Y @ X ) @ ( equiv @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ X @ Y ) @ ( implies @ ( implies @ Y @ X ) @ ( equiv @ X @ Y ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( equivalence_3 ) ) ) ) ) ).
thf(kn1_0,axiom,( ( {$box} @ ( ( {$box} @ ( kn1 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ P @ ( and @ P @ P ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ P @ ( and @ P @ P ) ) ) ) ) ) ) => ( {$box} @ ( kn1 ) ) ) ) ) ).
thf(kn2_0,axiom,( ( {$box} @ ( ( {$box} @ ( kn2 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ P @ Q ) @ P ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( and @ P @ Q ) @ P ) ) ) ) ) ) ) ) => ( {$box} @ ( kn2 ) ) ) ) ) ).
thf(kn3_0,axiom,( ( {$box} @ ( ( {$box} @ ( kn3 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ P @ Q ) @ ( implies @ ( not @ ( and @ Q @ R ) ) @ ( not @ ( and @ R @ P ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ P @ Q ) @ ( implies @ ( not @ ( and @ Q @ R ) ) @ ( not @ ( and @ R @ P ) ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( kn3 ) ) ) ) ) ).
thf(cn1_0,axiom,( ( {$box} @ ( ( {$box} @ ( cn1 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ P @ Q ) @ ( implies @ ( implies @ Q @ R ) @ ( implies @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ P @ Q ) @ ( implies @ ( implies @ Q @ R ) @ ( implies @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( cn1 ) ) ) ) ) ).
thf(cn2_0,axiom,( ( {$box} @ ( ( {$box} @ ( cn2 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ P @ ( implies @ ( not @ P ) @ Q ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ P @ ( implies @ ( not @ P ) @ Q ) ) ) ) ) ) ) ) ) => ( {$box} @ ( cn2 ) ) ) ) ) ).
thf(cn3_0,axiom,( ( {$box} @ ( ( {$box} @ ( cn3 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ ( not @ P ) @ P ) @ P ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ ( not @ P ) @ P ) @ P ) ) ) ) ) ) => ( {$box} @ ( cn3 ) ) ) ) ) ).
thf(r1_0,axiom,( ( {$box} @ ( ( {$box} @ ( r1 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ P ) @ P ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ P ) @ P ) ) ) ) ) ) => ( {$box} @ ( r1 ) ) ) ) ) ).
thf(r2_0,axiom,( ( {$box} @ ( ( {$box} @ ( r2 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ Q @ ( or @ P @ Q ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ Q @ ( or @ P @ Q ) ) ) ) ) ) ) ) ) => ( {$box} @ ( r2 ) ) ) ) ) ).
thf(r3_0,axiom,( ( {$box} @ ( ( {$box} @ ( r3 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ Q ) @ ( or @ Q @ P ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ Q ) @ ( or @ Q @ P ) ) ) ) ) ) ) ) ) => ( {$box} @ ( r3 ) ) ) ) ) ).
thf(r4_0,axiom,( ( {$box} @ ( ( {$box} @ ( r4 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ ( or @ Q @ R ) ) @ ( or @ Q @ ( or @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( or @ P @ ( or @ Q @ R ) ) @ ( or @ Q @ ( or @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( r4 ) ) ) ) ) ).
thf(r5_0,axiom,( ( {$box} @ ( ( {$box} @ ( r5 ) ) => ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ Q @ R ) @ ( implies @ ( or @ P @ Q ) @ ( or @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( is_a_theorem @ ( implies @ ( implies @ Q @ R ) @ ( implies @ ( or @ P @ Q ) @ ( or @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( r5 ) ) ) ) ) ).
thf(op_or_0,axiom,( {$box} @ ( ( {$box} @ ( op_or ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( qmltpeq @ ( or @ X @ Y ) @ ( not @ ( and @ ( not @ X ) @ ( not @ Y ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op_and_0,axiom,( {$box} @ ( ( {$box} @ ( op_and ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( qmltpeq @ ( and @ X @ Y ) @ ( not @ ( or @ ( not @ X ) @ ( not @ Y ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op_implies_and_0,axiom,( {$box} @ ( ( {$box} @ ( op_implies_and ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( qmltpeq @ ( implies @ X @ Y ) @ ( not @ ( and @ X @ ( not @ Y ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op_implies_or_0,axiom,( {$box} @ ( ( {$box} @ ( op_implies_or ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( qmltpeq @ ( implies @ X @ Y ) @ ( or @ ( not @ X ) @ Y ) ) ) ) ) ) ) ) ) ) ).
thf(op_equiv_0,axiom,( {$box} @ ( ( {$box} @ ( op_equiv ) ) => ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( qmltpeq @ ( equiv @ X @ Y ) @ ( and @ ( implies @ X @ Y ) @ ( implies @ Y @ X ) ) ) ) ) ) ) ) ) ) ) ).
thf(hilbert_op_or,axiom,( {$box} @ ( op_or ) ) ).
thf(hilbert_op_implies_and,axiom,( {$box} @ ( op_implies_and ) ) ).
thf(hilbert_op_equiv,axiom,( {$box} @ ( op_equiv ) ) ).
thf(hilbert_modus_ponens,axiom,( {$box} @ ( modus_ponens ) ) ).
thf(hilbert_modus_tollens,axiom,( {$box} @ ( modus_tollens ) ) ).
thf(hilbert_implies_1,axiom,( {$box} @ ( implies_1 ) ) ).
thf(hilbert_implies_2,axiom,( {$box} @ ( implies_2 ) ) ).
thf(hilbert_implies_3,axiom,( {$box} @ ( implies_3 ) ) ).
thf(hilbert_and_1,axiom,( {$box} @ ( and_1 ) ) ).
thf(hilbert_and_2,axiom,( {$box} @ ( and_2 ) ) ).
thf(hilbert_and_3,axiom,( {$box} @ ( and_3 ) ) ).
thf(hilbert_or_1,axiom,( {$box} @ ( or_1 ) ) ).
thf(hilbert_or_2,axiom,( {$box} @ ( or_2 ) ) ).
thf(hilbert_or_3,axiom,( {$box} @ ( or_3 ) ) ).
thf(hilbert_equivalence_1,axiom,( {$box} @ ( equivalence_1 ) ) ).
thf(hilbert_equivalence_2,axiom,( {$box} @ ( equivalence_2 ) ) ).
thf(hilbert_equivalence_3,axiom,( {$box} @ ( equivalence_3 ) ) ).
thf(substitution_of_equivalents_1,axiom,( {$box} @ ( substitution_of_equivalents ) ) ).
thf(rosser_op_or,axiom,( {$box} @ ( op_or ) ) ).
thf(rosser_op_implies_and,axiom,( {$box} @ ( op_implies_and ) ) ).
thf(rosser_op_equiv,axiom,( {$box} @ ( op_equiv ) ) ).
thf(rosser_kn3,conjecture,( {$box} @ ( kn3 ) ) ).
