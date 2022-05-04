%--------------------------------------------------------------------------
% File     : SYM054+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic. 
%            Kluwer, 1998.
% Source   : [FM98]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.25         0.50          v1.1
%             D   0.25         0.50         0.50          v1.1
%             T   0.25         0.17         0.33          v1.1
%             S4  0.25         0.33         0.50          v1.1
%             S5  0.25         0.20         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
(#box : (! [X] : (#box : (! [Y] : (#box : ((qmltpeq(X , Y)) => (#box : (qmltpeq(X , Y)))))))))).
