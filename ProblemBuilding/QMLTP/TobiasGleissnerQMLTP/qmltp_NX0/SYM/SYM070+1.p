%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:15 CEST 2022 using command 'downgrade(tff)'.
tff(a_type, type, a: $i).
tff(qmltpeq_type, type, qmltpeq: (($i * $i) > $o)).
tff(reflexivity, axiom, (! [X:$i]: (qmltpeq(X,X)))).
tff(symmetry, axiom, (! [X:$i,Y:$i]: ((qmltpeq(X,Y) => qmltpeq(Y,X))))).
tff(transitivity, axiom, (! [X:$i,Y:$i,Z:$i]: (((qmltpeq(X,Y) & qmltpeq(Y,Z)) => qmltpeq(X,Z))))).
tff(con, conjecture, (? [X:$i]: ({$box}(qmltpeq(X,a))))).
