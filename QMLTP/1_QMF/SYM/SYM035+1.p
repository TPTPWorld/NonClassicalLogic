%--------------------------------------------------------------------------
% File     : SYM035+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [For94] G. Forbes. Modern Logic. A Text in Elementary
%            Symbolic Logic}. Oxford University Press, 1994.
% Source   : [For94]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.00         0.25         0.25          v1.1
%             D   0.00         0.17         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((! [X] : (#box : (f(X)))) & (? [Y] : (#dia : (g(Y)))) => (? [X] : (#dia : (f(X) & g(X)))))).

