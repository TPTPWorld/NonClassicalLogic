tff(s5_constant_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $constant,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:47 CEST 2022 using command 'downgrade(tff)'.
tff(big_s_decl, type, big_s: ($i > $o)).
tff(big_q_decl, type, big_q: ($i > $o)).
tff(big_r_decl, type, big_r: ($i > $o)).
tff(big_p_decl, type, big_p: ($i > $o)).
tff(pel20, conjecture, {$box}(({$box}((! [X:$i]: ({$box}((! [Y:$i]: ((? [Z:$i]: ({$box}((! [W:$i]: ({$box}((({$box}(big_p(X)) & {$box}(big_q(Y))) => ({$box}(big_r(Z)) & {$box}(big_s(W)))))))))))))))) => (? [X1:$i,Y1:$i]: ({$box}((({$box}(big_p(X1)) & {$box}(big_q(Y1))) => (? [Z1:$i]: ({$box}(big_r(Z1))))))))))).