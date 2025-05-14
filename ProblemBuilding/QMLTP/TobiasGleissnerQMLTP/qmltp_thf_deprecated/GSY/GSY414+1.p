% semantics
% modalities

% propositions

% individual constants

% predicates
thf(f_type,type,(f : ($i>$o))).
thf(g_type,type,(g : ($i>$o))).
thf(h_type,type,(h : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY414+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN414+1 (from TPTP-v5.0.0)
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
thf ( kalish265 , conjecture , ( ( $box @ ( ( $box @ ( ! [ X :$i ] : ( $box @ ( ( ? [ Y :$i ] : ( ( $box @ ( ( h @ X @ Y ) ) ) & ( $box @ ( ( f @ Y ) ) ) ) ) => ( ? [ Z :$i ] : ( ( $box @ ( ( h @ X @ Z ) ) ) & ( $box @ ( ( g @ Z ) ) ) ) ) ) ) ) ) => ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ( ( $box @ ( ( h @ U @ V ) ) ) & ( $box @ ( ( f @ V ) ) ) ) => ( ( $box @ ( ( h @ U @ W ) ) ) & ( $box @ ( ( g @ W ) ) ) ) ) ) ) ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ U :$i ] : ( $box @ ( ! [ V :$i ] : ( $box @ ( ! [ W :$i ] : ( $box @ ( ( ( $box @ ( ( h @ U @ V ) ) ) & ( $box @ ( ( f @ V ) ) ) ) => ( ( $box @ ( ( h @ U @ W ) ) ) & ( $box @ ( ( g @ W ) ) ) ) ) ) ) ) ) ) ) ) => ( $box @ ( ! [ X :$i ] : ( $box @ ( ( ? [ Y :$i ] : ( ( $box @ ( ( h @ X @ Y ) ) ) & ( $box @ ( ( f @ Y ) ) ) ) ) => ( ? [ Z :$i ] : ( ( $box @ ( ( h @ X @ Z ) ) ) & ( $box @ ( ( g @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------