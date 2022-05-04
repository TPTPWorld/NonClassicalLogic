%--------------------------------------------------------------------------
% File     : SYM176+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Mixed Modal Propositional Logic WFFs. problem 23
% Version  : Especial.
% English  : 

% Refs     : [S07] T. Sider. Logic for Philosophy. Oxford, 2007.
%           
% Source   : http://www.tedsider.org/teaching/lfp
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   0.50         0.50         0.50          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.50         0.50         0.50          v1.1
%             S4  0.50         0.50         0.50          v1.1
%             S5  0.50         0.40         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((#box : (p => (#box : (q => r)))) => (q => (#box : (p => r))))).
