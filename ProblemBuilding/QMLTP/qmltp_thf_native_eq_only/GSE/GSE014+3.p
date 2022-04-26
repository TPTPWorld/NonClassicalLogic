% semantics

% modalities

% propositions

% individual constants

% predicates

thf(member_type,type,(member:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
% functions

thf(union_type,type,(union:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE014+3 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET014+3 (from TPTP-v5.0.0)

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
% removed axiom union_substitution_1
% removed axiom union_substitution_2
% removed axiom member_substitution_1
% removed axiom member_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(union_defn,axiom,($box@(![B:$i]:($box@(![C:$i]:($box@(![D:$i]:(($box@(($box@((member@D@(union@B@C))))=>(($box@((member@D@B)))|($box@((member@D@C))))))&($box@((($box@((member@D@B)))|($box@((member@D@C))))=>($box@((member@D@(union@B@C)))))))))))))).
thf(subset_defn,axiom,($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((subset@B@C)))=>($box@(![D:$i]:($box@(($box@((member@D@B)))=>($box@((member@D@C)))))))))&($box@(($box@(![D:$i]:($box@(($box@((member@D@B)))=>($box@((member@D@C)))))))=>($box@((subset@B@C))))))))))).
thf(commutativity_of_union,axiom,($box@(![B:$i]:($box@(![C:$i]:($box@(((union@B@C)=(union@C@B))))))))).
thf(reflexivity_of_subset,axiom,($box@(![B:$i]:($box@((subset@B@B)))))).
thf(equal_member_defn,axiom,($box@(![B:$i]:($box@(![C:$i]:(($box@(($box@((B=C)))=>($box@(![D:$i]:(($box@(($box@((member@D@B)))=>($box@((member@D@C)))))&($box@(($box@((member@D@C)))=>($box@((member@D@B))))))))))&($box@(($box@(![D:$i]:(($box@(($box@((member@D@B)))=>($box@((member@D@C)))))&($box@(($box@((member@D@C)))=>($box@((member@D@B))))))))=>($box@((B=C))))))))))).
thf(prove_union_subset,conjecture,($box@(![B:$i]:($box@(![C:$i]:($box@(![D:$i]:($box@((($box@((subset@B@C)))&($box@((subset@D@C))))=>($box@((subset@(union@B@D)@C)))))))))))).