tff(s4_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:25 CEST 2022 using command 'downgrade(tff)'.
tff(empty_set_decl, type, empty_set: $i).
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(subset_decl, type, subset: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(singleton_decl, type, singleton: ($i > $i)).
tff(unordered_pair_decl, type, unordered_pair: (($i * $i) > $i)).
tff(reflexivity, axiom-local, {$box}((! [X:$i]: ({$box}(qmltpeq(X,X)))))).
tff(symmetry, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(qmltpeq(X,Y)) => {$box}(qmltpeq(Y,X))))))))))).
tff(transitivity, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(qmltpeq(X,Y)) & {$box}(qmltpeq(Y,Z))) => {$box}(qmltpeq(X,Z)))))))))))))).
tff(singleton_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(singleton(A),singleton(B)))))))))))).
tff(unordered_pair_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(unordered_pair(A,C),unordered_pair(B,C))))))))))))))).
tff(unordered_pair_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}(({$box}(qmltpeq(A,B)) => {$box}(qmltpeq(unordered_pair(C,A),unordered_pair(C,B))))))))))))))).
tff(empty_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(empty(A))) => {$box}(empty(B))))))))))).
tff(subset_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(subset(A,C))) => {$box}(subset(B,C)))))))))))))).
tff(subset_substitution_2, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(subset(C,A))) => {$box}(subset(C,B)))))))))))))).
tff(commutativity_k2_tarski, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(qmltpeq(unordered_pair(A,B),unordered_pair(B,A)))))))))).
tff(reflexivity_r1_tarski, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(subset(A,A))))))))).
tff(fc1_xboole_0, axiom-local, {$box}(empty(empty_set))).
tff(rc1_xboole_0, axiom-local, (? [A:$i]: ({$box}(empty(A))))).
tff(rc2_xboole_0, axiom-local, (? [A:$i]: ({$box}(~ ({$box}(empty(A))))))).
tff(t42_zfmisc_1, conjecture, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: (({$box}(({$box}(subset(A,unordered_pair(B,C))) => {$box}(~ (({$box}(~ ({$box}(qmltpeq(A,empty_set)))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(B))))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(C))))) & {$box}(~ ({$box}(qmltpeq(A,unordered_pair(B,C)))))))))))) & {$box}(({$box}(~ (({$box}(~ ({$box}(qmltpeq(A,empty_set)))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(B))))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(C))))) & {$box}(~ ({$box}(qmltpeq(A,unordered_pair(B,C)))))))))) => {$box}(subset(A,unordered_pair(B,C)))))))))))))))).
tff(l46_zfmisc_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((! [C:$i]: (({$box}(({$box}(subset(A,unordered_pair(B,C))) => {$box}(~ (({$box}(~ ({$box}(qmltpeq(A,empty_set)))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(B))))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(C))))) & {$box}(~ ({$box}(qmltpeq(A,unordered_pair(B,C)))))))))))) & {$box}(({$box}(~ (({$box}(~ ({$box}(qmltpeq(A,empty_set)))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(B))))) & ({$box}(~ ({$box}(qmltpeq(A,singleton(C))))) & {$box}(~ ({$box}(qmltpeq(A,unordered_pair(B,C)))))))))) => {$box}(subset(A,unordered_pair(B,C)))))))))))))))).
