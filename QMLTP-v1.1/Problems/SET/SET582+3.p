%------------------------------------------------------------------------------
% File     : SET582+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : If x not in X iff x in Y iff x in Z, then X = Y sym\ Z
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : If for every x : x is not in X iff x is in Y iff x is in Z,
%            then X is the symmetric difference of Y and Z.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (25) [TS89]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
% Comments :
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,(
    ! [X] : qmltpeq(X,X)   )).

qmf(symmetry,axiom,(
    ! [X,Y] : 
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) )   )).

qmf(transitivity,axiom,(
    ! [X,Y,Z] : 
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) )   )).

qmf(difference_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(difference(A,C),difference(B,C)) )   )).

qmf(difference_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(difference(C,A),difference(C,B)) )   )).

qmf(symmetric_difference_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(symmetric_difference(A,C),symmetric_difference(B,C)) )   )).

qmf(symmetric_difference_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(symmetric_difference(C,A),symmetric_difference(C,B)) )   )).

qmf(union_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(A,C),union(B,C)) )   )).

qmf(union_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(C,A),union(C,B)) )   )).

qmf(member_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & member(A,C) )
     => member(B,C) )   )).

qmf(member_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & member(C,A) )
     => member(C,B) )   )).

qmf(subset_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & subset(A,C) )
     => subset(B,C) )   )).

qmf(subset_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & subset(C,A) )
     => subset(C,B) )   )).

qmf(member_equal,axiom,(
    ! [B,C] : 
      ( ! [D] : 
          ( member(D,B)
        <=> member(D,C) )
     => qmltpeq(B,C) )   )).

qmf(union_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,union(B,C))
    <=> ( member(D,B)
        | member(D,C) ) )   )).

qmf(difference_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) )   )).

qmf(symmetric_difference_defn,axiom,(
    ! [B,C] : qmltpeq(symmetric_difference(B,C),union(difference(B,C),difference(C,B)))   )).

qmf(equal_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) )   )).

qmf(commutativity_of_union,axiom,(
    ! [B,C] : qmltpeq(union(B,C),union(C,B))   )).

qmf(commutativity_of_symmetric_difference,axiom,(
    ! [B,C] : qmltpeq(symmetric_difference(B,C),symmetric_difference(C,B))   )).

qmf(equal_member_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ! [D] : 
          ( member(D,B)
        <=> member(D,C) ) )   )).

qmf(subset_defn,axiom,(
    ! [B,C] : 
      ( subset(B,C)
    <=> ! [D] : 
          ( member(D,B)
         => member(D,C) ) )   )).

qmf(reflexivity_of_subset,axiom,(
    ! [B] : subset(B,B)   )).

qmf(prove_th25,conjecture,(
    ! [B,C,D] : 
      ( ! [E] : 
          ( ~ member(E,B)
        <=> ( member(E,C)
          <=> member(E,D) ) )
     => qmltpeq(B,symmetric_difference(C,D)) )   )).
%------------------------------------------------------------------------------
