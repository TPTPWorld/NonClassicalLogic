tff(s5_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:02 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: (($i * $i) > $o)).
tff(big_p_decl, type, big_p: ($i > $o)).
tff(x2133, conjecture, {$box}((({$box}((! [X:$i]: ({$box}(((? [Y:$i]: ({$box}(big_q(X,Y)))) => {$box}(big_p(X))))))) & ({$box}((! [V:$i]: ((? [U:$i]: ({$box}(big_q(U,V))))))) & {$box}((! [W:$i]: ({$box}((! [Z:$i]: ({$box}(({$box}(big_q(W,Z)) => ({$box}(big_q(Z,W)) | {$box}(big_q(Z,Z))))))))))))) => {$box}((! [Z:$i]: ({$box}(big_p(Z)))))))).