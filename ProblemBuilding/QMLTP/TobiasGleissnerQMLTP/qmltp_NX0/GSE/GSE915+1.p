%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:33 CEST 2022 using command 'downgrade(tff)'.
tff(in_type, type, in: (($i * $i) > $o)).
tff(disjoint_type, type, disjoint: (($i * $i) > $o)).
tff(empty_type, type, empty: ($i > $o)).
tff(singleton_type, type, singleton: ($i > $i)).
tff(symmetry_r1_xboole_0, axiom, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(disjoint(A,B)) => {$box}(disjoint(B,A))))))))))).
tff(antisymmetry_r2_hidden, axiom, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(~ ({$box}(in(B,A))))))))))))).
tff(rc1_xboole_0, axiom, (? [A:$i]: ({$box}(empty(A))))).
tff(rc2_xboole_0, axiom, (? [A:$i]: ({$box}(~ ({$box}(empty(A))))))).
tff(t56_zfmisc_1, conjecture, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(~ ({$box}(in(A,B)))) => {$box}(disjoint(singleton(A),B))))))))))).
tff(l28_zfmisc_1, axiom, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(~ ({$box}(in(A,B)))) => {$box}(disjoint(singleton(A),B))))))))))).
