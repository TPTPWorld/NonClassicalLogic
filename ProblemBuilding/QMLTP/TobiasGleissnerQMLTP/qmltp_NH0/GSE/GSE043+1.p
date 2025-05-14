
% propositions

% individual constants

% predicates
thf(element_type,type,(element : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : GSE043+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)
% Problem  : Goedel translation of SET043+1 (from TPTP-v5.0.0)
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
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   0.00         0.33         0.33          v1.1
%             S4  0.25         0.33         0.33          v1.1
%             S5  0.00         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(pel39,conjecture,( {$box} @ ( ~ ( ( ? [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( ( {$box} @ ( ( {$box} @ ( ( element @ Y @ X ) ) ) => ( {$box} @ ( ~ ( ( {$box} @ ( ( element @ Y @ Y ) ) ) ) ) ) ) ) & ( {$box} @ ( ( {$box} @ ( ~ ( ( {$box} @ ( ( element @ Y @ Y ) ) ) ) ) ) => ( {$box} @ ( ( element @ Y @ X ) ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
