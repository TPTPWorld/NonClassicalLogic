tff(s5_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:48 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: ($i > $o)).
tff(con, conjecture, (? [X:$i]: ({$dia}((p(X) => (! [X:$i]: ({$box}(p(X))))))))).