tff(k_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:52 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: (($i * $i) > $o)).
tff(big_p_decl, type, big_p: (($i * $i) > $o)).
tff(x2111, conjecture, {$box}((({$box}((! [X:$i]: ({$box}(((? [Y:$i]: ({$box}(big_p(X,Y)))) => {$box}((! [Y:$i]: ({$box}(big_q(X,Y)))))))))) & {$box}((! [Z:$i]: ((? [Y:$i]: ({$box}(big_p(Z,Y)))))))) => {$box}((! [Y:$i]: ({$box}((! [X:$i]: ({$box}(big_q(X,Y))))))))))).