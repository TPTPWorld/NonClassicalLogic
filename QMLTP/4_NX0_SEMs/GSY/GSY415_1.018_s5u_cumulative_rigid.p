tff(s5_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S5U
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:20 CEST 2022 using command 'downgrade(tff)'.
tff(qmltpeq_decl, type, qmltpeq: (($i * $i) > $o)).
tff(f_decl, type, f: ($i > $o)).
tff(reflexivity, axiom-local, {$box}((! [X:$i]: ({$box}(qmltpeq(X,X)))))).
tff(symmetry, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}(({$box}(qmltpeq(X,Y)) => {$box}(qmltpeq(Y,X))))))))))).
tff(transitivity, axiom-local, {$box}((! [X:$i]: ({$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(qmltpeq(X,Y)) & {$box}(qmltpeq(Y,Z))) => {$box}(qmltpeq(X,Z)))))))))))))).
tff(f_substitution_1, axiom-local, {$box}((! [A:$i]: ({$box}((! [B:$i]: ({$box}((({$box}(qmltpeq(A,B)) & {$box}(f(A))) => {$box}(f(B))))))))))).
tff(kalish317, conjecture, ({$box}((((? [X:$i]: ({$box}(f(X)))) & {$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(f(Y)) & {$box}(f(Z))) => {$box}(qmltpeq(Y,Z))))))))))) => (? [U:$i]: (({$box}(f(U)) & {$box}((! [V:$i]: ({$box}(({$box}(f(V)) => {$box}(qmltpeq(U,V)))))))))))) & {$box}(((? [U:$i]: (({$box}(f(U)) & {$box}((! [V:$i]: ({$box}(({$box}(f(V)) => {$box}(qmltpeq(U,V)))))))))) => ((? [X:$i]: ({$box}(f(X)))) & {$box}((! [Y:$i]: ({$box}((! [Z:$i]: ({$box}((({$box}(f(Y)) & {$box}(f(Z))) => {$box}(qmltpeq(Y,Z))))))))))))))).
