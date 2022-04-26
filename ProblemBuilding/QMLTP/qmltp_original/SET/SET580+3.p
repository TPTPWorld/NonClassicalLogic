%------------------------------------------------------------------------------
% File     : SET580+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : x is in X sym Y iff x is in X iff x is not in Y
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  : x is in the symmetric difference of X and Y iff it is not the
%            case x is in X iff x is in Y.

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (23) [TS89]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Theorem       v1.1
%             D   Unsolved     Unsolved     Theorem       v1.1
%             T   Unsolved     Unsolved     Theorem       v1.1
%             S4  Unsolved     Unsolved     Theorem       v1.1
%             S5  Unsolved     Unsolved     Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         0.75          v1.1
%             D   1.00         1.00         0.83          v1.1
%             T   1.00         1.00         0.83          v1.1
%             S4  1.00         1.00         0.83          v1.1
%             S5  1.00         1.00         0.80          v1.1
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

qmf(prove_th23,conjecture,(
    ! [B,C,D] : 
      ( member(B,symmetric_difference(C,D))
    <=> ~ ( member(B,C)
        <=> member(B,D) ) )   )).
%------------------------------------------------------------------------------
