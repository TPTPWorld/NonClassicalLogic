% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions
thf(p_type,type,(p : ($o))).
thf(q_type,type,(q : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY040+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN040+1 (from TPTP-v5.0.0)
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
%             K   Theorem      Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(pel1,conjecture,( ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( p ) ) => ( {$box} @ ( q ) ) ) ) => ( {$box} @ ( ( {$box} @ ( ~ ( ( {$box} @ ( q ) ) ) ) ) => ( {$box} @ ( ~ ( ( {$box} @ ( p ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ( {$box} @ ( ~ ( ( {$box} @ ( q ) ) ) ) ) => ( {$box} @ ( ~ ( ( {$box} @ ( p ) ) ) ) ) ) ) => ( {$box} @ ( ( {$box} @ ( p ) ) => ( {$box} @ ( q ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
