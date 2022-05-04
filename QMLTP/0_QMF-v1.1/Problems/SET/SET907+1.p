%------------------------------------------------------------------------------
% File     : SET907+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ( in(A,B) & in(C,B) ) => set_union2(unordered_pair(A,C),B) = B
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t48_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.83          v1.1
%             S4  0.75         0.67         0.83          v1.1
%             S5  0.75         0.60         0.80          v1.1
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

qmf(set_union2_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(A,C),set_union2(B,C)) )   )).

qmf(set_union2_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(C,A),set_union2(C,B)) )   )).

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

qmf(in_substitution_1,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & in(A,C) )
     => in(B,C) )   )).

qmf(in_substitution_2,axiom,(
    ! [A,B,C] : 
      ( ( qmltpeq(A,B)
        & in(C,A) )
     => in(C,B) )   )).

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

qmf(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) )   )).

qmf(commutativity_k2_tarski,axiom,(
    ! [A,B] : qmltpeq(unordered_pair(A,B),unordered_pair(B,A))   )).

qmf(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_union2(A,B),set_union2(B,A))   )).

qmf(fc2_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) )   )).

qmf(fc3_xboole_0,axiom,(
    ! [A,B] : 
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) )   )).

qmf(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_union2(A,A),A)   )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A)   )).

qmf(t12_xboole_1,axiom,(
    ! [A,B] : 
      ( subset(A,B)
     => qmltpeq(set_union2(A,B),B) )   )).

qmf(t38_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) )   )).

qmf(t48_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ( ( in(A,B)
        & in(C,B) )
     => qmltpeq(set_union2(unordered_pair(A,C),B),B) )   )).
%------------------------------------------------------------------------------
