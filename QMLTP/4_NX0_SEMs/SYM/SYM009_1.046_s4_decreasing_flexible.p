tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:42 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: ($i > $o)).
tff(con, conjecture, ({$box}((! [X:$i]: ({$box}(a(X))))) <=> (! [X:$i]: ({$box}(a(X)))))).