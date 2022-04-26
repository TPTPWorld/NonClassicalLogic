% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(equal_set_type,type,(equal_set:($i>$i>$o))).
thf(member_type,type,(member:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(product_type,type,(product:($i>$i))).
thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
thf(intersection_type,type,(intersection:($i>$i>$i))).
thf(difference_type,type,(difference:($i>$i>$i))).
thf(sum_type,type,(sum:($i>$i))).
thf(union_type,type,(union:($i>$i>$i))).
thf(power_set_type,type,(power_set:($i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET015+4 : QMLTP v1.1

% Domain   : Set Theory (Naive)

% Problem  : Commutativity of union

% Version  : [Pas99] axioms.

% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe

% Source   : [Pas99]

% Names    :

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
% removed axiom power_set_substitution_1
% removed axiom product_substitution_1
% removed axiom singleton_substitution_1
% removed axiom sum_substitution_1
% removed axiom union_substitution_1
% removed axiom union_substitution_2
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom equal_set_substitution_1
% removed axiom equal_set_substitution_2
% removed axiom member_substitution_1
% removed axiom member_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(subset_0,axiom,(![A:$i,B:$i]:((subset@A@B)<=>![X:$i]:((member@X@A)=>(member@X@B))))).
thf(equal_set_0,axiom,(![A:$i,B:$i]:((equal_set@A@B)<=>((subset@A@B)&(subset@B@A))))).
thf(power_set_0,axiom,(![X:$i,A:$i]:((member@X@(power_set@A))<=>(subset@X@A)))).
thf(intersection_0,axiom,(![X:$i,A:$i,B:$i]:((member@X@(intersection@A@B))<=>((member@X@A)&(member@X@B))))).
thf(union_0,axiom,(![X:$i,A:$i,B:$i]:((member@X@(union@A@B))<=>((member@X@A)|(member@X@B))))).
thf(empty_set_0,axiom,(![X:$i]:~((member@X@empty_set)))).
thf(difference_0,axiom,(![B:$i,A:$i,E:$i]:((member@B@(difference@E@A))<=>((member@B@E)&~((member@B@A)))))).
thf(singleton_0,axiom,(![X:$i,A:$i]:((member@X@(singleton@A))<=>(X=A)))).
thf(unordered_pair_0,axiom,(![X:$i,A:$i,B:$i]:((member@X@(unordered_pair@A@B))<=>((X=A)|(X=B))))).
thf(sum_0,axiom,(![X:$i,A:$i]:((member@X@(sum@A))<=>?[Y:$i]:((member@Y@A)&(member@X@Y))))).
thf(product_0,axiom,(![X:$i,A:$i]:((member@X@(product@A))<=>![Y:$i]:((member@Y@A)=>(member@X@Y))))).
thf(thI07,conjecture,(![A:$i,B:$i]:(equal_set@(union@A@B)@(union@B@A)))).
%------------------------------------------------------------------------------