% semantics
% modalities

% propositions

% individual constants
thf(empty_set_type,type,(empty_set : ($i))).

% predicates
thf(member_type,type,(member : ($i>$i>$o))).
thf(subset_type,type,(subset : ($i>$i>$o))).
thf(empty_type,type,(empty : ($i>$o))).

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : SET062+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : The empty set is a subset of X
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (27) [TS89]
% Status   :      varying      cumulative   constant
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.50         0.00          v1.1
%             D   0.50         0.33         0.00          v1.1
%             T   0.50         0.33         0.00          v1.1
%             S4  0.50         0.33         0.00          v1.1
%             S5  0.50         0.40         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( empty_set_defn , axiom , ( ! [ B :$i ] : ~ ( ( member @ B @ empty_set ) ) ) ) .
thf ( subset_defn , axiom , ( ! [ B :$i , C :$i ] : ( ( subset @ B @ C ) <=> ! [ D :$i ] : ( ( member @ D @ B ) => ( member @ D @ C ) ) ) ) ) .
thf ( reflexivity_of_subset , axiom , ( ! [ B :$i ] : ( subset @ B @ B ) ) ) .
thf ( empty_defn , axiom , ( ! [ B :$i ] : ( ( empty @ B ) <=> ! [ C :$i ] : ~ ( ( member @ C @ B ) ) ) ) ) .
thf ( prove_empty_set_subset , conjecture , ( ! [ B :$i ] : ( subset @ empty_set @ B ) ) ) .
%------------------------------------------------------------------------------