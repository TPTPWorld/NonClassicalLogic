tff(k_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:37 CEST 2022 using command 'downgrade(tff)'.
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(in_decl, type, in: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(singleton_decl, type, singleton: ($i > $i)).
tff(set_difference_decl, type, set_difference: (($i * $i) > $i)).
tff(reflexivity, axiom-local, {$box}((! [X:$i]: ({$box}(qmltpeq(X,X)))))).
tff(symmetry, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(qmltpeq(X,Y)) => {$box}(qmltpeq(Y,X))))))))))).
tff(transitivity, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(qmltpeq(X,Y)) & {$box}(qmltpeq(Y,Z))) => {$box}(qmltpeq(X,Z)))))))))))))).
tff(set_difference_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(set_difference(A,C),set_difference(B,C))))))))))))))).
tff(set_difference_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(set_difference(C,A),set_difference(C,B))))))))))))))).
tff(singleton_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(singleton(A),singleton(B)))))))))))).
tff(empty_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(empty(A))) => {$box}(empty(B))))))))))).
tff(in_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(in(A,C))) => {$box}(in(B,C)))))))))))))).
tff(in_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(in(C,A))) => {$box}(in(C,B)))))))))))))).
tff(antisymmetry_r2_hidden, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(~ ({$box}(in(B,A))))))))))))).
tff(d1_tarski, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: (({$box}(({$box}(qmltpeq(B,singleton(A))) => {$box}((! [C:$i]: (({$box}(({$box}(in(C,B)) => {$box}(qmltpeq(C,A)))) & {$box}(({$box}(qmltpeq(C,A)) => {$box}(in(C,B)))))))))) & {$box}(({$box}((! [C:$i]: (({$box}(({$box}(in(C,B)) => {$box}(qmltpeq(C,A)))) & {$box}(({$box}(qmltpeq(C,A)) => {$box}(in(C,B)))))))) => {$box}(qmltpeq(B,singleton(A))))))))))))).
tff(d4_xboole_0, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: (({$box}(({$box}(qmltpeq(C,set_difference(A,B))) => {$box}((! [D:$i]: (({$box}(({$box}(in(D,C)) => ({$box}(in(D,A)) & {$box}(~ ({$box}(in(D,B))))))) & {$box}((({$box}(in(D,A)) & {$box}(~ ({$box}(in(D,B))))) => {$box}(in(D,C)))))))))) & {$box}(({$box}((! [D:$i]: (({$box}(({$box}(in(D,C)) => ({$box}(in(D,A)) & {$box}(~ ({$box}(in(D,B))))))) & {$box}((({$box}(in(D,A)) & {$box}(~ ({$box}(in(D,B))))) => {$box}(in(D,C)))))))) => {$box}(qmltpeq(C,set_difference(A,B)))))))))))))))).
tff(rc1_xboole_0, axiom-local, (? [A:$i]: ({$box}(empty(A))))).
tff(rc2_xboole_0, axiom-local, (? [A:$i]: ({$box}(~ ({$box}(empty(A))))))).
tff(t64_zfmisc_1, conjecture, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: (({$box}(({$box}(in(A,set_difference(B,singleton(C)))) => ({$box}(in(A,B)) & {$box}(~ ({$box}(qmltpeq(A,C))))))) & {$box}((({$box}(in(A,B)) & {$box}(~ ({$box}(qmltpeq(A,C))))) => {$box}(in(A,set_difference(B,singleton(C))))))))))))))))).