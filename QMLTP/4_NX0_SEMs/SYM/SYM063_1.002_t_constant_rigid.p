tff(t_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_T
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:11 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: ($i > $o)).
tff(con, conjecture, (({$box}((! [Y:$i]: (((! [X:$i]: ({$box}(a(X)))) => {$box}(a(Y)))))) => (! [Y:$i]: (({$box}((! [X:$i]: ({$box}(a(X))))) => {$box}(a(Y)))))) => ((! [X:$i]: ({$box}(a(X)))) => {$box}((! [X:$i]: (a(X))))))).