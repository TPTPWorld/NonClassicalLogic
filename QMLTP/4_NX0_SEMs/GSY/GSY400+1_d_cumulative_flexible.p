tff(d_cumulative_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $cumulative,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:12 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(kalish227, conjecture, ({$box}(({$box}((! [X:$i]: ({$box}(p)))) => {$box}(p))) & {$box}(({$box}(p) => {$box}((! [X:$i]: ({$box}(p)))))))).