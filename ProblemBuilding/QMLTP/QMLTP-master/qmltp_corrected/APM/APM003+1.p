%--------------------------------------------------------------------------
% File     : APM003+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : generation of abstract instructions: enter a number in a(#box
% Version  : Biased.
% English  : 

% Refs     : [Sto00] M. Stone. Towards a computational account of knowledge, 
%            action and inference in instructions. Journal of Language and 
%            Computation, 1:231-246, 2000.
% Source   : [Sto00]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Theorem      Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.50         0.33          v1.1
%             S5  0.75         0.40         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : slightly adapted from the original example: used only one
%            modal operator (#box) for both user and common-ground beliefs
%--------------------------------------------------------------------------

qmf(ax1, axiom, 
(#box : (? [I] : (#box : (userid(u,I) & string(I)))))).

qmf(ax2, axiom,
(? [B] : (#box : (entry_box(B) & number(B,one))))).

qmf(ax3, axiom,
(#box : (! [S,I,B] : ((string(I) & entry_box(B)) => (? [A] : (#box : (! [S2] : (do(S,A,S2) => in(I,B,S2))))))))).

qmf(con, conjecture,
(#box : (? [I,B,A,S] : ((#box : (userid(u,I) & entry_box(B) & number(B,one))) & 
                       (#box : (! [S2] : (do(S,A,S2) => in(I,B,S2)))))))).
