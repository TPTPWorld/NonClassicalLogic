tff(s5_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:04 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: ($i > $o)).
tff(big_p_decl, type, big_p: ($i > $o)).
tff(x2137, conjecture, (? [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(big_p(X)) => ({$box}(big_q(X)) | {$box}(big_p(Y))))))))))).