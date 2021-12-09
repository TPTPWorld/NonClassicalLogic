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
% converted problem

%------------------------------------------------------------------------------

% File     : SET911+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : in(A,B) => set_intersection2(B,singleton(A)) = singleton(A)

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t52_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant

%             K   Theorem      Theorem      Theorem       v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   0.00         0.00         0.00          v1.1

%             D   0.25         0.17         0.17          v1.1

%             T   0.25         0.17         0.17          v1.1

%             S4  0.25         0.17         0.17          v1.1

%             S5  0.25         0.20         0.20          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_intersection2_substitution_1
% removed axiom set_intersection2_substitution_2
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(commutativity_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@B)=(set_intersection2@B@A)))).
thf(idempotence_k3_xboole_0,axiom,(![A:$i,B:$i]:((set_intersection2@A@A)=A))).
thf(antisymmetry_r2_hidden,axiom,(![A:$i,B:$i]:((in@A@B)=>~((in@B@A))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(t52_zfmisc_1,conjecture,(![A:$i,B:$i]:((in@A@B)=>((set_intersection2@B@(singleton@A))=(singleton@A))))).
thf(l32_zfmisc_1,axiom,(![A:$i,B:$i]:((in@A@B)=>((set_intersection2@B@(singleton@A))=(singleton@A))))).
%------------------------------------------------------------------------------