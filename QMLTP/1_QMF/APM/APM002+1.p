%--------------------------------------------------------------------------
% File     : APM002+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : conflict detection of 2 conceptual schemata (e.g. UML-schemata)
% Version  : Especial.
% English  : 

% Refs     : [BE04] V. Boeva, L. Ekenberg. A transition logic for schemata
%            conflicts. Data & Knowledge Engineering, 51(3):277-294, 2004.    
% Source   : [BE04]
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
%             D   0.75         0.67         0.50          v1.1
%             T   0.50         0.50         0.50          v1.1
%             S4  0.50         0.50         0.67          v1.1
%             S5  0.50         0.40         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 

%--------------------------------------------------------------------------

qmf(schema1, axiom,
(((~ r(a)) | r(b)) & (r(c) <=> r(a)) & (r(a) => (#dia : (r(b)))) &
 ((~ (r(a))) => (#dia : ((~ r(b)) & (~ r(c))))))).

qmf(schema2, axiom,
((p(a) => p(b)) & (p(c) | (~ p(b))) & ((p(a) & p(b)) => (#dia : (~ p(b)))))).

qmf(integration_assertion, axiom,
(! [X] : (p(X) <=> r(X) ))).

qmf(con, conjecture,
 $false).
