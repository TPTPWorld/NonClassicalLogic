tff(k_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:41 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(q_decl, type, q: $o).
tff(con, conjecture, ({$dia}((p => {$box}(q))) => ({$box}(p) => {$dia}(q)))).
