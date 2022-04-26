% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE900+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET900+1 (from TPTP-v5.0.0)

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

%             K   0.50         0.50         0.50          v1.1

%             D   0.50         0.50         0.50          v1.1

%             T   0.50         0.50         0.50          v1.1

%             S4  0.50         0.67         0.67          v1.1

%             S5  0.50         0.60         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((in@A@B)))=>($box@(~(($box@((in@B@A))))))))))))).
thf(fc1_xboole_0,axiom,($box@((empty@empty_set)))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(t41_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(~((($box@(~(($box@((A=(singleton@B)))))))&(($box@(~(($box@((A=empty_set))))))&($box@(![C:$i]:($box@(~((($box@((in@C@A)))&($box@(~(($box@((C=B)))))))))))))))))))))).
thf(l45_zfmisc_1,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(~((($box@(~(($box@((A=(singleton@B)))))))&(($box@(~(($box@((A=empty_set))))))&($box@(![C:$i]:($box@(~((($box@((in@C@A)))&($box@(~(($box@((C=B)))))))))))))))))))))).