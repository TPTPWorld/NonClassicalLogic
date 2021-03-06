tff(k_decreasing_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $decreasing,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:33 CEST 2022 using command 'downgrade(tff)'.
tff(in_decl, type, in: (($i * $i) > $o)).
tff(disjoint_decl, type, disjoint: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(singleton_decl, type, singleton: ($i > $i)).
tff(symmetry_r1_xboole_0, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(disjoint(A,B)) => {$box}(disjoint(B,A))))))))))).
tff(antisymmetry_r2_hidden, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(in(A,B)) => {$box}(~ ({$box}(in(B,A))))))))))))).
tff(rc1_xboole_0, axiom-local, (? [A:$i]: ({$box}(empty(A))))).
tff(rc2_xboole_0, axiom-local, (? [A:$i]: ({$box}(~ ({$box}(empty(A))))))).
tff(t56_zfmisc_1, conjecture, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(~ ({$box}(in(A,B)))) => {$box}(disjoint(singleton(A),B))))))))))).
tff(l28_zfmisc_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}(({$box}(~ ({$box}(in(A,B)))) => {$box}(disjoint(singleton(A),B))))))))))).
