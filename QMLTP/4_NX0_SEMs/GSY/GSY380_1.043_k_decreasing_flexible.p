tff(k_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:02 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: (($i * $i) > $o)).
tff(big_r_decl, type, big_r: (($i * $i) > $o)).
tff(x2132, conjecture, {$box}(({$box}((! [W:$i]: ({$box}(~ ({$box}(big_r(W,W))))))) => (? [X:$i,Y:$i]: (({$box}(~ ({$box}(big_r(X,Y)))) & {$box}(({$box}(big_q(Y,X)) => {$box}((! [Z:$i]: ({$box}(big_q(Z,Z))))))))))))).