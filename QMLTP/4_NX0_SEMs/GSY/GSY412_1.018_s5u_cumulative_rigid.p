tff(s5_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S5U
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:18 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: (($i * $i) > $o)).
tff(kalish255, conjecture, {$box}(~ ((? [X:$i]: ({$box}((! [Y:$i]: (({$box}(({$box}(f(X,Y)) => {$box}(~ ({$box}(f(X,X)))))) & {$box}(({$box}(~ ({$box}(f(X,X)))) => {$box}(f(X,Y))))))))))))).
