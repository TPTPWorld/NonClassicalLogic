tff(d_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:31 CEST 2022 using command 'downgrade(tff)'.
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(in_decl, type, in: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(set_intersection2_decl, type, set_intersection2: (($i * $i) > $i)).
tff(singleton_decl, type, singleton: ($i > $i)).
tff(reflexivity, axiom-local, {$box}((! [X:$i]: ({$box}(qmltpeq(X,X)))))).
tff(symmetry, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(qmltpeq(X,Y)) => {$box}(qmltpeq(Y,X))))))))))).
tff(transitivity, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(qmltpeq(X,Y)) & {$box}(qmltpeq(Y,Z))) => {$box}(qmltpeq(X,Z)))))))))))))).
tff(set_intersection2_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(set_intersection2(A,C),set_intersection2(B,C))))))))))))))).
tff(set_intersection2_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(set_intersection2(C,A),set_intersection2(C,B))))))))))))))).
tff(singleton_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(singleton(A),singleton(B)))))))))))).
tff(empty_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(empty(A))) => {$box}(empty(B))))))))))).
tff(in_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(in(A,C))) => {$box}(in(B,C)))))))))))))).
tff(in_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(in(C,A))) => {$box}(in(C,B)))))))))))))).
tff(commutativity_k3_xboole_0, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(qmltpeq(set_intersection2(A,B),set_intersection2(B,A)))))))))).
tff(idempotence_k3_xboole_0, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(qmltpeq(set_intersection2(A,A),A))))))))).
tff(antisymmetry_r2_hidden, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(~ ({$box}(in(B,A))))))))))))).
tff(rc1_xboole_0, axiom-local, (? [A:$i]: ({$box}(empty(A))))).
tff(rc2_xboole_0, axiom-local, (? [A:$i]: ({$box}(~ ({$box}(empty(A))))))).
tff(t52_zfmisc_1, conjecture, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(qmltpeq(set_intersection2(B,singleton(A)),singleton(A)))))))))))).
tff(l32_zfmisc_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(qmltpeq(set_intersection2(B,singleton(A)),singleton(A)))))))))))).