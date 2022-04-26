% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(set_intersection2_type,type,(set_intersection2:($i>$i>$i))).
thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET912+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : ( in(A,B) & in(C,B) ) => intsctn(uno_pair(A,C),B) = uno_pair(A,C)

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t53_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant

%             K   Unsolved     Theorem      Theorem       v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         0.75         0.50          v1.1

%             D   0.75         0.67         0.50          v1.1

%             T   0.75         0.67         0.67          v1.1

%             S4  0.75         0.67         0.67          v1.1

%             S5  0.75         0.60         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_intersection2_substitution_1
% removed axiom set_intersection2_substitution_2
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(antisymmetry_r2_hidden,axiom,(![A:$i,B:$i]:((in@A@B)=>~((in@B@A))))).
thf(commutativity_k2_tarski,axiom,(![A:$i,B:$i]:((unordered_pair@A@B)=(unordered_pair@B@A)))).
thf(commutativity_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@B)=(set_intersection2@B@A)))).
thf(idempotence_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@A)=A))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(reflexivity_r1_tarski,axiom,(![A:$i,B:$i]:(subset@A@A))).
thf(t28_xboole_1,axiom,(![A:$i,B:$i]:((subset@A@B)=>((set_intersection2@A@B)=A)))).
thf(t38_zfmisc_1,axiom,(![A:$i,B:$i,C:$i]:((subset@(unordered_pair@A@B)@C)<=>((in@A@C)&(in@B@C))))).
thf(t53_zfmisc_1,conjecture,(![A:$i,B:$i,C:$i]:(((in@A@B)&(in@C@B))=>((set_intersection2@(unordered_pair@A@C)@B)=(unordered_pair@A@C))))).
%------------------------------------------------------------------------------