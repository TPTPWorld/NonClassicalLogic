tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:37 CEST 2022 using command 'downgrade(tff)'.
tff(c0_decl, type, c0: $o).
tff(c1_decl, type, c1: $o).
tff(b0_decl, type, b0: $o).
tff(c2_decl, type, c2: $o).
tff(b1_decl, type, b1: $o).
tff(a0_decl, type, a0: $o).
tff(b2_decl, type, b2: $o).
tff(a1_decl, type, a1: $o).
tff(a2_decl, type, a2: $o).
tff(cb_decl, type, cb: $o).
tff(axiom_knows_a_b_c, axiom-local, {$box(#a)}({$box(#b)}(({$box(#c)}(c0) | ({$box(#c)}(c1) | {$box(#c)}(c2)))))).
tff(axiom_knows_b_a_c, axiom-local, {$box(#b)}({$box(#a)}(({$box(#c)}(c0) | ({$box(#c)}(c1) | {$box(#c)}(c2)))))).
tff(axiom_knows_a_b_c_0, axiom-local, {$box(#a)}({$box(#b)}(({$box(#c)}(c0) | ({$box(#c)}(c1) | {$box(#c)}(c2)))))).
tff(axiom_knows_a_c_b, axiom-local, {$box(#a)}({$box(#c)}(({$box(#b)}(b0) | ({$box(#b)}(b1) | {$box(#b)}(b2)))))).
tff(axiom_knows_c_a_b, axiom-local, {$box(#c)}({$box(#a)}(({$box(#b)}(cb) | ({$box(#b)}(b1) | {$box(#b)}(b2)))))).
tff(axiom_knows_c_b_a, axiom-local, {$box(#c)}({$box(#b)}(({$box(#a)}(a0) | ({$box(#a)}(a1) | {$box(#a)}(a2)))))).
tff(axiom_knows_b_c_a, axiom-local, {$box(#b)}({$box(#c)}(({$box(#a)}(a0) | ({$box(#a)}(a1) | {$box(#a)}(a2)))))).
tff(axiom_a0, axiom-local, a0).
tff(con, conjecture, {$box(#b)}(~ ({$dia(#a)}({$dia(#b)}({$box(#c)}(~ (a0))))))).