tff(k_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:40:07 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(con, conjecture, ({$dia}({$box}({$dia}(p))) => {$dia}({$dia}(p)))).