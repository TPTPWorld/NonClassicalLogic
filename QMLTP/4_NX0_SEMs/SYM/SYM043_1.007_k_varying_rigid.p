tff(k_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:59 CEST 2022 using command 'downgrade(tff)'.
tff(e_decl, type, e: ($i > $o)).
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ({$box}(e(X))))) => ({$dia}((? [X:$i]: (f(X)))) <=> (? [X:$i]: ({$dia}(f(X))))))).
