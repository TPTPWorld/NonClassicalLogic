%--------------------------------------------------------------------------
% File     : SYM178+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Mixed modal propositional logic WFFs. problem 25
% Version  : Especial.
% English  : 

% Refs     : [S07] T. Sider. Logic for Philosophy. Oxford, 2007.
%           
% Source   : http://www.tedsider.org/teaching/lfp
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   1.00         0.83         0.83          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  0.00         0.00         0.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
((#box : ((#box : (p => (#box : (p)))) => (#box : (p)))) => ((#dia : (#box : (p))) => (#box : (p))))).
