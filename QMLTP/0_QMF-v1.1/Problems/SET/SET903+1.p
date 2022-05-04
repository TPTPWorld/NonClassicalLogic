%------------------------------------------------------------------------------
% File     : SET903+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ~ ( sgtn(A) = union(B,C) & B != C & B != empty & C != empty )
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t44_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         0.25          v1.1
%             D   0.75         0.67         0.33          v1.1
%             T   0.75         0.67         0.50          v1.1
%             S4  0.75         0.67         0.50          v1.1
%             S5  0.75         0.60         0.40          v1.1
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

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(t43_zfmisc_1,axiom,(
    ! [A,B,C] : 
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,empty_set)
            & qmltpeq(C,singleton(A)) )
        & ~ ( qmltpeq(B,singleton(A))
            & qmltpeq(C,empty_set) ) )   )).

qmf(t44_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ~ ( qmltpeq(singleton(A),set_union2(B,C))
        & ~ qmltpeq(B,C)
        & ~ qmltpeq(B,empty_set)
        & ~ qmltpeq(C,empty_set) )   )).
%------------------------------------------------------------------------------
