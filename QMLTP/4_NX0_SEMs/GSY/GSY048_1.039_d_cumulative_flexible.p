tff(d_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:46 CEST 2022 using command 'downgrade(tff)'.
tff(big_f_decl, type, big_f: ($i > $o)).
tff(pel18, conjecture, (? [Y:$i]: ({$box}((! [X:$i]: ({$box}(({$box}(big_f(Y)) => {$box}(big_f(X)))))))))).