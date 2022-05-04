%------------------------------------------------------------------------------
% File     : SET902+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : Basic properties of sets, theorem 43
% Version  : [Urb06] axioms : Especial.
% English  : ~ ( singleton(A) = set_union2(B,C) & ~ ( B = singleton(A) &
%            C = singleton(A) ) & ~ ( B = empty_set & C = singleton(A) ) &
%            ~ ( B = singleton(A) & C = empty_set ) )

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t43_zfmisc_1 [Urb06]

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

qmf(set_union2_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(A,C),set_union2(B,C)) )   )).

qmf(set_union2_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_union2(C,A),set_union2(C,B)) )   )).

qmf(singleton_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) )   )).

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

qmf(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_union2(A,B),set_union2(B,A))   )).

qmf(fc1_xboole_0,axiom,(
    empty(empty_set)   )).

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

qmf(l1_zfmisc_1,axiom,(
    ! [A] : ~ qmltpeq(singleton(A),empty_set)   )).

qmf(l4_zfmisc_1,axiom,(
    ! [A,B] : 
      ( subset(A,singleton(B))
    <=> ( qmltpeq(A,empty_set)
        | qmltpeq(A,singleton(B)) ) )   )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A)   )).

qmf(t43_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,empty_set)
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,empty_set) ) )   )).

qmf(t7_xboole_1,axiom,(
    ! [A,B] : subset(A,set_union2(A,B))   )).
%------------------------------------------------------------------------------
