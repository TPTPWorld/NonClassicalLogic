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

%------------------------------------------------------------------------------

% File     : SET577+3 : QMLTP v1.1

% Domain   : Set Theory

% Problem  : Trybulec's 18th Boolean property of sets

% Version  : [Try90] axioms : Reduced > Incomplete.

% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int

%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory

%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of

% Source   : [ILF]

% Names    : BOOLE (18) [TS89]

% Status   :      varying      cumulative   constant

%             K   Unsolved     Unsolved     Unsolved      v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         1.00          v1.1

%             D   0.75         0.83         0.83          v1.1

%             T   0.75         0.83         0.83          v1.1

%             S4  0.75         0.83         0.67          v1.1

%             S5  0.75         0.80         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

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
thf(union_defn,axiom,(![B:$i,C:$i,D:$i]:((member@D@(union@B@C))<=>((member@D@B)|(member@D@C))))).
thf(equal_defn,axiom,(![B:$i,C:$i]:((B=C)<=>((subset@B@C)&(subset@C@B))))).
thf(commutativity_of_union,axiom,(![B:$i,C:$i]:((union@B@C)=(union@C@B)))).
thf(subset_defn,axiom,(![B:$i,C:$i]:((subset@B@C)<=>![D:$i]:((member@D@B)=>(member@D@C))))).
thf(reflexivity_of_subset,axiom,(![B:$i]:(subset@B@B))).
thf(equal_member_defn,axiom,(![B:$i,C:$i]:((B=C)<=>![D:$i]:((member@D@B)<=>(member@D@C))))).
thf(prove_th18,conjecture,(![B:$i,C:$i,D:$i]:(![E:$i]:((member@E@B)<=>((member@E@C)|(member@E@D)))=>(B=(union@C@D))))).
%------------------------------------------------------------------------------