tff(d_constant_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $constant,
     $modalities == $modal_system_D
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:38:57 CEST 2022 using command 'downgrade(tff)'.
tff(e_decl, type, e: ($i > $o)).
tff(m_decl, type, m: ($i > $o)).
tff(con, conjecture, ~ (((! [X:$i]: ({$box}((e(X) => m(X))))) => (! [X:$i]: ({$box}(m(X))))))).
