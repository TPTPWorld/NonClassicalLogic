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

qmf(empty_set_defn,axiom,(
    ! [B] : ~ member(B,empty_set) )).

qmf(subset_defn,axiom,(
    ! [B,C] : 
      ( subset(B,C)
    <=> ! [D] : 
          ( member(D,B)
         => member(D,C) ) ) )).

qmf(reflexivity_of_subset,axiom,(
    ! [B] : subset(B,B) )).

qmf(empty_defn,axiom,(
    ! [B] : 
      ( empty(B)
    <=> ! [C] : ~ member(C,B) ) )).

qmf(prove_empty_set_subset,conjecture,(
    ! [B] : subset(empty_set,B) )).
%------------------------------------------------------------------------------
