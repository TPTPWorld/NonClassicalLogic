tff(s5_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:17 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ({$box}((? [X:$i]: (f(X)))) => {$dia}((! [X:$i]: (f(X)))))).
