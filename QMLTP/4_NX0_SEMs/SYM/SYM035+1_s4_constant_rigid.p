tff(s4_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:55 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(con, conjecture, (((! [X:$i]: ({$box}(f(X)))) & (? [Y:$i]: ({$dia}(g(Y))))) => (? [X:$i]: ({$dia}((f(X) & g(X))))))).