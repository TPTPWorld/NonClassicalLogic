tff(k_varying_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $varying,
     $modalities == $modal_system_K
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:27 CEST 2022 using command 'downgrade(tff)'.
tff(q_decl, type, q: $o).
tff(r_decl, type, r: $o).
tff(con, conjecture, (~ ({$dia}((q & r))) <=> {$box}((q => ~ (r))))).
