tff(d_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:37:43 CEST 2022 using command 'downgrade(tff)'.
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(member_decl, type, member: (($i * $i) > $o)).
tff(subset_decl, type, subset: (($i * $i) > $o)).
tff(intersection_decl, type, intersection: (($i * $i) > $i)).
tff(difference_decl, type, difference: (($i * $i) > $i)).
tff(union_decl, type, union: (($i * $i) > $i)).
tff(reflexivity, axiom-local, (! [X:$i]: (qmltpeq(X,X)))).
tff(symmetry, axiom-local, (! [X:$i,Y:$i]: ((qmltpeq(X,Y) => qmltpeq(Y,X))))).
tff(transitivity, axiom-local, (! [X:$i,Y:$i,Z:$i]: (((qmltpeq(X,Y) & qmltpeq(Y,Z)) => qmltpeq(X,Z))))).
tff(difference_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(difference(A,C),difference(B,C)))))).
tff(difference_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(difference(C,A),difference(C,B)))))).
tff(intersection_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(intersection(A,C),intersection(B,C)))))).
tff(intersection_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(intersection(C,A),intersection(C,B)))))).
tff(union_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(union(A,C),union(B,C)))))).
tff(union_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(union(C,A),union(C,B)))))).
tff(member_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & member(A,C)) => member(B,C))))).
tff(member_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & member(C,A)) => member(C,B))))).
tff(subset_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & subset(A,C)) => subset(B,C))))).
tff(subset_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & subset(C,A)) => subset(C,B))))).
tff(union_defn, axiom-local, (! [B:$i,C:$i,D:$i]: ((member(D,union(B,C)) <=> (member(D,B) | member(D,C)))))).
tff(intersection_defn, axiom-local, (! [B:$i,C:$i,D:$i]: ((member(D,intersection(B,C)) <=> (member(D,B) & member(D,C)))))).
tff(difference_defn, axiom-local, (! [B:$i,C:$i,D:$i]: ((member(D,difference(B,C)) <=> (member(D,B) & ~ (member(D,C))))))).
tff(union_subset, axiom-local, (! [B:$i,C:$i,D:$i]: (((subset(B,C) & subset(D,C)) => subset(union(B,D),C))))).
tff(intersection_is_subset, axiom-local, (! [B:$i,C:$i]: (subset(intersection(B,C),B)))).
tff(subset_difference, axiom-local, (! [B:$i,C:$i,D:$i]: ((subset(B,C) => subset(difference(D,C),difference(D,B)))))).
tff(equal_defn, axiom-local, (! [B:$i,C:$i]: ((qmltpeq(B,C) <=> (subset(B,C) & subset(C,B)))))).
tff(commutativity_of_union, axiom-local, (! [B:$i,C:$i]: (qmltpeq(union(B,C),union(C,B))))).
tff(commutativity_of_intersection, axiom-local, (! [B:$i,C:$i]: (qmltpeq(intersection(B,C),intersection(C,B))))).
tff(subset_defn, axiom-local, (! [B:$i,C:$i]: ((subset(B,C) <=> (! [D:$i]: ((member(D,B) => member(D,C)))))))).
tff(reflexivity_of_subset, axiom-local, (! [B:$i]: (subset(B,B)))).
tff(equal_member_defn, axiom-local, (! [B:$i,C:$i]: ((qmltpeq(B,C) <=> (! [D:$i]: ((member(D,B) <=> member(D,C)))))))).
tff(prove_difference_and_intersection_and_union, conjecture, (! [B:$i,C:$i,D:$i]: (qmltpeq(difference(B,intersection(C,D)),union(difference(B,C),difference(B,D)))))).