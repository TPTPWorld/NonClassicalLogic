tff(t_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_T
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:22 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ((f(X) => g(X))))) => (! [X:$i]: ((f(X) => {$box}(g(X))))))).
