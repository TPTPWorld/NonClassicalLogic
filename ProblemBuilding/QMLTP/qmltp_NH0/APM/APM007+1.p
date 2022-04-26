% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).  % modalities

% propositions

% individual constants
thf(ann_type,type,(ann : ($i))).
thf(mary_type,type,(mary : ($i))).
thf(bob_type,type,(bob : ($i))).
thf(john_type,type,(john : ($i))).
thf(paul_type,type,(paul : ($i))).
thf(jane_type,type,(jane : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).
thf(parent_type,type,(parent : ($i>$i>$o))).
thf(q3_type,type,(q3 : ($i>$o))).
thf(female_type,type,(female : ($i>$o))).
thf(male_type,type,(male : ($i>$o))).

% functions

% converted problem
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
thf(reflexivity,axiom,(![X:$i]:(qmltpeq@X@X))).
thf(symmetry,axiom,(![X:$i,Y:$i]:((qmltpeq@X@Y)=>(qmltpeq@Y@X)))).
thf(transitivity,axiom,(![X:$i,Y:$i,Z:$i]:(((qmltpeq@X@Y)&(qmltpeq@Y@Z))=>(qmltpeq@X@Z)))).
thf(female_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(female@A))=>(female@B)))).
thf(male_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(male@A))=>(male@B)))).
thf(q3_substitution_1,axiom,(![A:$i,B:$i]:(((qmltpeq@A@B)&(q3@A))=>(q3@B)))).
thf(parent_substitution_1,axiom,(![A:$i,B:$i,C:$i]:(((qmltpeq@A@B)&(parent@A@C))=>(parent@B@C)))).
thf(parent_substitution_2,axiom,(![A:$i,B:$i,C:$i]:(((qmltpeq@A@B)&(parent@C@A))=>(parent@C@B)))).
thf(abox,axiom,({$box}@((female@mary)&(female@ann)&(female@jane)&(male@bob)&(male@john)&(male@paul)&(parent@bob@mary)&(parent@bob@ann)&(parent@john@paul)&(parent@mary@jane)))).
thf(tbox,axiom,(![X:$i]:(({$box}@((male@X)))=>({$box}@(~((female@X))))))).
thf(query,axiom,(![X:$i]:((q3@X)<=>(?[Y:$i]:(({$box}@((parent@Y@X)))&(![Z:$i]:(({$box}@((parent@Y@Z)))=>((qmltpeq@Z@X))))))))).
thf(con,conjecture,((q3@jane)&(q3@paul))).
