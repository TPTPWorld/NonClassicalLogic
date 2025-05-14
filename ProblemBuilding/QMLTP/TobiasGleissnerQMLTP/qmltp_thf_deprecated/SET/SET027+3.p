% semantics
% modalities

% propositions

% individual constants

% predicates
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : SET027+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Transitivity of subset
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If X is a subset of Y and Y is a subset of Z, then X is a
%            subset of Z.
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (29) [TS89]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.25         0.25          v1.1
%             D   0.25         0.33         0.33          v1.1
%             T   0.25         0.33         0.33          v1.1
%             S4  0.25         0.33         0.33          v1.1
%             S5  0.25         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( subset_defn , axiom , ( ! [ B :$i , C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ) .
thf ( reflexivity_of_subset , axiom , ( ! [ B :$i ] : ( subset @ B @ B ) ) ) .
thf ( prove_transitivity_of_subset , conjecture , ( ! [ B :$i , C :$i , D :$i ] : ( ( ( subset @ B @ C ) & ( subset @ C @ D ) ) => ( subset @ B @ D ) ) ) ) .
%------------------------------------------------------------------------------