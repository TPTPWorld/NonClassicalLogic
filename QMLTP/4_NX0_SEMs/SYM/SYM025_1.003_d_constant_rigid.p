tff(d_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:50 CEST 2022 using command 'downgrade(tff)'.
tff(p_decl, type, p: ($i > $o)).
tff(q_decl, type, q: ($i > $o)).
tff(con, conjecture, (({$dia}((? [X:$i]: (p(X)))) & {$dia}((? [X:$i]: (q(X))))) => (? [X:$i]: ({$dia}((p(X) & q(X))))))).
