tff(s5_varying_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $varying,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:20 CEST 2022 using command 'downgrade(tff)'.
tff(empty_set_decl, type, empty_set: $i).
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(subset_decl, type, subset: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(singleton_decl, type, singleton: ($i > $i)).
tff(set_difference_decl, type, set_difference: (($i * $i) > $i)).
tff(reflexivity, axiom-local, (! [X:$i]: (qmltpeq(X,X)))).
tff(symmetry, axiom-local, (! [X:$i,Y:$i]: ((qmltpeq(X,Y) => qmltpeq(Y,X))))).
tff(transitivity, axiom-local, (! [X:$i,Y:$i,Z:$i]: (((qmltpeq(X,Y) & qmltpeq(Y,Z)) => qmltpeq(X,Z))))).
tff(set_difference_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(set_difference(A,C),set_difference(B,C)))))).
tff(set_difference_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(set_difference(C,A),set_difference(C,B)))))).
tff(singleton_substitution_1, axiom-local, (! [A:$i,B:$i]: ((qmltpeq(A,B) => qmltpeq(singleton(A),singleton(B)))))).
tff(empty_substitution_1, axiom-local, (! [A:$i,B:$i]: (((qmltpeq(A,B) & empty(A)) => empty(B))))).
tff(subset_substitution_1, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & subset(A,C)) => subset(B,C))))).
tff(subset_substitution_2, axiom-local, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & subset(C,A)) => subset(C,B))))).
tff(fc1_xboole_0, axiom-local, empty(empty_set)).
tff(l4_zfmisc_1, axiom-local, (! [A:$i,B:$i]: ((subset(A,singleton(B)) <=> (qmltpeq(A,empty_set) | qmltpeq(A,singleton(B))))))).
tff(rc1_xboole_0, axiom-local, (? [A:$i]: (empty(A)))).
tff(rc2_xboole_0, axiom-local, (? [A:$i]: (~ (empty(A))))).
tff(reflexivity_r1_tarski, axiom-local, (! [A:$i,B:$i]: (subset(A,A)))).
tff(t37_xboole_1, axiom-local, (! [A:$i,B:$i]: ((qmltpeq(set_difference(A,B),empty_set) <=> subset(A,B))))).
tff(t66_zfmisc_1, conjecture, (! [A:$i,B:$i]: (~ ((qmltpeq(set_difference(A,singleton(B)),empty_set) & (~ (qmltpeq(A,empty_set)) & ~ (qmltpeq(A,singleton(B))))))))).