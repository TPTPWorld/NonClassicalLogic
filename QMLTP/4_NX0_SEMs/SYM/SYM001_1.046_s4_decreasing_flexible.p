tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:38 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ((! [X:$i]: ({$box}(f(X)))) => {$box}((! [X:$i]: (f(X)))))).
