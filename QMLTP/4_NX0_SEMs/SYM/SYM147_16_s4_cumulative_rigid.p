tff(s4_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:46 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(con, conjecture, ({$box}({$dia}({$box}({$dia}(p)))) => {$box}({$dia}(p)))).