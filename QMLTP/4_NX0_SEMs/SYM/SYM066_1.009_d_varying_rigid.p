tff(d_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:13 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ((! [X:$i]: ({$dia}(f(X)))) => {$dia}((! [X:$i]: (f(X)))))).
