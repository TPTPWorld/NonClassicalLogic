tff(t_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_T
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:41 CEST 2022 using command 'downgrade(tff)'.
tff(portland_decl, type, portland: $i).
tff(bigcity_decl, type, bigcity: ($i > $o)).
tff(beautycity_decl, type, beautycity: ($i > $o)).
tff(axiom_1_a, axiom-local, ({$box(#b_alice)}(bigcity(portland)) => ~ ({$box(#i_alice)}(bigcity(portland))))).
tff(axiom_1_b, axiom-local, ({$box(#b_bob)}(bigcity(portland)) => ~ ({$box(#i_bob)}(bigcity(portland))))).
tff(axiom_1_c, axiom-local, ({$box(#b_alice)}(beautycity(portland)) => ~ ({$box(#i_alice)}(beautycity(portland))))).
tff(axiom_1_d, axiom-local, ({$box(#b_bob)}(beautycity(portland)) => ~ ({$box(#i_bob)}(beautycity(portland))))).
tff(axiom_2, axiom-local, {$box(#b_alice)}(({$box(#b_bob)}({$box(#b_alice)}(bigcity(portland))) | {$box(#b_bob)}({$box(#b_alice)}(beautycity(portland)))))).
tff(con, conjecture, {$box(#b_alice)}(({$box(#b_bob)}(({$box(#alice)}(bigcity(portland)) => ~ ({$box(#i_alice)}(bigcity(portland))))) & ({$box(#alice)}(beautycity(portland)) => ~ ({$box(#i_alice)}(beautycity(portland))))))).
