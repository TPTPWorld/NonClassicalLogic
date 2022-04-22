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

% converted problem

%------------------------------------------------------------------------------

% File     : SET063+3 : QMLTP v1.1

% Domain   : Set Theory

% Problem  : If X is a subset of the empty set, then X is the empty set

% Version  : [Try90] axioms : Reduced > Incomplete.

% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int

%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory

%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of

% Source   : [ILF]

% Names    : BOOLE (30) [TS89]

% Status   :      varying      cumulative   constant

%             K   Unsolved     Theorem      Theorem       v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         0.50         0.00          v1.1

%             D   0.75         0.50         0.17          v1.1

%             T   0.75         0.50         0.33          v1.1

%             S4  0.50         0.50         0.33          v1.1

%             S5  0.75         0.60         0.20          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom empty_substitution_1
% removed axiom member_substitution_1
% removed axiom member_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(empty_set_subset,axiom,(![B:$i]:(subset@empty_set@B))).
thf(empty_set_defn,axiom,(![B:$i]:~((member@B@empty_set)))).
thf(subset_defn,axiom,(![B:$i,C:$i]:((subset@B@C)<=>![D:$i]:((member@D@B)=>(member@D@C))))).
thf(equal_defn,axiom,(![B:$i,C:$i]:((B=C)<=>((subset@B@C)&(subset@C@B))))).
thf(reflexivity_of_subset,axiom,(![B:$i]:(subset@B@B))).
thf(empty_defn,axiom,(![B:$i]:((empty@B)<=>![C:$i]:~((member@C@B))))).
thf(prove_subset_of_empty_set_is_empty_set,conjecture,(![B:$i]:((subset@B@empty_set)=>(B=empty_set)))).
%------------------------------------------------------------------------------