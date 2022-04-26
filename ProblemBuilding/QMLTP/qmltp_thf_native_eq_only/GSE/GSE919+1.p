% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(set_intersection2_type,type,(set_intersection2:($i>$i>$i))).
thf(singleton_type,type,(singleton:($i>$i))).
thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE919+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET919+1 (from TPTP-v5.0.0)

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

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_intersection2_substitution_1
% removed axiom set_intersection2_substitution_2
% removed axiom singleton_substitution_1
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((in@A@B)))=>($box@(~(($box@((in@B@A))))))))))))).
thf(commutativity_k2_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((unordered_pair@A@B)=(unordered_pair@B@A))))))))).
thf(commutativity_k3_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_intersection2@A@B)=(set_intersection2@B@A))))))))).
thf(d1_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:(($box@(($box@((B=(singleton@A))))=>($box@(![C:$i]:(($box@(($box@((in@C@B)))=>($box@((C=A)))))&($box@(($box@((C=A)))=>($box@((in@C@B))))))))))&($box@(($box@(![C:$i]:(($box@(($box@((in@C@B)))=>($box@((C=A)))))&($box@(($box@((C=A)))=>($box@((in@C@B))))))))=>($box@((B=(singleton@A)))))))))))).
thf(d2_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((C=(unordered_pair@A@B))))=>($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((D=A)))|($box@((D=B))))))&($box@((($box@((D=A)))|($box@((D=B))))=>($box@((in@D@C))))))))))&($box@(($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((D=A)))|($box@((D=B))))))&($box@((($box@((D=A)))|($box@((D=B))))=>($box@((in@D@C))))))))=>($box@((C=(unordered_pair@A@B)))))))))))))).
thf(d3_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((C=(set_intersection2@A@B))))=>($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((in@D@A)))&($box@((in@D@B))))))&($box@((($box@((in@D@A)))&($box@((in@D@B))))=>($box@((in@D@C))))))))))&($box@(($box@(![D:$i]:(($box@(($box@((in@D@C)))=>(($box@((in@D@A)))&($box@((in@D@B))))))&($box@((($box@((in@D@A)))&($box@((in@D@B))))=>($box@((in@D@C))))))))=>($box@((C=(set_intersection2@A@B)))))))))))))).
thf(idempotence_k3_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_intersection2@A@A)=A)))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(t60_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:($box@(($box@((in@A@B)))=>((($box@((in@C@B)))&($box@(~(($box@((A=C)))))))|($box@(((set_intersection2@(unordered_pair@A@C)@B)=(singleton@A)))))))))))))).