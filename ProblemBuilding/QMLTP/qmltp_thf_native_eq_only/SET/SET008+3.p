% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(member_type,type,(member:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(intersection_type,type,(intersection:($i>$i>$i))).
thf(difference_type,type,(difference:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET008+3 : QMLTP v1.1

% Domain   : Set Theory

% Problem  : (X \ Y) ^ Y = the empty set

% Version  : [Try90] axioms : Reduced > Incomplete.

% English  : The intersection of (the difference of X and Y) and Y is the

%            empty set.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int

%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory

%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of

% Source   : [ILF]

% Names    : BOOLE (78) [TS89]

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

%             S4  0.75         0.83         0.83          v1.1

%             S5  0.75         0.80         0.80          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom difference_substitution_1
% removed axiom difference_substitution_2
% removed axiom intersection_substitution_1
% removed axiom intersection_substitution_2
% removed axiom empty_substitution_1
% removed axiom member_substitution_1
% removed axiom member_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(intersection_defn,axiom,(![B:$i,C:$i,D:$i]:((member@D@(intersection@B@C))<=>((member@D@B)&(member@D@C))))).
thf(difference_defn,axiom,(![B:$i,C:$i,D:$i]:((member@D@(difference@B@C))<=>((member@D@B)&~((member@D@C)))))).
thf(empty_set_defn,axiom,(![B:$i]:~((member@B@empty_set)))).
thf(equal_defn,axiom,(![B:$i,C:$i]:((B=C)<=>((subset@B@C)&(subset@C@B))))).
thf(commutativity_of_intersection,axiom,(![B:$i,C:$i]:((intersection@B@C)=(intersection@C@B)))).
thf(subset_defn,axiom,(![B:$i,C:$i]:((subset@B@C)<=>![D:$i]:((member@D@B)=>(member@D@C))))).
thf(reflexivity_of_subset,axiom,(![B:$i]:(subset@B@B))).
thf(empty_defn,axiom,(![B:$i]:((empty@B)<=>![C:$i]:~((member@C@B))))).
thf(equal_member_defn,axiom,(![B:$i,C:$i]:((B=C)<=>![D:$i]:((member@D@B)<=>(member@D@C))))).
thf(prove_intersection_difference_empty_set,conjecture,(![B:$i,C:$i]:((intersection@(difference@B@C)@C)=empty_set))).
%------------------------------------------------------------------------------