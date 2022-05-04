%--------------------------------------------------------------------------
% File     : APM004+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : abductive planning: Bomb-in-the-toilet with detector
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
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : slightly adapted from the original example: left out modal
%            operators for "true after next time step" and "true indefinitely"
%--------------------------------------------------------------------------

qmf(ax1, axiom, 
(#box : (? [B] : bomb(B)))).

qmf(ax2, axiom,
(? [A] : (#box : (! [X]: ((bomb(X) & h(A)) => (#box : (bomb(X)))))))).

qmf(ax3, axiom,
(#box : (! [X] : (? [D] : (#box : ((bomb(X) & h(D)) => defused(X))))))).

qmf(con, conjecture,
(#box : (! [X] : (? [D] : ((bomb(X) & h(D)) => defused(X)))))).
