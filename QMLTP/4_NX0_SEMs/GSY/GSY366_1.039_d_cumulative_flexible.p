tff(d_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:55 CEST 2022 using command 'downgrade(tff)'.
tff(big_r_decl, type, big_r: (($i * $i) > $o)).
tff(x2117, conjecture, {$box}((({$box}((! [U:$i]: ({$box}((! [V:$i]: (({$box}(({$box}(big_r(U,U)) => {$box}(big_r(U,V)))) & {$box}(({$box}(big_r(U,V)) => {$box}(big_r(U,U))))))))))) & {$box}((! [W:$i]: ({$box}((! [Z:$i]: (({$box}(({$box}(big_r(W,W)) => {$box}(big_r(Z,W)))) & {$box}(({$box}(big_r(Z,W)) => {$box}(big_r(W,W)))))))))))) => {$box}(((? [X:$i]: ({$box}(big_r(X,X)))) => {$box}((! [Y:$i]: ({$box}(big_r(Y,Y)))))))))).