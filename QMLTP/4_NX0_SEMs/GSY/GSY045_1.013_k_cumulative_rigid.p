tff(k_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:45 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(q_decl, type, q: $o).
tff(r_decl, type, r: $o).
tff(pel13, conjecture, ({$box}((({$box}(p) | ({$box}(q) & {$box}(r))) => (({$box}(p) | {$box}(q)) & ({$box}(p) | {$box}(r))))) & {$box}(((({$box}(p) | {$box}(q)) & ({$box}(p) | {$box}(r))) => ({$box}(p) | ({$box}(q) & {$box}(r))))))).