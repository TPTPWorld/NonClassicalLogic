tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:00 CEST 2022 using command 'downgrade(tff)'.
tff(big_p_decl, type, big_p: ($i > $o)).
tff(x2128, conjecture, ({$box}(({$box}((! [X:$i]: (({$box}(({$box}(big_p(X)) => {$box}((! [Y:$i]: ({$box}(big_p(Y))))))) & {$box}(({$box}((! [Y:$i]: ({$box}(big_p(Y))))) => {$box}(big_p(X)))))))) => ({$box}(((? [X:$i]: ({$box}(big_p(X)))) => {$box}((! [Y:$i]: ({$box}(big_p(Y))))))) & {$box}(({$box}((! [Y:$i]: ({$box}(big_p(Y))))) => (? [X:$i]: ({$box}(big_p(X))))))))) & {$box}((({$box}(((? [X:$i]: ({$box}(big_p(X)))) => {$box}((! [Y:$i]: ({$box}(big_p(Y))))))) & {$box}(({$box}((! [Y:$i]: ({$box}(big_p(Y))))) => (? [X:$i]: ({$box}(big_p(X))))))) => {$box}((! [X:$i]: (({$box}(({$box}(big_p(X)) => {$box}((! [Y:$i]: ({$box}(big_p(Y))))))) & {$box}(({$box}((! [Y:$i]: ({$box}(big_p(Y))))) => {$box}(big_p(X)))))))))))).
