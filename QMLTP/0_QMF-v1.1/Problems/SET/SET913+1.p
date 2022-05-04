%------------------------------------------------------------------------------
% File     : SET913+1 : QMLTP v1.1
% Domain   : Set theory
% Problem  : ~ ( disjoint(singleton(A),B) & in(A,B) )
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t54_zfmisc_1 [Urb06]

% Status   :      varying      cumulative   constant   
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.00         0.00         0.00          v1.1
%             D   0.00         0.00         0.00          v1.1
%             T   0.00         0.00         0.00          v1.1
%             S4  0.00         0.00         0.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%------------------------------------------------------------------------------

qmf(symmetry_r1_xboole_0,axiom,(
    ! [A,B] : 
      ( disjoint(A,B)
     => disjoint(B,A) ) )).

qmf(antisymmetry_r2_hidden,axiom,(
    ! [A,B] : 
      ( in(A,B)
     => ~ in(B,A) ) )).

qmf(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

qmf(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

qmf(t54_zfmisc_1,conjecture,(
    ! [A,B] : 
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).

qmf(l25_zfmisc_1,axiom,(
    ! [A,B] : 
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) )).
%------------------------------------------------------------------------------
