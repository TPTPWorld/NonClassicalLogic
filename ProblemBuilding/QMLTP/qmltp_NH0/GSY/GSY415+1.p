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
thf(f_type,type,(f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY415+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN415+1 (from TPTP-v5.0.0)
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
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(f_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) & ( {$box} @ ( ( f @ A ) ) ) ) => ( {$box} @ ( ( f @ B ) ) ) ) ) ) ) ) ) ).
thf(kalish317,conjecture,( ( {$box} @ ( ( ( ? [ X :$i ] : ( {$box} @ ( ( f @ X ) ) ) ) & ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( f @ Y ) ) ) & ( {$box} @ ( ( f @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) ) ) ) ) ) ) => ( ? [ U :$i ] : ( ( {$box} @ ( ( f @ U ) ) ) & ( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ( {$box} @ ( ( f @ V ) ) ) => ( {$box} @ ( ( qmltpeq @ U @ V ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( ? [ U :$i ] : ( ( {$box} @ ( ( f @ U ) ) ) & ( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ( {$box} @ ( ( f @ V ) ) ) => ( {$box} @ ( ( qmltpeq @ U @ V ) ) ) ) ) ) ) ) ) => ( ( ? [ X :$i ] : ( {$box} @ ( ( f @ X ) ) ) ) & ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( f @ Y ) ) ) & ( {$box} @ ( ( f @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
