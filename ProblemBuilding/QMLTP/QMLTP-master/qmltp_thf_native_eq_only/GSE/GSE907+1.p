% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
thf(set_union2_type,type,(set_union2:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE907+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET907+1 (from TPTP-v5.0.0)

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
% removed axiom set_union2_substitution_1
% removed axiom set_union2_substitution_2
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(antisymmetry_r2_hidden,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((in@A@B)))=>($box@(~(($box@((in@B@A))))))))))))).
thf(commutativity_k2_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((unordered_pair@A@B)=(unordered_pair@B@A))))))))).
thf(commutativity_k2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_union2@A@B)=(set_union2@B@A))))))))).
thf(fc2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@(~(($box@((empty@A))))))=>($box@(~(($box@((empty@(set_union2@A@B)))))))))))))).
thf(fc3_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@(~(($box@((empty@A))))))=>($box@(~(($box@((empty@(set_union2@B@A)))))))))))))).
thf(idempotence_k2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_union2@A@A)=A)))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(reflexivity_r1_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@((subset@A@A)))))))).
thf(t12_xboole_1,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((subset@A@B)))=>($box@(((set_union2@A@B)=B)))))))))).
thf(t38_zfmisc_1,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((subset@(unordered_pair@A@B)@C)))=>(($box@((in@A@C)))&($box@((in@B@C))))))&($box@((($box@((in@A@C)))&($box@((in@B@C))))=>($box@((subset@(unordered_pair@A@B)@C))))))))))))).
thf(t48_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:($box@((($box@((in@A@B)))&($box@((in@C@B))))=>($box@(((set_union2@(unordered_pair@A@C)@B)=B)))))))))))).