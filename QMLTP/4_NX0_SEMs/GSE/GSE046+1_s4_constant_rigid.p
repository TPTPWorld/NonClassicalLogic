tff(s4_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:32:06 CEST 2022 using command 'downgrade(tff)'.
tff(element_decl, type, element: (($i * $i) > $o)).
tff(pel42, conjecture, {$box}(~ ((? [Y:$i]: ({$box}((! [X:$i]: (({$box}(({$box}(element(X,Y)) => {$box}(~ ((? [Z:$i]: (({$box}(element(X,Z)) & {$box}(element(Z,X))))))))) & {$box}(({$box}(~ ((? [Z:$i]: (({$box}(element(X,Z)) & {$box}(element(Z,X))))))) => {$box}(element(X,Y))))))))))))).