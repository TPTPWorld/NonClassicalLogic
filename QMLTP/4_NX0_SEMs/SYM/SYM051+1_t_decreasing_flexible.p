tff(t_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_T
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:04 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $o).
tff(e_decl, type, e: ($i > $o)).
tff(con, conjecture, ({$dia}((? [X:$i]: ({$box}((a => ~ (e(X))))))) => ({$dia}(a) => ~ ({$box}((! [X:$i]: ({$box}(e(X))))))))).