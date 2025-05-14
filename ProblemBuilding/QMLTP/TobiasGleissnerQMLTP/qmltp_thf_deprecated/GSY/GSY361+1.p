% semantics
% modalities

% propositions

% individual constants

% predicates
thf(big_s_type,type,(big_s : ($i>$o))).
thf(big_q_type,type,(big_q : ($i>$i>$o))).
thf(big_p_type,type,(big_p : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY361+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN361+1 (from TPTP-v5.0.0)
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
%             T   Non-Theorem  Theorem      Theorem       v1.1
%             S4  Non-Theorem  Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.33         0.33          v1.1
%             S4  0.75         0.50         0.33          v1.1
%             S5  0.25         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( x2112 , conjecture , ( $box @ ( ( ( ? [ V :$i ] : ( $box @ ( ! [ X :$i ] : ( $box @ ( ( big_p @ X @ V ) ) ) ) ) ) & ( ( $box @ ( ! [ X :$i ] : ( $box @ ( ( $box @ ( ( big_s @ X ) ) ) => ( ? [ Y :$i ] : ( $box @ ( ( big_q @ Y @ X ) ) ) ) ) ) ) ) & ( $box @ ( ! [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( $box @ ( ( big_p @ X @ Y ) ) ) => ( $box @ ( ~ ( ( $box @ ( ( big_q @ X @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ U :$i ] : ( $box @ ( ~ ( ( $box @ ( ( big_s @ U ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------