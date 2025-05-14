%--------------------------------------------------------------------------
% File     : APM005+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : abductive planning: Safe problem
% Version  : Biased.
% English  : 

% Refs     : [Sto98] M. Stone. Abductive planning with sensing. In 
%            AAAI-98, pp. 631-636. Menlo Park CA., 1998. 
% Source   : [Sto98]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.00         0.33         0.33          v1.1
%             S4  0.00         0.33         0.33          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : slightly adapted from the original example: left out modal
%            operators for "true after next time step" and "true indefinitely"
%--------------------------------------------------------------------------

qmf(ax1, axiom, 
(#box : (! [S,V] : (? [O] : ((#box : ((closed(S) & combo(S,V) & h(O)) => (#box : (open(S))))) &
                            (#box : ((closed(S) & (~ combo(S,V)) & h(o)) => (#box : (closed(S)))))))))).

qmf(ax2, axiom,
(#box : (closed(d)))).

qmf(ax3, axiom,
(#box : (combo(d,n) | (~ combo(d,n))))).

qmf(ax4,axiom,
(#box: (! [S] : (~ (open(S) & closed(S)))))).

qmf(ax5,axiom,
(? [V] : (#box : (combo(d,V))))).

qmf(con, conjecture,
(#box : (? [V,O] : ((#box : (combo(d,V) & h(O))) => (#box : (open(d))))))).
