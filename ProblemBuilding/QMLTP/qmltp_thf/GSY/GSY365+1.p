% semantics
% modalities

% propositions

% individual constants

% predicates
thf(big_r_type,type,(big_r : ($i>$i>$o))).
thf(big_p_type,type,(big_p : ($i>$o))).

% functions
thf(g_type,type,(g : ($i>$i))).
thf(h_type,type,(h : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSY365+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN365+1 (from TPTP-v5.0.0)
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
%             K   Unsolved     Unsolved     Theorem       v1.1
%             D   Unsolved     Theorem      Theorem       v1.1
%             T   Unsolved     Theorem      Theorem       v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Unsolved     Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         0.75          v1.1
%             D   1.00         0.83         0.83          v1.1
%             T   1.00         0.83         0.83          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  1.00         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( x2116 , conjecture , ( $box @ ( ( ( $box @ ( ! [ X :$i ] : ( ? [ Y :$i ] : ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( ( $box @ ( ( big_r @ X @ ( g @ ( h @ Y ) ) ) ) ) & ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) ) ) & ( $box @ ( ! [ W :$i ] : ( $box @ ( ( $box @ ( ( big_p @ W ) ) ) => ( ( $box @ ( ( big_p @ ( g @ W ) ) ) ) & ( $box @ ( ( big_p @ ( h @ W ) ) ) ) ) ) ) ) ) ) => ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( ? [ Y :$i ] : ( ( $box @ ( ( big_r @ X @ Y ) ) ) & ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------