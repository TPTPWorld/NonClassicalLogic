tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:34 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $i).
tff(b_decl, type, b: $i).
tff(c_decl, type, c: $i).
tff(ws_decl, type, ws: ($i > $o)).
tff(axiom_1, axiom-local, {$box(#fool)}((ws(a) | (ws(b) | ws(c))))).
tff(axiom_2, axiom-local, {$box(#fool)}((ws(a) => {$box(#b)}(ws(a))))).
tff(axiom_3, axiom-local, {$box(#fool)}((ws(a) => {$box(#c)}(ws(a))))).
tff(axiom_4, axiom-local, {$box(#fool)}((ws(b) => {$box(#a)}(ws(b))))).
tff(axiom_5, axiom-local, {$box(#fool)}((ws(b) => {$box(#c)}(ws(b))))).
tff(axiom_6, axiom-local, {$box(#fool)}((ws(c) => {$box(#a)}(ws(c))))).
tff(axiom_7, axiom-local, {$box(#fool)}((ws(c) => {$box(#b)}(ws(c))))).
tff(axiom_8, axiom-local, {$box(#fool)}((~ (ws(a)) => {$box(#b)}(~ (ws(a)))))).
tff(axiom_9, axiom-local, {$box(#fool)}((~ (ws(a)) => {$box(#c)}(~ (ws(a)))))).
tff(axiom_10, axiom-local, {$box(#fool)}((~ (ws(b)) => {$box(#a)}(~ (ws(b)))))).
tff(axiom_11, axiom-local, {$box(#fool)}((~ (ws(b)) => {$box(#c)}(~ (ws(b)))))).
tff(axiom_12, axiom-local, {$box(#fool)}((~ (ws(c)) => {$box(#a)}(~ (ws(c)))))).
tff(axiom_13, axiom-local, {$box(#fool)}((~ (ws(c)) => {$box(#b)}(~ (ws(c)))))).
tff(axiom_i_for_fool_a_1, axiom-local, (! [X:$i]: (({$box(#fool)}(ws(X)) => {$box(#a)}(ws(X)))))).
tff(axiom_i_for_fool_a_2, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (ws(X))) => {$box(#a)}(~ (ws(X))))))).
tff(axiom_i_for_fool_b_1, axiom-local, (! [X:$i]: (({$box(#fool)}(ws(X)) => {$box(#b)}(ws(X)))))).
tff(axiom_i_for_fool_b_2, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (ws(X))) => {$box(#b)}(~ (ws(X))))))).
tff(axiom_i_for_fool_c_1, axiom-local, (! [X:$i]: (({$box(#fool)}(ws(X)) => {$box(#c)}(ws(X)))))).
tff(axiom_i_for_fool_c_2, axiom-local, (! [X:$i]: (({$box(#fool)}(~ (ws(X))) => {$box(#c)}(~ (ws(X))))))).
tff(axiom_a7_for_fool_ab_1, axiom-local, (! [X:$i]: (({$box(#a)}(ws(X)) => {$box(#b)}({$box(#a)}(ws(X))))))).
tff(axiom_a7_for_fool_ab_2, axiom-local, (! [X:$i]: (({$box(#a)}(~ (ws(X))) => {$box(#b)}({$box(#a)}(~ (ws(X)))))))).
tff(axiom_a7_for_fool_ac_1, axiom-local, (! [X:$i]: (({$box(#a)}(ws(X)) => {$box(#c)}({$box(#a)}(ws(X))))))).
tff(axiom_a7_for_fool_ac_2, axiom-local, (! [X:$i]: (({$box(#a)}(~ (ws(X))) => {$box(#c)}({$box(#a)}(~ (ws(X)))))))).
tff(axiom_a7_for_fool_ba_1, axiom-local, (! [X:$i]: (({$box(#b)}(ws(X)) => {$box(#a)}({$box(#b)}(ws(X))))))).
tff(axiom_a7_for_fool_ba_2, axiom-local, (! [X:$i]: (({$box(#b)}(~ (ws(X))) => {$box(#a)}({$box(#b)}(~ (ws(X)))))))).
tff(axiom_a7_for_fool_bc_1, axiom-local, (! [X:$i]: (({$box(#b)}(ws(X)) => {$box(#c)}({$box(#b)}(ws(X))))))).
tff(axiom_a7_for_fool_bc_2, axiom-local, (! [X:$i]: (({$box(#b)}(~ (ws(X))) => {$box(#c)}({$box(#b)}(~ (ws(X)))))))).
tff(axiom_a7_for_fool_ca_1, axiom-local, (! [X:$i]: (({$box(#c)}(ws(X)) => {$box(#a)}({$box(#c)}(ws(X))))))).
tff(axiom_a7_for_fool_ca_2, axiom-local, (! [X:$i]: (({$box(#c)}(~ (ws(X))) => {$box(#a)}({$box(#c)}(~ (ws(X)))))))).
tff(axiom_a7_for_fool_cb_1, axiom-local, (! [X:$i]: (({$box(#c)}(ws(X)) => {$box(#b)}({$box(#c)}(ws(X))))))).
tff(axiom_a7_for_fool_cb_2, axiom-local, (! [X:$i]: (({$box(#c)}(~ (ws(X))) => {$box(#b)}({$box(#c)}(~ (ws(X)))))))).
tff(axiom_a6_for_fool_ab_1, axiom-local, (! [X:$i]: ((~ ({$box(#a)}(ws(X))) => {$box(#b)}(~ ({$box(#a)}(ws(X)))))))).
tff(axiom_a6_for_fool_ab_2, axiom-local, (! [X:$i]: ((~ ({$box(#a)}(~ (ws(X)))) => {$box(#b)}(~ ({$box(#a)}(~ (ws(X))))))))).
tff(axiom_a6_for_fool_ac_1, axiom-local, (! [X:$i]: ((~ ({$box(#a)}(ws(X))) => {$box(#c)}(~ ({$box(#a)}(ws(X)))))))).
tff(axiom_a6_for_fool_ac_2, axiom-local, (! [X:$i]: ((~ ({$box(#a)}(~ (ws(X)))) => {$box(#c)}(~ ({$box(#a)}(~ (ws(X))))))))).
tff(axiom_a6_for_fool_ba_1, axiom-local, (! [X:$i]: ((~ ({$box(#b)}(ws(X))) => {$box(#a)}(~ ({$box(#b)}(ws(X)))))))).
tff(axiom_a6_for_fool_ba_2, axiom-local, (! [X:$i]: ((~ ({$box(#b)}(~ (ws(X)))) => {$box(#a)}(~ ({$box(#b)}(~ (ws(X))))))))).
tff(axiom_a6_for_fool_bc_1, axiom-local, (! [X:$i]: ((~ ({$box(#b)}(ws(X))) => {$box(#c)}(~ ({$box(#b)}(ws(X)))))))).
tff(axiom_a6_for_fool_bc_2, axiom-local, (! [X:$i]: ((~ ({$box(#b)}(~ (ws(X)))) => {$box(#c)}(~ ({$box(#b)}(~ (ws(X))))))))).
tff(axiom_a6_for_fool_ca_1, axiom-local, (! [X:$i]: ((~ ({$box(#c)}(ws(X))) => {$box(#a)}(~ ({$box(#c)}(ws(X)))))))).
tff(axiom_a6_for_fool_ca_2, axiom-local, (! [X:$i]: ((~ ({$box(#c)}(~ (ws(X)))) => {$box(#a)}(~ ({$box(#c)}(~ (ws(X))))))))).
tff(axiom_a6_for_fool_cb_1, axiom-local, (! [X:$i]: ((~ ({$box(#c)}(ws(X))) => {$box(#b)}(~ ({$box(#c)}(ws(X)))))))).
tff(axiom_a6_for_fool_cb_2, axiom-local, (! [X:$i]: ((~ ({$box(#c)}(~ (ws(X)))) => {$box(#b)}(~ ({$box(#c)}(~ (ws(X))))))))).
tff(axiom_14, axiom-local, ~ ({$box(#a)}(ws(a)))).
tff(axiom_14_0, axiom-local, ~ ({$box(#b)}(ws(b)))).
tff(con, conjecture, {$box(#c)}(ws(c))).
