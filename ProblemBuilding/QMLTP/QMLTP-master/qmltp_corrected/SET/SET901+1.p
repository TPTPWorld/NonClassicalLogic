%------------------------------------------------------------------------------
% File     : SET901+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : Basic properties of sets, theorem 42
% Version  : [Urb06] axioms : Especial.
% English  : subset(A,unordered_pair(B,C)) <=> ~ ( A != empty_set &
%            A != singleton(B) & A != singleton(C) & A != unordered_pair(B,C) )

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t42_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant   
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.00         0.00         0.00          v1.1
%             D   0.25         0.17         0.17          v1.1
%             T   0.25         0.17         0.17          v1.1
%             S4  0.25         0.17         0.17          v1.1
%             S5  0.25         0.20         0.20          v1.1
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

qmf(singleton_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) )   )).

qmf(unordered_pair_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(A,C),unordered_pair(B,C)) )   )).

qmf(unordered_pair_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(unordered_pair(C,A),unordered_pair(C,B)) )   )).

qmf(empty_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & empty(A) )
     => empty(B) )   )).

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

qmf(commutativity_k2_tarski,axiom,(
    ! [A,B] : qmltpeq(unordered_pair(A,B),unordered_pair(B,A))   )).

qmf(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A)   )).

qmf(fc1_xboole_0,axiom,(
    empty(empty_set)   )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(t42_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ( subset(A,unordered_pair(B,C))
    <=> ~ ( ~ qmltpeq(A,empty_set)
          & ~ qmltpeq(A,singleton(B))
          & ~ qmltpeq(A,singleton(C))
          & ~ qmltpeq(A,unordered_pair(B,C)) ) )   )).

qmf(l46_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( subset(A,unordered_pair(B,C))
    <=> ~ ( ~ qmltpeq(A,empty_set)
          & ~ qmltpeq(A,singleton(B))
          & ~ qmltpeq(A,singleton(C))
          & ~ qmltpeq(A,unordered_pair(B,C)) ) )   )).
%------------------------------------------------------------------------------
