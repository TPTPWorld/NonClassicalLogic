% semantics
% modalities

% propositions

% individual constants

% predicates
thf(element_type,type,(element : ($i>$i>$o))).

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : SET046+1 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : No set of non-circular sets
% Version  : Especial.
% English  : A set is circular if it is a member of another set which
%            in turn is a member of the orginal. Intuitively all sets are
%            non-circular. Prove there is no set of non-circular sets.
% Refs     : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Hah94]
% Names    : Pelletier 42 [Pel86]
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
%-----------------------------------------------------------------------------
thf ( pel42 , conjecture , ( ~ ( ( ? [ Y :$i ] : ! [ X :$i ] : ( ( element @ X @ Y ) <=> ~ ( ( ? [ Z :$i ] : ( ( element @ X @ Z ) & ( element @ Z @ X ) ) ) ) ) ) ) ) ) .
%------------------------------------------------------------------------------