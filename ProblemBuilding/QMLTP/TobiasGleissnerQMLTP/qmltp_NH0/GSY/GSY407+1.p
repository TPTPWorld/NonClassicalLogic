
% propositions

% individual constants

% predicates
thf(f_type,type,(f : ($i>$o))).
thf(g_type,type,(g : ($i>$o))).
thf(h_type,type,(h : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY407+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN407+1 (from TPTP-v5.0.0)
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
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(kalish241,conjecture,( {$box} @ ( ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( {$box} @ ( ( f @ X ) ) ) => ( ( {$box} @ ( ( g @ X ) ) ) | ( {$box} @ ( ( h @ X ) ) ) ) ) ) ) ) => ( ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( f @ Y ) ) ) => ( {$box} @ ( ( g @ Y ) ) ) ) ) ) ) | ( ? [ Z :$i ] : ( ( {$box} @ ( ( f @ Z ) ) ) & ( {$box} @ ( ( h @ Z ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
