%--------------------------------------------------------------------------
% File     : SYM043+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [For94] G. Forbes. Modern Logic. A Text in Elementary
%            Symbolic Logic}. Oxford University Press, 1994.
% Source   : [For94]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Theorem       v1.1
%             D   Non-Theorem  Non-Theorem  Theorem       v1.1
%             T   Non-Theorem  Non-Theorem  Theorem       v1.1
%             S4  Non-Theorem  Non-Theorem  Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.75         0.50          v1.1
%             D   0.75         0.83         0.33          v1.1
%             T   0.50         0.67         0.33          v1.1
%             S4  0.50         0.67         0.33          v1.1
%             S5  0.50         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((#box : (! [X] : (#box : (e(X))))) => ((#dia : (? [X] : (f(X)))) <=> (? [X] : (#dia : (f(X))))))).

