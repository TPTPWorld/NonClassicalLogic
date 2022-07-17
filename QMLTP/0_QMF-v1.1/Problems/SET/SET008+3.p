%------------------------------------------------------------------------------
% File     : SET008+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : (X \ Y) ^ Y = the empty set
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : The intersection of (the difference of X and Y) and Y is the
%            empty set.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (78) [TS89]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
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

qmf(intersection_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(intersection(A,C),intersection(B,C)) )   )).

qmf(intersection_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(intersection(C,A),intersection(C,B)) )   )).

qmf(empty_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & empty(A) )
     => empty(B) )   )).

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

qmf(intersection_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,intersection(B,C))
    <=> ( member(D,B)
        & member(D,C) ) )   )).

qmf(difference_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) )   )).

qmf(empty_set_defn,axiom,(
    ! [B] : ~ member(B,empty_set)   )).

qmf(equal_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) )   )).

qmf(commutativity_of_intersection,axiom,(
    ! [B,C] : qmltpeq(intersection(B,C),intersection(C,B))   )).

qmf(subset_defn,axiom,(
    ! [B,C] : 
      ( subset(B,C)
    <=> ! [D] : 
          ( member(D,B)
         => member(D,C) ) )   )).

qmf(reflexivity_of_subset,axiom,(
    ! [B] : subset(B,B)   )).

qmf(empty_defn,axiom,(
    ! [B] : 
      ( empty(B)
    <=> ! [C] : ~ member(C,B) )   )).

qmf(equal_member_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ! [D] : 
          ( member(D,B)
        <=> member(D,C) ) )   )).

qmf(prove_intersection_difference_empty_set,conjecture,(
    ! [B,C] : qmltpeq(intersection(difference(B,C),C),empty_set)   )).
%------------------------------------------------------------------------------
