%------------------------------------------------------------------------------
% File     : SET577+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 18th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (18) [TS89]

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
%             S4  0.75         0.83         0.67          v1.1
%             S5  0.75         0.80         0.60          v1.1
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

qmf(union_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,union(B,C))
    <=> ( member(D,B)
        | member(D,C) ) )   )).

qmf(equal_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ( subset(B,C)
        & subset(C,B) ) )   )).

qmf(commutativity_of_union,axiom,(
    ! [B,C] : qmltpeq(union(B,C),union(C,B))   )).

qmf(subset_defn,axiom,(
    ! [B,C] : 
      ( subset(B,C)
    <=> ! [D] : 
          ( member(D,B)
         => member(D,C) ) )   )).

qmf(reflexivity_of_subset,axiom,(
    ! [B] : subset(B,B)   )).

qmf(equal_member_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ! [D] : 
          ( member(D,B)
        <=> member(D,C) ) )   )).

qmf(prove_th18,conjecture,(
    ! [B,C,D] : 
      ( ! [E] : 
          ( member(E,B)
        <=> ( member(E,C)
            | member(E,D) ) )
     => qmltpeq(B,union(C,D)) )   )).
%------------------------------------------------------------------------------
