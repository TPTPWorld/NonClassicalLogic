%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:21 CEST 2022 using command 'downgrade(tff)'.
tff(qmltpeq_type, type, qmltpeq: (($i * $i) > $o)).
tff(in_type, type, in: (($i * $i) > $o)).
tff(empty_type, type, empty: ($i > $o)).
tff(singleton_type, type, singleton: ($i > $i)).
tff(set_difference_type, type, set_difference: (($i * $i) > $i)).
tff(reflexivity, axiom, (! [X:$i]: (qmltpeq(X,X)))).
tff(symmetry, axiom, (! [X:$i,Y:$i]: ((qmltpeq(X,Y) => qmltpeq(Y,X))))).
tff(transitivity, axiom, (! [X:$i,Y:$i,Z:$i]: (((qmltpeq(X,Y) & qmltpeq(Y,Z)) => qmltpeq(X,Z))))).
tff(set_difference_substitution_1, axiom, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(set_difference(A,C),set_difference(B,C)))))).
tff(set_difference_substitution_2, axiom, (! [A:$i,B:$i,C:$i]: ((qmltpeq(A,B) => qmltpeq(set_difference(C,A),set_difference(C,B)))))).
tff(singleton_substitution_1, axiom, (! [A:$i,B:$i]: ((qmltpeq(A,B) => qmltpeq(singleton(A),singleton(B)))))).
tff(empty_substitution_1, axiom, (! [A:$i,B:$i]: (((qmltpeq(A,B) & empty(A)) => empty(B))))).
tff(in_substitution_1, axiom, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & in(A,C)) => in(B,C))))).
tff(in_substitution_2, axiom, (! [A:$i,B:$i,C:$i]: (((qmltpeq(A,B) & in(C,A)) => in(C,B))))).
tff(antisymmetry_r2_hidden, axiom, (! [A:$i,B:$i]: ((in(A,B) => ~ (in(B,A)))))).
tff(rc1_xboole_0, axiom, (? [A:$i]: (empty(A)))).
tff(rc2_xboole_0, axiom, (? [A:$i]: (~ (empty(A))))).
tff(t67_zfmisc_1, conjecture, (! [A:$i,B:$i]: ((qmltpeq(set_difference(singleton(A),B),singleton(A)) <=> ~ (in(A,B)))))).
tff(l34_zfmisc_1, axiom, (! [A:$i,B:$i]: ((qmltpeq(set_difference(singleton(A),B),singleton(A)) <=> ~ (in(A,B)))))).
