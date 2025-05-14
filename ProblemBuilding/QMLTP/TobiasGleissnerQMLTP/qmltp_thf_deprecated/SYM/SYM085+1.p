% semantics
% modalities

% propositions

% individual constants

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(n_type,type,(n : ($i>$o))).
thf(o_type,type,(o : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM085+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Quantified modal logics wwfs. problem 24.
% Version  : Especial.
% English  :
% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
% Source   : [Sid09]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Theorem      Unsolved     Unsolved      v1.1
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
thf(reflexivity,axiom,(![X:$i]:(qmltpeq@X@X))).
thf(symmetry,axiom,(![X:$i,Y:$i]:((qmltpeq@X@Y)=>(qmltpeq@Y@X)))).
thf(transitivity,axiom,(![X:$i,Y:$i,Z:$i]:(((qmltpeq@X@Y)&(qmltpeq@Y@Z))=>(qmltpeq@X@Z)))).
thf(n_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(n@A))=>(n@B)))).
thf(o_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(o@A))=>(o@B)))).
thf(con,conjecture,((?[X:$i]:((n@X)&(![Y:$i]:((n@Y)=>((qmltpeq@Y@X))))&($box@((o@X)))))=>($box@(?[X:$i]:((n@X)&(![Y:$i]:((n@Y)=>((qmltpeq@Y@X))))&(o@X)))))).