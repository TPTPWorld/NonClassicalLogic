%------------------------------------------------------------------------------
% File     : SET047+1 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Set equality is symmetric
% Version  : Especial.
% English  : TPTP problem SET047+1.p with axiomatized equality

% Refs     : [DeC79] DeChampeaux (1979), Sub-problem Finder and Instance Ch
%          : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Pel86]
% Names    : Pelletier 43 [Pel86]

% Status   :      varying      cumulative   constant   
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.00         0.25         0.50          v1.1
%             D   0.25         0.33         0.50          v1.1
%             T   0.25         0.33         0.50          v1.1
%             S4  0.25         0.33         0.50          v1.1
%             S5  0.25         0.20         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(pel43_1,axiom,(
    ! [X,Y] : 
      ( set_equal(X,Y)
    <=> ! [Z] : 
          ( element(Z,X)
        <=> element(Z,Y) ) ) )).

qmf(pel43,conjecture,(
    ! [X,Y] : 
      ( set_equal(X,Y)
    <=> set_equal(Y,X) ) )).
%------------------------------------------------------------------------------
