tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:19 CEST 2022 using command 'downgrade(tff)'.
tff(a_decl, type, a: $i).
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(con, conjecture, (({$dia}(f(a)) & {$dia}(g(a))) => {$dia}((f(a) & g(a))))).
