tff(k_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:51 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: ($i > $o)).
tff(b_decl, type, b: ($i > $o)).
tff(con, conjecture, (({$dia}((! [X:$i]: (a(X)))) & {$box}((? [X:$i]: (b(X))))) => (? [X:$i]: ({$dia}((a(X) & b(X))))))).
