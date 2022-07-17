%------------------------------------------------------------------------------
% File     : SET002+4 : QMLTP v1.1
% Domain   : Set Theory (Naive)
% Problem  : Idempotency of union
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

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

qmf(power_set_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(power_set(A),power_set(B)) )   )).

qmf(product_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(product(A),product(B)) )   )).

qmf(singleton_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) )   )).

qmf(sum_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(sum(A),sum(B)) )   )).

qmf(union_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(A,C),union(B,C)) )   )).

qmf(union_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(union(C,A),union(C,B)) )   )).

qmf(unordered_pair_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(A,C),unordered_pair(B,C)) )   )).

qmf(unordered_pair_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(C,A),unordered_pair(C,B)) )   )).

qmf(equal_set_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & equal_set(A,C) )
     => equal_set(B,C) )   )).

qmf(equal_set_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & equal_set(C,A) )
     => equal_set(C,B) )   )).

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

qmf(subset,axiom,(
    ! [A,B] : 
      ( subset(A,B)
    <=> ! [X] : 
          ( member(X,A)
         => member(X,B) ) )   )).

qmf(equal_set,axiom,(
    ! [A,B] : 
      ( equal_set(A,B)
    <=> ( subset(A,B)
        & subset(B,A) ) )   )).

qmf(power_set,axiom,(
    ! [X,A] : 
      ( member(X,power_set(A))
    <=> subset(X,A) )   )).

qmf(intersection,axiom,(
    ! [X,A,B] : 
      ( member(X,intersection(A,B))
    <=> ( member(X,A)
        & member(X,B) ) )   )).

qmf(union,axiom,(
    ! [X,A,B] : 
      ( member(X,union(A,B))
    <=> ( member(X,A)
        | member(X,B) ) )   )).

qmf(empty_set,axiom,(
    ! [X] : ~ member(X,empty_set)   )).

qmf(difference,axiom,(
    ! [B,A,E] : 
      ( member(B,difference(E,A))
    <=> ( member(B,E)
        & ~ member(B,A) ) )   )).

qmf(singleton,axiom,(
    ! [X,A] : 
      ( member(X,singleton(A))
    <=> qmltpeq(X,A) )   )).

qmf(unordered_pair,axiom,(
    ! [X,A,B] : 
      ( member(X,unordered_pair(A,B))
    <=> ( qmltpeq(X,A)
        | qmltpeq(X,B) ) )   )).

qmf(sum,axiom,(
    ! [X,A] : 
      ( member(X,sum(A))
    <=> ? [Y] : 
          ( member(Y,A)
          & member(X,Y) ) )   )).

qmf(product,axiom,(
    ! [X,A] : 
      ( member(X,product(A))
    <=> ! [Y] : 
          ( member(Y,A)
         => member(X,Y) ) )   )).

qmf(thI14,conjecture,(
    ! [A] : equal_set(union(A,A),A)   )).
%------------------------------------------------------------------------------
