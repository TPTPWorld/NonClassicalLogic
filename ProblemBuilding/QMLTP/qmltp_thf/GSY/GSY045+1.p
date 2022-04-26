% semantics
% modalities

% propositions
thf(p_type,type,(p : ($o))).
thf(q_type,type,(q : ($o))).
thf(r_type,type,(r : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY045+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN045+1 (from TPTP-v5.0.0)
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
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.00         0.00          v1.1
%             D   0.00         0.00         0.00          v1.1
%             T   0.00         0.00         0.00          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( pel13 , conjecture , ( ( $box @ ( ( ( $box @ ( p ) ) | ( ( $box @ ( q ) ) & ( $box @ ( r ) ) ) ) => ( ( ( $box @ ( p ) ) | ( $box @ ( q ) ) ) & ( ( $box @ ( p ) ) | ( $box @ ( r ) ) ) ) ) ) & ( $box @ ( ( ( ( $box @ ( p ) ) | ( $box @ ( q ) ) ) & ( ( $box @ ( p ) ) | ( $box @ ( r ) ) ) ) => ( ( $box @ ( p ) ) | ( ( $box @ ( q ) ) & ( $box @ ( r ) ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------