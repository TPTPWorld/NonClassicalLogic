tff(s5_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:36 CEST 2022 using command 'downgrade(tff)'.
tff(alive_decl, type, alive: $o).
tff(loaded_decl, type, loaded: $o).
tff(i_always_load_1, axiom-local, ({$box(#always)}(loaded) => {$box(#load)}(loaded))).
tff(i_always_load_2, axiom-local, ({$box(#always)}(~ (loaded)) => {$box(#load)}(~ (loaded)))).
tff(i_always_alive_1, axiom-local, ({$box(#always)}(alive) => {$box(#load)}(alive))).
tff(i_always_alive_2, axiom-local, ({$box(#always)}(~ (alive)) => {$box(#load)}(~ (alive)))).
tff(i_always_load_1_0, axiom-local, ({$box(#always)}(loaded) => {$box(#shoot)}(loaded))).
tff(i_always_load_2_0, axiom-local, ({$box(#always)}(~ (loaded)) => {$box(#shoot)}(~ (loaded)))).
tff(i_always_alive_1_0, axiom-local, ({$box(#always)}(alive) => {$box(#shoot)}(alive))).
tff(i_always_alive_2_0, axiom-local, ({$box(#always)}(~ (alive)) => {$box(#shoot)}(~ (alive)))).
tff(axiom_1, axiom-local, {$box(#always)}({$box(#load)}(loaded))).
tff(axiom_2, axiom-local, {$box(#always)}((loaded => {$box(#shoot)}(~ (alive))))).
tff(conj, conjecture, {$box(#load)}({$box(#shoot)}(~ (alive)))).