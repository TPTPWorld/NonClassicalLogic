%--------------------------------------------------------------------------
% File     : SYM058+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic. 
%            Kluwer, 1998.
% Source   : [FM98]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Theorem      Theorem       v1.1
%             D   Non-Theorem  Theorem      Theorem       v1.1
%             T   Unsolved     Theorem      Theorem       v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Unsolved     Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.25         0.25          v1.1
%             D   0.75         0.17         0.17          v1.1
%             T   1.00         0.17         0.17          v1.1
%             S4  1.00         0.17         0.17          v1.1
%             S5  1.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((! [X] : (#box  : (? [Y] : (qmltpeq(Y , X))))) => ((#box : (! [X] : f(X))) => (! [X] : (#box : (f(X))))))).
