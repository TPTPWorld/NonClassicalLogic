tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:58 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $i).
tff(e_decl, type, e: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ({$box}(e(X))))) => {$box}(e(a)))).
