tff(k_varying_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $varying,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:03 CEST 2022 using command 'downgrade(tff)'.
tff(intersect_decl, type, intersect: (($i * $i) > $o)).
tff(disjoint_decl, type, disjoint: (($i * $i) > $o)).
tff(member_decl, type, member: (($i * $i) > $o)).
tff(intersect_defn, axiom-local, (! [B:$i,C:$i]: ((intersect(B,C) <=> (? [D:$i]: ((member(D,B) & member(D,C)))))))).
tff(disjoint_defn, axiom-local, (! [B:$i,C:$i]: ((disjoint(B,C) <=> ~ (intersect(B,C)))))).
tff(symmetry_of_intersect, axiom-local, (! [B:$i,C:$i]: ((intersect(B,C) => intersect(C,B))))).
tff(prove_th12, conjecture, (! [B:$i,C:$i,D:$i]: (((member(B,C) & disjoint(C,D)) => ~ (member(B,D)))))).
