%--------------------------------------------------------------------------
% File     : SYM080+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Quantified modal logics wwfs. problem 19.
% Version  : Especial.
% English  : 

% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
% Source   : [Sid09]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.75         0.75          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((? [X] : (#box : (f(X) | g(X)))) => (#box : ((! [X] : (f(X))) | (? [X] : (g(X))))))).
