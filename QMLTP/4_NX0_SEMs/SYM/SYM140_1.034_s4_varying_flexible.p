tff(s4_varying_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $varying,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:43 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(con, conjecture, ~ ({$dia}(({$dia}({$box}({$dia}(p))) & {$box}(~ (p)))))).
