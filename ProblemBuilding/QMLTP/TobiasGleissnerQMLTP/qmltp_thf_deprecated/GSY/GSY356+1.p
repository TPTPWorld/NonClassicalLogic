% semantics
% modalities

% propositions

% individual constants
thf(a_type,type,(a : ($i))).
thf(b_type,type,(b : ($i))).

% predicates
thf(big_q_type,type,(big_q : ($i>$i>$o))).
thf(big_r_type,type,(big_r : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY356+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN356+1 (from TPTP-v5.0.0)
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
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.75          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   0.00         0.17         0.33          v1.1
%             S4  0.00         0.33         0.33          v1.1
%             S5  0.25         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( x2107 , conjecture , ( $box @ ( ( ( $box @ ( ( big_r @ a @ b ) ) ) & ( ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( big_r @ X @ Y ) ) ) => ( ( $box @ ( ( big_r @ Y @ X ) ) ) & ( $box @ ( ( big_q @ X @ Y ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ( $box @ ( ( big_q @ U @ V ) ) ) => ( $box @ ( ( big_q @ U @ U ) ) ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( big_q @ a @ a ) ) ) & ( $box @ ( ( big_q @ b @ b ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------