% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(intersect_type,type,(intersect : ($i>$i>$o))).
thf(member_type,type,(member : ($i>$i>$o))).

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : SET575+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 15th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :
% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (15) [TS89]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.00         0.00          v1.1
%             D   0.00         0.00         0.00          v1.1
%             T   0.00         0.00         0.00          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(intersect_defn,axiom,( ! [ B :$i,C :$i ] : ( ( intersect @ B @ C ) <=> ? [ D :$i ] : ( ( member @ D @ B ) & ( member @ D @ C ) ) ) ) ).
thf(symmetry_of_intersect,axiom,( ! [ B :$i,C :$i ] : ( ( intersect @ B @ C ) => ( intersect @ C @ B ) ) ) ).
thf(prove_th15,conjecture,( ! [ B :$i,C :$i ] : ( ( intersect @ B @ C ) => ? [ D :$i ] : ( ( member @ D @ B ) & ( member @ D @ C ) ) ) ) ).
%------------------------------------------------------------------------------
