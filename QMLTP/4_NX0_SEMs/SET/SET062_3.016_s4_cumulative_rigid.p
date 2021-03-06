tff(s4_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:00 CEST 2022 using command 'downgrade(tff)'.
tff(empty_set_decl, type, empty_set: $i).
tff(member_decl, type, member: (($i * $i) > $o)).
tff(subset_decl, type, subset: (($i * $i) > $o)).
tff(empty_decl, type, empty: ($i > $o)).
tff(empty_set_defn, axiom-local, (! [B:$i]: (~ (member(B,empty_set))))).
tff(subset_defn, axiom-local, (! [B:$i,C:$i]: ((subset(B,C) <=> (! [D:$i]: ((member(D,B) => member(D,C)))))))).
tff(reflexivity_of_subset, axiom-local, (! [B:$i]: (subset(B,B)))).
tff(empty_defn, axiom-local, (! [B:$i]: ((empty(B) <=> (! [C:$i]: (~ (member(C,B)))))))).
tff(prove_empty_set_subset, conjecture, (! [B:$i]: (subset(empty_set,B)))).
