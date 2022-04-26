% semantics
% modalities

% propositions
thf(p_type,type,(p : ($o))).

% individual constants

% predicates
thf(big_f_type,type,(big_f : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY052+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN052+1 (from TPTP-v5.0.0)
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( pel22 , conjecture , ( $box @ ( ( $box @ ( ! [ X :$i ] : ( ( $box @ ( ( $box @ ( p ) ) => ( $box @ ( ( big_f @ X ) ) ) ) ) & ( $box @ ( ( $box @ ( ( big_f @ X ) ) ) => ( $box @ ( p ) ) ) ) ) ) ) => ( ( $box @ ( ( $box @ ( p ) ) => ( $box @ ( ! [ X1 :$i ] : ( $box @ ( ( big_f @ X1 ) ) ) ) ) ) ) & ( $box @ ( ( $box @ ( ! [ X1 :$i ] : ( $box @ ( ( big_f @ X1 ) ) ) ) ) => ( $box @ ( p ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------