tff(s4_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:26 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(con, conjecture, ({$box}((p => ~ (p))) <=> ~ ({$dia}(p)))).