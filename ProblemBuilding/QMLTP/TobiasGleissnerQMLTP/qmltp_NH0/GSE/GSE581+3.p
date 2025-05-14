
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
%--------------------------------------------------------------------------
% File     : GSE581+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET581+3 (from TPTP-v5.0.0)
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
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Unsolved     Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  1.00         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(intersection_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( intersection @ A @ C ) @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(intersection_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( intersection @ C @ A ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(empty_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( empty @ A ) ) ) ) => ( {$box} @ ( ( empty @ B ) ) ) ) ) ) ) ) ) ).
thf(member_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( member @ A @ C ) ) ) ) => ( {$box} @ ( ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(member_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( member @ C @ A ) ) ) ) => ( {$box} @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(not_equal_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( not_equal @ A @ C ) ) ) ) => ( {$box} @ ( ( not_equal @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).
thf(not_equal_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( not_equal @ C @ A ) ) ) ) => ( {$box} @ ( ( not_equal @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).
thf(intersection_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ! [ D :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( member @ D @ ( intersection @ B @ C ) ) ) ) => ( ( {$box} @ ( ( member @ D @ B ) ) ) & ( {$box} @ ( ( member @ D @ C ) ) ) ) ) ) & ( {$box} @ ( ( ( {$box} @ ( ( member @ D @ B ) ) ) & ( {$box} @ ( ( member @ D @ C ) ) ) ) => ( {$box} @ ( ( member @ D @ ( intersection @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(empty_set_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ B @ empty_set ) ) ) ) ) ) ) ) ).
thf(equal_member_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ B @ C ) ) ) => ( {$box} @ ( ! [ D :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ( member @ D @ C ) ) ) => ( {$box} @ ( ( member @ D @ B ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ D :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ( member @ D @ C ) ) ) => ( {$box} @ ( ( member @ D @ B ) ) ) ) ) ) ) ) => ( {$box} @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) ) ) ).
thf(not_equal_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( not_equal @ B @ C ) ) ) => ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ B @ C ) ) ) ) ) ) => ( {$box} @ ( ( not_equal @ B @ C ) ) ) ) ) ) ) ) ) ) ).
thf(commutativity_of_intersection,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( qmltpeq @ ( intersection @ B @ C ) @ ( intersection @ C @ B ) ) ) ) ) ) ) ) ).
thf(empty_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( empty @ B ) ) ) => ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ C @ B ) ) ) ) ) ) ) ) => ( {$box} @ ( ( empty @ B ) ) ) ) ) ) ) ) ).
thf(prove_th24,conjecture,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( member @ B @ C ) ) ) & ( {$box} @ ( ( member @ B @ D ) ) ) ) => ( {$box} @ ( ( not_equal @ ( intersection @ C @ D ) @ empty_set ) ) ) ) ) ) ) ) ) ) ) ).
