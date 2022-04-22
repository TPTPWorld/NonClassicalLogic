% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET900+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : ~ ( A != singleton(B) & A != empty_set & ~ ( in(C,A) & C != B ) )

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t41_zfmisc_1 [Urb06]

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

%             T   0.25         0.17         0.33          v1.1

%             S4  0.25         0.17         0.33          v1.1

%             S5  0.25         0.20         0.40          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,(![A:$i,B:$i]:((in@A@B)=>~((in@B@A))))).
thf(fc1_xboole_0,axiom,((empty@empty_set))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(t41_zfmisc_1,conjecture,(![A:$i,B:$i]:~((~((A=(singleton@B)))&~((A=empty_set))&![C:$i]:~(((in@C@A)&~((C=B)))))))).
thf(l45_zfmisc_1,axiom,(![A:$i,B:$i]:~((~((A=(singleton@B)))&~((A=empty_set))&![C:$i]:~(((in@C@A)&~((C=B)))))))).
%------------------------------------------------------------------------------