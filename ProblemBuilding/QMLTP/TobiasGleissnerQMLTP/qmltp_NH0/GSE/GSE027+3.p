
% propositions

% individual constants

% predicates
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSE027+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET027+3 (from TPTP-v5.0.0)
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
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
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
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(subset_defn,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( subset @ B @ C ) ) ) => ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( {$box} @ ( ( member @ D @ B ) ) ) => ( {$box} @ ( ( member @ D @ C ) ) ) ) ) ) ) => ( {$box} @ ( ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ).
thf(reflexivity_of_subset,axiom,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( subset @ B @ B ) ) ) ) ) ).
thf(prove_transitivity_of_subset,conjecture,( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ! [ D :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( subset @ B @ C ) ) ) & ( {$box} @ ( ( subset @ C @ D ) ) ) ) => ( {$box} @ ( ( subset @ B @ D ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
