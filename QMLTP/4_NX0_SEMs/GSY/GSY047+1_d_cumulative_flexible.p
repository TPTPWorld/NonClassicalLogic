tff(d_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:46 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(q_decl, type, q: $o).
tff(r_decl, type, r: $o).
tff(s_decl, type, s: $o).
tff(pel17, conjecture, ({$box}(({$box}((({$box}(p) & {$box}(({$box}(q) => {$box}(r)))) => {$box}(s))) => (({$box}(~ ({$box}(p))) | ({$box}(q) | {$box}(s))) & ({$box}(~ ({$box}(p))) | ({$box}(~ ({$box}(r))) | {$box}(s)))))) & {$box}(((({$box}(~ ({$box}(p))) | ({$box}(q) | {$box}(s))) & ({$box}(~ ({$box}(p))) | ({$box}(~ ({$box}(r))) | {$box}(s)))) => {$box}((({$box}(p) & {$box}(({$box}(q) => {$box}(r)))) => {$box}(s))))))).