tff(s4_varying_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $varying,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:13 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: ($i > $o)).
tff(g_decl, type, g: ($i > $o)).
tff(h_decl, type, h: ($i > $o)).
tff(kalish234, conjecture, {$box}((! [X:$i]: ({$box}((({$box}(({$box}(f(X)) => {$box}(g(X)))) & {$box}(({$box}(g(X)) => {$box}(h(X))))) => {$box}(({$box}(f(X)) => {$box}(h(X)))))))))).
