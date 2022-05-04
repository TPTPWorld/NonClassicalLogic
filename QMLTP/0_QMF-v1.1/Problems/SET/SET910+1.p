%------------------------------------------------------------------------------
% File     : SET910+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : intersection(A,singleton(B)) = singleton(B) => in(B,A)
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t51_zfmisc_1 [Urb06]

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

qmf(set_intersection2_substitution_1,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_intersection2(A,C),set_intersection2(B,C)) )   )).

qmf(set_intersection2_substitution_2,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(A,B)
     => qmltpeq(set_intersection2(C,A),set_intersection2(C,B)) )   )).

qmf(singleton_substitution_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(A,B)
     => qmltpeq(singleton(A),singleton(B)) )   )).

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

qmf(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_intersection2(A,B),set_intersection2(B,A))   )).

qmf(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_intersection2(A,A),A)   )).

qmf(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) )   )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(t51_zfmisc_1,conjecture,(
    ! [A,B] : 
      ( qmltpeq(set_intersection2(A,singleton(B)),singleton(B))
     => in(B,A) )   )).

qmf(l30_zfmisc_1,axiom,(
    ! [A,B] : 
      ( qmltpeq(set_intersection2(A,singleton(B)),singleton(B))
     => in(B,A) )   )).
%------------------------------------------------------------------------------
