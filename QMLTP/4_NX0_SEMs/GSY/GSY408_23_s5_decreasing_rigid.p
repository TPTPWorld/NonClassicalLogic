tff(s5_decreasing_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $decreasing,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:16 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(kalish244, conjecture, {$box}(({$box}(~ ((? [X:$i]: ({$box}(f(X)))))) => {$box}((! [Y:$i]: ({$box}(({$box}(f(Y)) => {$box}(g(Y)))))))))).