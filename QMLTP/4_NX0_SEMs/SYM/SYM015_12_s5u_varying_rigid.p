tff(s5_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_S5U
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:45 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $i).
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ((! [X:$i]: (({$box}(f(X)) | {$box}(~ (f(X)))))) => {$box}(({$box}(f(a)) <=> f(a))))).