%--------------------------------------------------------------------------
% File     : APM007+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : querying description logic knowledge bases
% Version  : Especial.
% English  : 

% Refs     : [CDL+07] D. Calvanese, G. De Giacomo, D. Lembo, M. Lenzerini, 
%            R. Rosati. EQL-Lite: Effective First-Order Query Processing in 
%            Description Logics. In M. M. Veloso, Ed., IJCAI-2007, 
%            pp. 274-279, 2007.
% Source   : [CDL+07]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 

%--------------------------------------------------------------------------

qmf(abox, axiom, 
(#box : (female(mary) & female(ann) & female(jane) & male(bob) & male(john) & male(paul) & parent(bob,mary) & parent(bob,ann) & parent(john,paul) & parent(mary,jane)))).

qmf(tbox, axiom,
(! [X] : ((#box : (male(X))) => (#box : (~ female(X)))))).

qmf(query, axiom,
(! [X] : (q3(X) <=> (? [Y] : ((#box : (parent(Y,X))) & 
                              (! [Z] : ((#box : (parent(Y,Z))) => (qmltpeq(Z , X))))))))).

qmf(con, conjecture,
(q3(jane) & q3(paul))).
