
% propositions

% individual constants
thf(a_type,type,(a : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM070+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Quantified modal logics wwfs. problem 9.
% Version  : Especial.
% English  :
% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
% Source   : [Sid09]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.75         0.50          v1.1
%             D   0.75         0.83         0.67          v1.1
%             T   0.75         0.67         0.50          v1.1
%             S4  0.75         0.83         0.67          v1.1
%             S5  0.75         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,(![X:$i]:(qmltpeq@X@X))).
thf(symmetry,axiom,(![X:$i,Y:$i]:((qmltpeq@X@Y)=>(qmltpeq@Y@X)))).
thf(transitivity,axiom,(![X:$i,Y:$i,Z:$i]:(((qmltpeq@X@Y)&(qmltpeq@Y@Z))=>(qmltpeq@X@Z)))).
thf(con,conjecture,(?[X:$i]:({$box}@((qmltpeq@X@a))))).
