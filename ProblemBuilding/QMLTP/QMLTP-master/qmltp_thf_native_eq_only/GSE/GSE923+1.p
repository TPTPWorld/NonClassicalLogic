% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_difference_type,type,(set_difference:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE923+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET923+1 (from TPTP-v5.0.0)

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

%             T   0.75         0.83         0.83          v1.1

%             S4  0.75         0.83         0.83          v1.1

%             S5  0.75         0.80         0.80          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_difference_substitution_1
% removed axiom set_difference_substitution_2
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(fc1_xboole_0,axiom,($box@((empty@empty_set)))).
thf(l4_zfmisc_1,axiom,($box@(![A:$i]:($box@(![B:$i]:(($box@(($box@((subset@A@(singleton@B))))=>(($box@((A=empty_set)))|($box@((A=(singleton@B)))))))&($box@((($box@((A=empty_set)))|($box@((A=(singleton@B)))))=>($box@((subset@A@(singleton@B)))))))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(reflexivity_r1_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@((subset@A@A)))))))).
thf(t37_xboole_1,axiom,($box@(![A:$i]:($box@(![B:$i]:(($box@(($box@(((set_difference@A@B)=empty_set)))=>($box@((subset@A@B)))))&($box@(($box@((subset@A@B)))=>($box@(((set_difference@A@B)=empty_set))))))))))).
thf(t66_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(~((($box@(((set_difference@A@(singleton@B))=empty_set)))&(($box@(~(($box@((A=empty_set))))))&($box@(~(($box@((A=(singleton@B))))))))))))))))).