tff(d_constant_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $constant,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:20 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ((f(X) => g(X))))) => (! [X:$i]: ({$box}((f(X) => {$box}((! [X:$i]: (g(X)))))))))).