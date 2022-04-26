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
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSE062+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET062+3 (from TPTP-v5.0.0)
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.50         0.67         0.50          v1.1
%             S5  0.00         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(empty_set_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ B @ empty_set ) ) ) ) ) ) ) ) ).
thf(subset_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( subset @ B @ C ) ) ) => ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) ) ) => ( {$box} @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ).
thf(reflexivity_of_subset,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( subset @ B @ B ) ) ) ) ) ).
thf(empty_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( empty @ B ) ) ) => ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ C @ B ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( member @ C @ B ) ) ) ) ) ) ) ) => ( {$box} @ ( ( empty @ B ) ) ) ) ) ) ) ) ).
thf(prove_empty_set_subset,conjecture,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( subset @ empty_set @ B ) ) ) ) ) ).
%--------------------------------------------------------------------------
