
% propositions

% individual constants

% predicates
thf(a_truth_type,type,(a_truth : ($i>$o))).

% functions
thf(not_type,type,(not : ($i>$i))).
thf(implies_type,type,(implies : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GLC414+1 : QMLTP v1.1
% Domain   : GLC (Goedel translation of Logic Calculi)
% Problem  : Goedel translation of LCL414+1 (from TPTP-v5.0.0)
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
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(thm147,conjecture,( {$box} @ ( ~ ( ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( ( {$box} @ ( ~ ( ( {$box} @ ( ( a_truth @ ( implies @ P @ Q ) ) ) ) ) ) ) | ( ( {$box} @ ( ~ ( ( {$box} @ ( ( a_truth @ P ) ) ) ) ) ) | ( {$box} @ ( ( a_truth @ Q ) ) ) ) ) ) ) ) ) & ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( a_truth @ ( implies @ P @ ( implies @ Q @ P ) ) ) ) ) ) ) ) ) & ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ! [ R :$i ] : ( {$box} @ ( ( a_truth @ ( implies @ ( implies @ P @ ( implies @ Q @ R ) ) @ ( implies @ ( implies @ P @ Q ) @ ( implies @ P @ R ) ) ) ) ) ) ) ) ) ) ) ) & ( ( {$box} @ ( ! [ P :$i ] : ( {$box} @ ( ! [ Q :$i ] : ( {$box} @ ( ( a_truth @ ( implies @ ( implies @ ( not @ P ) @ ( not @ Q ) ) @ ( implies @ Q @ P ) ) ) ) ) ) ) ) ) & ( ? [ A :$i ] : ( {$box} @ ( ~ ( ( {$box} @ ( ( a_truth @ ( implies @ A @ A ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
