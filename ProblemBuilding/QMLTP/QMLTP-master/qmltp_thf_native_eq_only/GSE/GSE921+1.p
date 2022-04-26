% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_difference_type,type,(set_difference:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE921+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET921+1 (from TPTP-v5.0.0)

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

%             S5  Unsolved     Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         1.00          v1.1

%             D   1.00         1.00         1.00          v1.1

%             T   1.00         1.00         1.00          v1.1

%             S4  1.00         0.83         0.83          v1.1

%             S5  1.00         0.80         0.80          v1.1

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
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((in@A@B)))=>($box@(~(($box@((in@B@A))))))))))))).
thf(d1_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:(($box@(($box@((B=(singleton@A))))=>($box@(![C:$i]:(($box@(($box@((in@C@B)))=>($box@((C=A)))))&($box@(($box@((C=A)))=>($box@((in@C@B))))))))))&($box@(($box@(![C:$i]:(($box@(($box@((in@C@B)))=>($box@((C=A)))))&($box@(($box@((C=A)))=>($box@((in@C@B))))))))=>($box@((B=(singleton@A)))))))))))).
thf(d4_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((C=(set_difference@A@B))))=>($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((in@D@A)))&($box@(~(($box@((in@D@B)))))))))&($box@((($box@((in@D@A)))&($box@(~(($box@((in@D@B)))))))=>($box@((in@D@C))))))))))&($box@(($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((in@D@A)))&($box@(~(($box@((in@D@B)))))))))&($box@((($box@((in@D@A)))&($box@(~(($box@((in@D@B)))))))=>($box@((in@D@C))))))))=>($box@((C=(set_difference@A@B)))))))))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(t64_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((in@A@(set_difference@B@(singleton@C)))))=>(($box@((in@A@B)))&($box@(~(($box@((A=C)))))))))&($box@((($box@((in@A@B)))&($box@(~(($box@((A=C)))))))=>($box@((in@A@(set_difference@B@(singleton@C))))))))))))))).