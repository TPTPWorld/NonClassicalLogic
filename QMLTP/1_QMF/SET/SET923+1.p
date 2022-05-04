%------------------------------------------------------------------------------
% File     : SET923+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ~ ( difference(A,sgtn(B)) = empty & A != empty & A != sgtn(B) )
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t66_zfmisc_1 [Urb06]

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
%             T   0.75         0.67         0.33          v1.1
%             S4  0.75         0.67         0.33          v1.1
%             S5  0.75         0.60         0.20          v1.1
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

qmf(set_difference_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_difference(A,C),set_difference(B,C)) )   )).

qmf(set_difference_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_difference(C,A),set_difference(C,B)) )   )).

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

qmf(fc1_xboole_0,axiom,(
    empty(empty_set)   )).

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

qmf(t37_xboole_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(set_difference(A,B),empty_set)
    <=> subset(A,B) )   )).

qmf(t66_zfmisc_1,conjecture,(
    ! [A,B] : 
      ~ ( qmltpeq(set_difference(A,singleton(B)),empty_set)
        & ~ qmltpeq(A,empty_set)
        & ~ qmltpeq(A,singleton(B)) )   )).
%------------------------------------------------------------------------------
