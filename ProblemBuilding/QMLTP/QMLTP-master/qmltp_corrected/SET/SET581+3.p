%------------------------------------------------------------------------------
% File     : SET581+3 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Trybulec's 24th Boolean property of sets
% Version  : [Try90] axioms : Reduced > Incomplete.
% English  :

% Refs     : [ILF] The ILF Group (1998), The ILF System: A Tool for the Int
%          : [Try90] Trybulec (1990), Tarski Grothendieck Set Theory
%          : [TS89]  Trybulec & Swieczkowska (1989), Boolean Properties of
% Source   : [ILF]
% Names    : BOOLE (24) [TS89]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         0.75          v1.1
%             D   0.75         0.83         0.67          v1.1
%             T   0.75         0.83         0.67          v1.1
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

qmf(not_equal_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & not_equal(A,C) )
     => not_equal(B,C) )   )).

qmf(not_equal_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & not_equal(C,A) )
     => not_equal(C,B) )   )).

qmf(intersection_defn,axiom,(
    ! [B,C,D] : 
      ( member(D,intersection(B,C))
    <=> ( member(D,B)
        & member(D,C) ) )   )).

qmf(empty_set_defn,axiom,(
    ! [B] : ~ member(B,empty_set)   )).

qmf(equal_member_defn,axiom,(
    ! [B,C] : 
      ( qmltpeq(B,C)
    <=> ! [D] : 
          ( member(D,B)
        <=> member(D,C) ) )   )).

qmf(not_equal_defn,axiom,(
    ! [B,C] : 
      ( not_equal(B,C)
    <=> ~ qmltpeq(B,C) )   )).

qmf(commutativity_of_intersection,axiom,(
    ! [B,C] : qmltpeq(intersection(B,C),intersection(C,B))   )).

qmf(empty_defn,axiom,(
    ! [B] : 
      ( empty(B)
    <=> ! [C] : ~ member(C,B) )   )).

qmf(prove_th24,conjecture,(
    ! [B,C,D] : 
      ( ( member(B,C)
        & member(B,D) )
     => not_equal(intersection(C,D),empty_set) )   )).
%------------------------------------------------------------------------------
