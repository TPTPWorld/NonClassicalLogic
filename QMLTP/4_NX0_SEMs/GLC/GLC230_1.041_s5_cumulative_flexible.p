tff(s5_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:28:35 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(q_decl, type, q: $o).
tff(r_decl, type, r: $o).
tff(pel5, conjecture, {$box}(({$box}((({$box}(p) | {$box}(q)) => ({$box}(p) | {$box}(r)))) => ({$box}(p) | {$box}(({$box}(q) => {$box}(r))))))).