tff(t_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_T
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:30 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(q_decl, type, q: $o).
tff(con, conjecture, (({$box}((q => p)) & {$box}((~ (q) => p))) <=> {$box}(p))).
