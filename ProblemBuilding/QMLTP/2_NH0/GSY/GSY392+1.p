% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions
thf(p1_type,type,(p1 : ($o))).
thf(p2_type,type,(p2 : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY392+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN392+1 (from TPTP-v5.0.0)
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
%             K   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             D   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             T   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.75          v1.1
%             D   1.00         0.83         0.83          v1.1
%             T   1.00         0.83         0.83          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(pel14,conjecture,( ( {$box} @ ( ( ( {$box} @ ( ( {$box} @ ( p1 ) ) => ( {$box} @ ( p2 ) ) ) ) & ( {$box} @ ( ( {$box} @ ( p2 ) ) => ( {$box} @ ( p1 ) ) ) ) ) => ( ( ( {$box} @ ( p2 ) ) | ( {$box} @ ( ~ ( ( {$box} @ ( p1 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( p2 ) ) ) ) ) | ( {$box} @ ( p1 ) ) ) ) ) ) & ( {$box} @ ( ( ( ( {$box} @ ( p2 ) ) | ( {$box} @ ( ~ ( ( {$box} @ ( p1 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( p2 ) ) ) ) ) | ( {$box} @ ( p1 ) ) ) ) => ( ( {$box} @ ( ( {$box} @ ( p1 ) ) => ( {$box} @ ( p2 ) ) ) ) & ( {$box} @ ( ( {$box} @ ( p2 ) ) => ( {$box} @ ( p1 ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
