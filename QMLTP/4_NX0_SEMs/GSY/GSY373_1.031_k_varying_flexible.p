tff(k_varying_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $varying,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:58 CEST 2022 using command 'downgrade(tff)'.
tff(big_q_decl, type, big_q: ($i > $o)).
tff(big_p_decl, type, big_p: ($i > $o)).
tff(x2124, conjecture, ({$box}(((? [X:$i]: ({$box}(({$box}(big_p(X)) => {$box}(big_q(X)))))) => {$box}(({$box}((! [X:$i]: ({$box}(big_p(X))))) => (? [X:$i]: ({$box}(big_q(X)))))))) & {$box}(({$box}(({$box}((! [X:$i]: ({$box}(big_p(X))))) => (? [X:$i]: ({$box}(big_q(X)))))) => (? [X:$i]: ({$box}(({$box}(big_p(X)) => {$box}(big_q(X)))))))))).
