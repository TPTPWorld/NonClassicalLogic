
% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(p_type,type,(p : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM055+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic.
%            Kluwer, 1998.
% Source   : [FM98]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Unsolved     Theorem       v1.1
%             D   Non-Theorem  Non-Theorem  Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         0.50          v1.1
%             D   0.75         0.83         0.33          v1.1
%             T   0.25         0.50         0.33          v1.1
%             S4  0.25         0.50         0.33          v1.1
%             S5  0.25         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf(reflexivity,axiom,(![X:$i]:(qmltpeq@X@X))).
thf(symmetry,axiom,(![X:$i,Y:$i]:((qmltpeq@X@Y)=>(qmltpeq@Y@X)))).
thf(transitivity,axiom,(![X:$i,Y:$i,Z:$i]:(((qmltpeq@X@Y)&(qmltpeq@Y@Z))=>(qmltpeq@X@Z)))).
thf(p_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(p@A))=>(p@B)))).
thf(con,conjecture,((![X:$i]:({$box}@(?[Y:$i]:((qmltpeq@X@Y)&(?[X:$i]:(p@X))))))=>(({$dia}@(?[X:$i]:((p@X))))=>(?[X:$i]:({$dia}@((p@X))))))).
