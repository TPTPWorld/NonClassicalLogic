tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:38 CEST 2022 using command 'downgrade(tff)'.
tff(n0_decl, type, n0: $i).
tff(n1_decl, type, n1: $i).
tff(n2_decl, type, n2: $i).
tff(n3_decl, type, n3: $i).
tff(n4_decl, type, n4: $i).
tff(n5_decl, type, n5: $i).
tff(n6_decl, type, n6: $i).
tff(a_decl, type, a: ($i > $o)).
tff(b_decl, type, b: ($i > $o)).
tff(succ_decl, type, succ: (($i * $i) > $o)).
tff(axiom_1, axiom-local, {$box(#fool)}(succ(n0,n1))).
tff(axiom_2, axiom-local, {$box(#fool)}(succ(n1,n2))).
tff(axiom_3, axiom-local, {$box(#fool)}(succ(n2,n3))).
tff(axiom_4, axiom-local, {$box(#fool)}(succ(n3,n4))).
tff(axiom_5, axiom-local, {$box(#fool)}(succ(n4,n5))).
tff(axiom_6, axiom-local, {$box(#fool)}(succ(n5,n6))).
tff(axiom_7, axiom-local, {$box(#fool)}((? [X:$i]: ((? [Y:$i]: ((a(X) & (b(Y) & (succ(X,Y) | succ(Y,X)))))))))).
tff(axiom_8, axiom-local, (! [X:$i]: ((a(X) => {$box(#bill)}(a(X)))))).
tff(axiom_9, axiom-local, (! [X:$i]: ((b(X) => {$box(#bill)}(b(X)))))).
tff(axiom_i_for_fool_a_1, axiom-local, (! [X:$i]: (({$box(#fool)}(a(X)) => {$box(#anne)}(a(X)))))).
tff(axiom_i_for_fool_a_2, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (a(X))) => {$box(#anne)}(~ (a(X))))))).
tff(axiom_i_for_fool_a_3, axiom-local, (! [X:$i]: (({$box(#fool)}(b(X)) => {$box(#anne)}(b(X)))))).
tff(axiom_i_for_fool_a_4, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (b(X))) => {$box(#anne)}(~ (b(X))))))).
tff(axiom_i_for_fool_b_1, axiom-local, (! [X:$i]: (({$box(#fool)}(a(X)) => {$box(#bill)}(a(X)))))).
tff(axiom_i_for_fool_b_2, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (a(X))) => {$box(#bill)}(~ (a(X))))))).
tff(axiom_i_for_fool_b_3, axiom-local, (! [X:$i]: (({$box(#fool)}(b(X)) => {$box(#bill)}(b(X)))))).
tff(axiom_i_for_fool_b_4, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (b(X))) => {$box(#bill)}(~ (b(X))))))).
tff(axiom_a3, axiom-local, a(n3)).
tff(axiom_b2, axiom-local, b(n2)).
tff(con, conjecture, ({$box(#anne)}({$box(#bill)}({$box(#anne)}((b(n0) | (b(n2) | b(n4)))))) & {$box(#bill)}({$box(#anne)}({$box(#bill)}((a(n1) | (a(n3) | a(n5)))))))).