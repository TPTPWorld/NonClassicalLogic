tff(d_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:18 CEST 2022 using command 'downgrade(tff)'.
tff(f_decl, type, f: (($i * $i) > $o)).
tff(kalish256, conjecture, {$box}(({$box}((! [Z:$i]: ((? [Y:$i]: ({$box}((! [X:$i]: (({$box}(({$box}(f(X,Y)) => ({$box}(f(X,Z)) & {$box}(~ ({$box}(f(X,X))))))) & {$box}((({$box}(f(X,Z)) & {$box}(~ ({$box}(f(X,X))))) => {$box}(f(X,Y))))))))))))) => {$box}(~ ((? [V:$i]: ({$box}((! [U:$i]: ({$box}(f(U,V)))))))))))).