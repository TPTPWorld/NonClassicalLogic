%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:01 CEST 2022 using command 'downgrade(tff)'.
tff(semantics, logic, $modal == ([$constants == $rigid,$quantification == $constant,$modalities == $modal_system_S5])).
tff(e_decl, type, e: ($i > $o)).
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, ((! [X:$i]: ({$box}(e(X)))) => ((? [X:$i]: ({$dia}(f(X)))) => {$dia}((? [X:$i]: (f(X))))))).