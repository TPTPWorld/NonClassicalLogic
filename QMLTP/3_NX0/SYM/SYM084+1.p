%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:39:23 CEST 2022 using command 'downgrade(tff)'.
tff(semantics, logic, $modal == ([$constants == $rigid,$quantification == $constant,$modalities == $modal_system_S5])).
tff(f_decl, type, f: ($i > $o)).
tff(con, conjecture, (({$box}((! [X:$i]: ((f(X) => {$box}(f(X)))))) & {$dia}((? [X:$i]: (f(X))))) => {$box}((? [X:$i]: (f(X)))))).