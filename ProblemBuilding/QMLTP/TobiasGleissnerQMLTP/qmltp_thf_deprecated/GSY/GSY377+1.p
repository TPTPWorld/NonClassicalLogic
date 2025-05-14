% semantics
% modalities

% propositions

% individual constants

% predicates
thf(big_p_type,type,(big_p : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY377+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN377+1 (from TPTP-v5.0.0)
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
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.33         0.17          v1.1
%             S5  0.50         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( x2128 , conjecture , ( ( $box @ ( ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ X :$i ] : ( $box @ ( ( big_p @ X ) ) ) ) => ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) => ( ? [ X :$i ] : ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ X :$i ] : ( $box @ ( ( big_p @ X ) ) ) ) => ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) => ( ? [ X :$i ] : ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) => ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ Y :$i ] : ( $box @ ( ( big_p @ Y ) ) ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------