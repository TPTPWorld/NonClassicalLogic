tff(s4_constant_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $constant,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:11 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: $o).
tff(f_decl, type, f: ($i > $o)).
tff(kalish215, conjecture, ({$box}(({$box}((! [X:$i]: (({$box}(p) & {$box}(f(X)))))) => ({$box}(p) & {$box}((! [Y:$i]: ({$box}(f(Y)))))))) & {$box}((({$box}(p) & {$box}((! [Y:$i]: ({$box}(f(Y)))))) => {$box}((! [X:$i]: (({$box}(p) & {$box}(f(X)))))))))).