tff(k_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:51 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: (($i * $i) > $o)).
tff(big_r_decl, type, big_r: ($i > $o)).
tff(x2110, conjecture, {$box}((((? [X:$i]: ({$box}(big_r(X)))) & ({$box}((! [Y:$i]: ({$box}(({$box}(big_r(Y)) => (? [Z:$i]: ({$box}(big_q(Y,Z))))))))) & {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(big_q(X,Y)) => {$box}(big_q(X,X)))))))))))) => (? [X:$i,Y:$i]: (({$box}(big_q(X,Y)) & {$box}(big_r(Y)))))))).
