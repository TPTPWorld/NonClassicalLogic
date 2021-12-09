% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_union2_type,type,(set_union2:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET903+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : ~ ( sgtn(A) = union(B,C) & B != C & B != empty & C != empty )

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t44_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant

%             K   Unsolved     Theorem      Theorem       v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         0.75         0.25          v1.1

%             D   0.75         0.67         0.33          v1.1

%             T   0.75         0.67         0.50          v1.1

%             S4  0.75         0.67         0.50          v1.1

%             S5  0.75         0.60         0.40          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_union2_substitution_1
% removed axiom set_union2_substitution_2
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
thf(commutativity_k2_xboole_0,axiom,(![A:$i,B:$i]:((set_union2@A@B)=(set_union2@B@A)))).
thf(fc1_xboole_0,axiom,((empty@empty_set))).
thf(fc2_xboole_0,axiom,(![A:$i,B:$i]:(~((empty@A))=>~((empty@(set_union2@A@B)))))).
thf(fc3_xboole_0,axiom,(![A:$i,B:$i]:(~((empty@A))=>~((empty@(set_union2@B@A)))))).
thf(idempotence_k2_xboole_0,axiom,(![A:$i,B:$i]:((set_union2@A@A)=A))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(t43_zfmisc_1,axiom,(![A:$i,B:$i,C:$i]:~((((singleton@A)=(set_union2@B@C))&~(((B=(singleton@A))&(C=(singleton@A))))&~(((B=empty_set)&(C=(singleton@A))))&~(((B=(singleton@A))&(C=empty_set))))))).
thf(t44_zfmisc_1,conjecture,(![A:$i,B:$i,C:$i]:~((((singleton@A)=(set_union2@B@C))&~((B=C))&~((B=empty_set))&~((C=empty_set)))))).
%------------------------------------------------------------------------------