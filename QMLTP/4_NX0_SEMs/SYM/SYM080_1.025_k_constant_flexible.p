tff(k_constant_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $constant,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:20 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(con, conjecture, ((? [X:$i]: ({$box}((f(X) | g(X))))) => {$box}(((! [X:$i]: (f(X))) | (? [X:$i]: (g(X))))))).