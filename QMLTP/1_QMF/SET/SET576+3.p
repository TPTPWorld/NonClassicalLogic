%------------------------------------------------------------------------------
% File     : SET576+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 17th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (17) [TS89]

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

qmf(intersect_defn,axiom,(
    ! [B,C] : 
      ( intersect(B,C)
    <=> ? [D] : 
          ( member(D,B)
          & member(D,C) ) ) )).

qmf(disjoint_defn,axiom,(
    ! [B,C] : 
      ( disjoint(B,C)
    <=> ~ intersect(B,C) ) )).

qmf(symmetry_of_intersect,axiom,(
    ! [B,C] : 
      ( intersect(B,C)
     => intersect(C,B) ) )).

qmf(prove_th17,conjecture,(
    ! [B,C] : 
      ( ! [D] : 
          ( member(D,B)
         => ~ member(D,C) )
     => disjoint(B,C) ) )).
%------------------------------------------------------------------------------
