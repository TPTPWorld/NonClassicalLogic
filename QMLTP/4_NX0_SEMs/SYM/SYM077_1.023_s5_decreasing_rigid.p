tff(s5_decreasing_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $decreasing,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:19 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $i).
tff(r_decl, type, r: (($i * $i) > $o)).
tff(con, conjecture, ((? [X:$i]: ({$dia}(r(a,X)))) => {$dia}({$box}((? [X:$i]: ((? [Y:$i]: (r(X,Y))))))))).
