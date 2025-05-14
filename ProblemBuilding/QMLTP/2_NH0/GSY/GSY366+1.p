% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(big_r_type,type,(big_r : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY366+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN366+1 (from TPTP-v5.0.0)
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
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.50         0.33          v1.1
%             S5  0.25         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(x2117,conjecture,( {$box} @ ( ( ( {$box} @ ( ! [ U :$i ] : ( {$box} @ ( ! [ V :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( big_r @ U @ U ) ) ) => ( {$box} @ ( ( big_r @ U @ V ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ( big_r @ U @ V ) ) ) => ( {$box} @ ( ( big_r @ U @ U ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ! [ W :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( big_r @ W @ W ) ) ) => ( {$box} @ ( ( big_r @ Z @ W ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ( big_r @ Z @ W ) ) ) => ( {$box} @ ( ( big_r @ W @ W ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( ( ? [ X :$i ] : ( {$box} @ ( ( big_r @ X @ X ) ) ) ) => ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( big_r @ Y @ Y ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
