% semantics

% modalities

% propositions

% individual constants

thf(empty_set_type,type,(empty_set:($i))).
% predicates

thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_difference_type,type,(set_difference:($i>$i>$i))).
% converted problem

%------------------------------------------------------------------------------

% File     : SET923+1 : QMLTP v1.1

% Domain   : Set theory

% Problem  : ~ ( difference(A,sgtn(B)) = empty & A != empty & A != sgtn(B) )

% Version  : [Urb06] axioms : Especial.

% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets

%          : [Urb06] Urban (2006), Email to G. Sutcliffe

% Source   : [Urb06]

% Names    : zfmisc_1__t66_zfmisc_1 [Urb06]

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

%             T   0.75         0.67         0.33          v1.1

%             S4  0.75         0.67         0.33          v1.1

%             S5  0.75         0.60         0.20          v1.1

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
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(fc1_xboole_0,axiom,((empty@empty_set))).
thf(l4_zfmisc_1,axiom,(![A:$i,B:$i]:((subset@A@(singleton@B))<=>((A=empty_set)|(A=(singleton@B)))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:(empty@A))).
thf(rc2_xboole_0,axiom,(?[A:$i]:~((empty@A)))).
thf(reflexivity_r1_tarski,axiom,(![A:$i,B:$i]:(subset@A@A))).
thf(t37_xboole_1,axiom,(![A:$i,B:$i]:(((set_difference@A@B)=empty_set)<=>(subset@A@B)))).
thf(t66_zfmisc_1,conjecture,(![A:$i,B:$i]:~((((set_difference@A@(singleton@B))=empty_set)&~((A=empty_set))&~((A=(singleton@B))))))).
%------------------------------------------------------------------------------