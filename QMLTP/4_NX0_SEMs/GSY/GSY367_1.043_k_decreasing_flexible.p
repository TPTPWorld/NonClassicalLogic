tff(k_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:55 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(big_q_decl, type, big_q: ($i > $o)).
tff(big_r_decl, type, big_r: ($i > $o)).
tff(x2118, conjecture, {$box}(({$box}((! [X:$i]: ((({$box}(p) & {$box}(big_q(X))) | ({$box}(~ ({$box}(p))) & {$box}(big_r(X))))))) => ({$box}((! [X:$i]: ({$box}(big_q(X))))) | {$box}((! [X:$i]: ({$box}(big_r(X))))))))).
