tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:49 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: ($i > $o)).
tff(q_decl, type, q: ($i > $o)).
tff(con, conjecture, (((? [X:$i]: ({$dia}(p(X)))) & {$box}((! [X:$i]: ((p(X) => q(X)))))) => (? [X:$i]: ({$dia}(q(X)))))).
