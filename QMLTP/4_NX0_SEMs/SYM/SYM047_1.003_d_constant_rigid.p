tff(d_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:01 CEST 2022 using command 'downgrade(tff)'.
tff(e_decl, type, e: ($i > $o)).
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ({$box}((f(X) => e(X)))))) => ((? [X:$i]: ({$dia}(f(X)))) => {$dia}((? [X:$i]: (f(X))))))).
