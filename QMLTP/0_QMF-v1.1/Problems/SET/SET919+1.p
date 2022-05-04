%------------------------------------------------------------------------------
% File     : SET919+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : in(A,B) => ((in(C,B) & A!=C) | intsctn(uno_pair(A,C),B) = sgtn(A))
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t60_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Theorem      Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         0.83         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
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

qmf(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) )   )).

qmf(commutativity_k2_tarski,axiom,(
    ! [A,B] : qmltpeq(unordered_pair(A,B),unordered_pair(B,A))   )).

qmf(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_intersection2(A,B),set_intersection2(B,A))   )).

qmf(d1_tarski,axiom,(
    ! [A,B] : 
      ( qmltpeq(B,singleton(A))
    <=> ! [C] : 
          ( in(C,B)
        <=> qmltpeq(C,A) ) )   )).

qmf(d2_tarski,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(C,unordered_pair(A,B))
    <=> ! [D] : 
          ( in(D,C)
        <=> ( qmltpeq(D,A)
            | qmltpeq(D,B) ) ) )   )).

qmf(d3_xboole_0,axiom,(
    ! [A,B,C] : 
      ( qmltpeq(C,set_intersection2(A,B))
    <=> ! [D] : 
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) )   )).

qmf(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : qmltpeq(set_intersection2(A,A),A)   )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A)   )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A)   )).

qmf(t60_zfmisc_1,conjecture,(
    ! [A,B,C] : 
      ( in(A,B)
     => ( ( in(C,B)
          & ~ qmltpeq(A,C) )
        | qmltpeq(set_intersection2(unordered_pair(A,C),B),singleton(A)) ) )   )).
%------------------------------------------------------------------------------
