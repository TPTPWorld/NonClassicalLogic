%--------------------------------------------------------------------------
% File     : APM008+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : database querying
% Version  : Especial.
% English  : 

% Refs     : [Rei92] R. Reiter. What Should a Database Know? Journal of
%            Logic Programming 14 (1&2):127-153, 1992. 
% Source   : [Rei92]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         0.25          v1.1
%             D   0.50         0.50         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.17          v1.1
%             S5  0.00         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(db, axiom, 
(#box : (teach(john,math) & (? [X] : (teach(X,cs))) & teach(mary,psych) & teach(sue,psych)))).

qmf(query, conjecture,
(? [X] : (#box : (teach(john,X))))).
