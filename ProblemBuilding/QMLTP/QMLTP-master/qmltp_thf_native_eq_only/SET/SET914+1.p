% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(disjoint_type,type,(disjoint:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(set_intersection2_type,type,(set_intersection2:($i>$i>$i))).
thf(unordered_pair_type,type,(unordered_pair:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET914+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : ~ ( disjoint(unordered_pair(A,B),C) & in(A,C) )

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t55_zfmisc_1 [Urb06]

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
% removed axiom set_intersection2_substitution_1
% removed axiom set_intersection2_substitution_2
% removed axiom unordered_pair_substitution_1
% removed axiom unordered_pair_substitution_2
% removed axiom disjoint_substitution_1
% removed axiom disjoint_substitution_2
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,(![A:$i,B:$i]:((in@A@B)=>~((in@B@A))))).
thf(commutativity_k2_tarski,axiom,(![A:$i,B:$i]:((unordered_pair@A@B)=(unordered_pair@B@A)))).
thf(commutativity_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@B)=(set_intersection2@B@A)))).
thf(d1_xboole_0,axiom,(![A:$i]:((A=empty_set)<=>![B:$i]:~((in@B@A))))).
thf(d2_tarski,axiom,(![A:$i,B:$i,C:$i]:((C=(unordered_pair@A@B))<=>![D:$i]:((in@D@C)<=>((D=A)|(D=B)))))).
thf(d3_xboole_0,axiom,(![A:$i,B:$i,C:$i]:((C=(set_intersection2@A@B))<=>![D:$i]:((in@D@C)<=>((in@D@A)&(in@D@B)))))).
thf(d7_xboole_0,axiom,(![A:$i,B:$i]:((disjoint@A@B)<=>((set_intersection2@A@B)=empty_set)))).
thf(fc1_xboole_0,axiom,((empty@empty_set))).
thf(idempotence_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@A)=A))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(symmetry_r1_xboole_0,axiom,(![A:$i,B:$i]:((disjoint@A@B)=>(disjoint@B@A)))).
thf(t55_zfmisc_1,conjecture,(![A:$i,B:$i,C:$i]:~(((disjoint@(unordered_pair@A@B)@C)&(in@A@C))))).
%------------------------------------------------------------------------------