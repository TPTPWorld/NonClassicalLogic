% semantics
% modalities

% propositions

% individual constants

% predicates
thf(big_q_type,type,(big_q : ($i>$o))).
thf(big_p_type,type,(big_p : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY036+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN036+1 (from TPTP-v5.0.0)
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
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( pel34 , conjecture , ( ( $box @ ( ( ( $box @ ( ( ? [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ( big_p @ Y ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_p @ Y ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) => ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) => ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) => ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) => ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) ) ) ) => ( ? [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ( big_p @ Y ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_p @ Y ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ X1 :$i ] : ( $box @ ( ! [ Y1 :$i ] : ( ( $box @ ( ( $box @ ( ( big_q @ X1 ) ) ) => ( $box @ ( ( big_q @ Y1 ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_q @ Y1 ) ) ) => ( $box @ ( ( big_q @ X1 ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) => ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) => ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) => ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) => ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) ) ) ) => ( ? [ X1 :$i ] : ( $box @ ( ! [ Y1 :$i ] : ( ( $box @ ( ( $box @ ( ( big_q @ X1 ) ) ) => ( $box @ ( ( big_q @ Y1 ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_q @ Y1 ) ) ) => ( $box @ ( ( big_q @ X1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ X1 :$i ] : ( $box @ ( ! [ Y1 :$i ] : ( ( $box @ ( ( $box @ ( ( big_q @ X1 ) ) ) => ( $box @ ( ( big_q @ Y1 ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_q @ Y1 ) ) ) => ( $box @ ( ( big_q @ X1 ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) => ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) => ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) => ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W1 :$i ] : ( $box @ ( ( big_p @ W1 ) ) ) ) ) => ( ? [ U1 :$i ] : ( $box @ ( ( big_p @ U1 ) ) ) ) ) ) ) => ( ? [ X1 :$i ] : ( $box @ ( ! [ Y1 :$i ] : ( ( $box @ ( ( $box @ ( ( big_q @ X1 ) ) ) => ( $box @ ( ( big_q @ Y1 ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_q @ Y1 ) ) ) => ( $box @ ( ( big_q @ X1 ) ) ) ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ( big_p @ Y ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_p @ Y ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) => ( ( $box @ ( ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) => ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) => ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) ) ) ) ) ) & ( $box @ ( ( ( $box @ ( ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) => ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ W :$i ] : ( $box @ ( ( big_q @ W ) ) ) ) ) => ( ? [ U :$i ] : ( $box @ ( ( big_q @ U ) ) ) ) ) ) ) => ( ? [ X :$i ] : ( $box @ ( ! [ Y :$i ] : ( ( $box @ ( ( $box @ ( ( big_p @ X ) ) ) => ( $box @ ( ( big_p @ Y ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_p @ Y ) ) ) => ( $box @ ( ( big_p @ X ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------