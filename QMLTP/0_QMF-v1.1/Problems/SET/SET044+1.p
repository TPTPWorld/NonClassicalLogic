%------------------------------------------------------------------------------
% File     : SET044+1 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Anti-Russell Sets
% Version  : Especial.
% English  : If there were an anti-Russell set (a set that contains exactly
%            those sets that are members of themselves), then not every set
%            has a complement.

% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 40 [Pel86]

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
%--------------------------------------------------------------------------

qmf(pel40,conjecture,
    ( ? [Y] : 
      ! [X] : 
        ( element(X,Y)
      <=> element(X,X) )
   => ~ ( ! [X1] : 
          ? [Y1] : 
          ! [Z] : 
            ( element(Z,Y1)
          <=> ~ element(Z,X1) ) ) )).
%------------------------------------------------------------------------------
