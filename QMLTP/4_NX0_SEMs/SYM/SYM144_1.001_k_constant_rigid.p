tff(k_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:45 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(con, conjecture, ({$box}({$dia}(p)) => {$box}({$dia}({$box}({$dia}(p)))))).
