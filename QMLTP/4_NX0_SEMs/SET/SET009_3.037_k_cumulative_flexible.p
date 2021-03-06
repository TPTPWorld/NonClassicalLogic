tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:37:42 CEST 2022 using command 'downgrade(tff)'.
tff(member_decl, type, member: (($i * $i) > $o)).
tff(subset_decl, type, subset: (($i * $i) > $o)).
tff(difference_decl, type, difference: (($i * $i) > $i)).
tff(difference_defn, axiom-local, (! [B:$i,C:$i,D:$i]: ((member(D,difference(B,C)) <=> (member(D,B) & ~ (member(D,C))))))).
tff(subset_defn, axiom-local, (! [B:$i,C:$i]: ((subset(B,C) <=> (! [D:$i]: ((member(D,B) => member(D,C)))))))).
tff(reflexivity_of_subset, axiom-local, (! [B:$i]: (subset(B,B)))).
tff(prove_subset_difference, conjecture, (! [B:$i,C:$i,D:$i]: ((subset(B,C) => subset(difference(D,C),difference(D,B)))))).
