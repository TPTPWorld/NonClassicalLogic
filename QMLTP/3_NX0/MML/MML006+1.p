%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:37 CEST 2022 using command 'downgrade(tff)'.
tff(semantics, logic, $modal == ([$constants == $rigid,$quantification == $cumulative,$modalities == $modal_system_K])).
tff(acid_decl, type, acid: $o).
tff(pour_ab_make_axiom_1, axiom-local, ({$box(#pour_a)} @ ({$box(#pour_b)} @ (acid)) => {$box(#make_c)} @ (acid))).
tff(pour_ab_make_axiom_2, axiom-local, ({$box(#pour_a)} @ ({$box(#pour_b)} @ (~ (acid))) => {$box(#make_c)} @ (~ (acid)))).
tff(pour_ba_make_axiom_1, axiom-local, ({$box(#pour_b)} @ ({$box(#pour_a)} @ (acid)) => {$box(#make_c)} @ (acid))).
tff(pour_ba_make_axiom_2, axiom-local, ({$box(#pour_b)} @ ({$box(#pour_a)} @ (~ (acid))) => {$box(#make_c)} @ (~ (acid)))).
tff(pour_a_acid, axiom-local, {$box(#pour_a)} @ (~ (acid))).
tff(make_c_acid, axiom-local, {$dia(#make_c)} @ (acid)).
tff(conj, conjecture, ({$dia(#pour_a)} @ (~ (acid)) & {$dia(#pour_a)} @ ({$dia(#pour_b)} @ (acid)))).
