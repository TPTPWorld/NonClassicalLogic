%--------------------------------------------------------------------------
% File     : SYM006+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Fitting and Mendelsohn problem
% Version  : Especial.
% English  : 

% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic. 
%            Kluwer, 1998.
% Source   : [FM98]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.75         0.75          v1.1
%             D   0.75         0.17         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------

qmf(con,conjecture,
((#box : ( ! [X] : ( f(X) ) ) ) => ( ! [X] : (#dia : ( f(X) ) ) ))).
