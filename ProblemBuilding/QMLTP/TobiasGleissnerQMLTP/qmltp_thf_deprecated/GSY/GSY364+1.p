% semantics
% modalities

% propositions

% individual constants

% predicates
thf(big_q_type,type,(big_q : ($i>$o))).
thf(big_p_type,type,(big_p : ($i>$i>$o))).
thf(big_m_type,type,(big_m : ($i>$o))).

% functions
thf(f_type,type,(f : ($i>$i>$i))).
thf(g_type,type,(g : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSY364+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN364+1 (from TPTP-v5.0.0)
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
%             T   0.75         0.83         0.67          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( x2115 , conjecture , ( $box @ ( ( ( $box @ ( ! [ X :$i ] : ( $box @ ( ( ? [ Y :$i ] : ( $box @ ( ( big_p @ X @ Y ) ) ) ) => ( $box @ ( ! [ Z :$i ] : ( $box @ ( ( big_p @ Z @ Z ) ) ) ) ) ) ) ) ) & ( ( $box @ ( ! [ U :$i ] : ( ? [ V :$i ] : ( ( $box @ ( ( big_p @ U @ V ) ) ) | ( ( $box @ ( ( big_m @ U ) ) ) & ( $box @ ( ( big_q @ ( f @ U @ V ) ) ) ) ) ) ) ) ) & ( $box @ ( ! [ W :$i ] : ( $box @ ( ( $box @ ( ( big_q @ W ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( big_m @ ( g @ W ) ) ) ) ) ) ) ) ) ) ) ) ) => ( $box @ ( ! [ U :$i ] : ( ? [ V :$i ] : ( ( $box @ ( ( big_p @ ( g @ U ) @ V ) ) ) & ( $box @ ( ( big_p @ U @ U ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------