
% propositions

% individual constants

% predicates
thf(big_f_type,type,(big_f : ($i>$i>$o))).
thf(big_s_type,type,(big_s : ($i>$i>$o))).
thf(big_d_type,type,(big_d : ($i>$i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSY386+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)
% Problem  : Goedel translation of SYN386+1 (from TPTP-v5.0.0)
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
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(x2138,conjecture,( {$box} @ ( ( ( {$box} @ ( ! [ X :$i ] : ( ? [ Y :$i ] : ( {$box} @ ( ( big_f @ X @ Y ) ) ) ) ) ) & ( ( ? [ X :$i ] : ( {$box} @ ( ! [ E :$i ] : ( ? [ N :$i ] : ( {$box} @ ( ! [ W :$i ] : ( {$box} @ ( ( {$box} @ ( ( big_s @ N @ W ) ) ) => ( {$box} @ ( ( big_d @ W @ X @ E ) ) ) ) ) ) ) ) ) ) ) & ( {$box} @ ( ! [ E :$i ] : ( ? [ D :$i ] : ( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( {$box} @ ( ( big_d @ A @ B @ D ) ) ) => ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( big_f @ A @ Y ) ) ) & ( {$box} @ ( ( big_f @ B @ Z ) ) ) ) => ( {$box} @ ( ( big_d @ Y @ Z @ E ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) => ( ? [ Y :$i ] : ( {$box} @ ( ! [ E :$i ] : ( ? [ M :$i ] : ( {$box} @ ( ! [ W :$i ] : ( {$box} @ ( ( {$box} @ ( ( big_s @ M @ W ) ) ) => ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( {$box} @ ( ( big_f @ W @ Z ) ) ) => ( {$box} @ ( ( big_d @ Z @ Y @ E ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
