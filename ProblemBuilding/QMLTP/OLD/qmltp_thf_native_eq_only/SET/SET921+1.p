% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_difference_type,type,(set_difference:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET921+1 : TPTP v51.1

% Domain   : Set theory

% Problem  : in(A,difference(B,singleton(C))) <=> ( in(A,B) & A != C )

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t64_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant

%             K   Unsolved     Unsolved     Theorem       v1.1

%             D   Theorem      Theorem      Theorem       v1.1

%             T   Theorem      Theorem      Theorem       v1.1

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         0.75          v1.1

%             D   0.75         0.83         0.67          v1.1

%             T   0.75         0.83         0.67          v1.1

%             S4  0.75         0.83         0.67          v1.1

%             S5  0.75         0.80         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

% Comments :

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_difference_substitution_1
% removed axiom set_difference_substitution_2
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
thf(antisymmetry_r2_hidden,axiom,(![A:$i,B:$i]:((in@A@B)=>~((in@B@A))))).
thf(d1_tarski,axiom,(![A:$i,B:$i]:((B=(singleton@A))<=>![C:$i]:((in@C@B)<=>(C=A))))).
thf(d4_xboole_0,axiom,(![A:$i,B:$i,C:$i]:((C=(set_difference@A@B))<=>![D:$i]:((in@D@C)<=>((in@D@A)&~((in@D@B))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(t64_zfmisc_1,conjecture,(![A:$i,B:$i,C:$i]:((in@A@(set_difference@B@(singleton@C)))<=>((in@A@B)&~((A=C)))))).
%------------------------------------------------------------------------------