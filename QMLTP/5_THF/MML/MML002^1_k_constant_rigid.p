%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 15:51:06 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(k_constant_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($constant),($modalities) == ($modal_system_K)])).

thf(mworld, type, mworld: $tType).
thf(mindex, type, mindex: $tType).
thf(mrel_type, type, mrel: (mindex > (mworld > (mworld > $o)))).
thf('#c_type', type, '#c': mindex).
thf('#fool_type', type, '#fool': mindex).
thf('#b_type', type, '#b': mindex).
thf('#a_type', type, '#a': mindex).
thf(mactual_type, type, mactual: mworld).
thf(mlocal_type, type, mlocal: ((mworld > $o) > $o)).
thf(mlocal_def, definition, (mlocal = (^ [Phi:(mworld > $o)]: ((Phi @ mactual))))).
thf(mnot_type, type, mnot: ((mworld > $o) > (mworld > $o))).
thf(mand_type, type, mand: ((mworld > $o) > ((mworld > $o) > (mworld > $o)))).
thf(mor_type, type, mor: ((mworld > $o) > ((mworld > $o) > (mworld > $o)))).
thf(mimplies_type, type, mimplies: ((mworld > $o) > ((mworld > $o) > (mworld > $o)))).
thf(mequiv_type, type, mequiv: ((mworld > $o) > ((mworld > $o) > (mworld > $o)))).
thf(mnot_def, definition, (mnot = (^ [A:(mworld > $o),W:mworld]: ((~ ((A @ W))))))).
thf(mand_def, definition, (mand = (^ [A:(mworld > $o),B:(mworld > $o),W:mworld]: (((A @ W) & (B @ W)))))).
thf(mor_def, definition, (mor = (^ [A:(mworld > $o),B:(mworld > $o),W:mworld]: (((A @ W) | (B @ W)))))).
thf(mimplies_def, definition, (mimplies = (^ [A:(mworld > $o),B:(mworld > $o),W:mworld]: (((A @ W) => (B @ W)))))).
thf(mequiv_def, definition, (mequiv = (^ [A:(mworld > $o),B:(mworld > $o),W:mworld]: (((A @ W) <=> (B @ W)))))).
thf(mbox_type, type, mbox: (mindex > ((mworld > $o) > (mworld > $o)))).
thf(mbox_def, definition, (mbox = (^ [R:mindex,Phi:(mworld > $o),W:mworld]: ((! [V:mworld]: (((((mrel @ R) @ W) @ V) => (Phi @ V)))))))).
thf(mdia_type, type, mdia: (mindex > ((mworld > $o) > (mworld > $o)))).
thf(mdia_def, definition, (mdia = (^ [R:mindex,Phi:(mworld > $o),W:mworld]: ((? [V:mworld]: (((((mrel @ R) @ W) @ V) & (Phi @ V)))))))).
thf(mforall_di_type, type, mforall_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mforall_di_def, definition, (mforall_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((! [X:$i]: (((A @ X) @ W))))))).
thf(mexists_di_type, type, mexists_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mexists_di_def, definition, (mexists_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((? [X:$i]: (((A @ X) @ W))))))).
thf(a_decl, type, a: $i).
thf(b_decl, type, b: $i).
thf(c_decl, type, c: $i).
thf(ws_decl, type, ws: ($i > (mworld > $o))).
thf(axiom_1, axiom, (mlocal @ ((mbox @ '#fool') @ ((mor @ (ws @ a)) @ ((mor @ (ws @ b)) @ (ws @ c)))))).
thf(axiom_2, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ a)) @ ((mbox @ '#b') @ (ws @ a)))))).
thf(axiom_3, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ a)) @ ((mbox @ '#c') @ (ws @ a)))))).
thf(axiom_4, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ b)) @ ((mbox @ '#a') @ (ws @ b)))))).
thf(axiom_5, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ b)) @ ((mbox @ '#c') @ (ws @ b)))))).
thf(axiom_6, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ c)) @ ((mbox @ '#a') @ (ws @ c)))))).
thf(axiom_7, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (ws @ c)) @ ((mbox @ '#b') @ (ws @ c)))))).
thf(axiom_8, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ a))) @ ((mbox @ '#b') @ (mnot @ (ws @ a))))))).
thf(axiom_9, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ a))) @ ((mbox @ '#c') @ (mnot @ (ws @ a))))))).
thf(axiom_10, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ b))) @ ((mbox @ '#a') @ (mnot @ (ws @ b))))))).
thf(axiom_11, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ b))) @ ((mbox @ '#c') @ (mnot @ (ws @ b))))))).
thf(axiom_12, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ c))) @ ((mbox @ '#a') @ (mnot @ (ws @ c))))))).
thf(axiom_13, axiom, (mlocal @ ((mbox @ '#fool') @ ((mimplies @ (mnot @ (ws @ c))) @ ((mbox @ '#b') @ (mnot @ (ws @ c))))))).
thf(axiom_t_for_fool_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (ws @ X))) @ (ws @ X))))))).
thf(axiom_t_for_fool_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))) @ (mnot @ (ws @ X)))))))).
thf(axiom_4_for_fool_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (ws @ X))) @ ((mbox @ '#fool') @ ((mbox @ '#fool') @ (ws @ X))))))))).
thf(axiom_4_for_fool_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))) @ ((mbox @ '#fool') @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))))))))).
thf(axiom_i_for_fool_a_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (ws @ X))) @ ((mbox @ '#a') @ (ws @ X)))))))).
thf(axiom_i_for_fool_a_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))) @ ((mbox @ '#a') @ (mnot @ (ws @ X))))))))).
thf(axiom_i_for_fool_b_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (ws @ X))) @ ((mbox @ '#b') @ (ws @ X)))))))).
thf(axiom_i_for_fool_b_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))) @ ((mbox @ '#b') @ (mnot @ (ws @ X))))))))).
thf(axiom_i_for_fool_c_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (ws @ X))) @ ((mbox @ '#c') @ (ws @ X)))))))).
thf(axiom_i_for_fool_c_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#fool') @ (mnot @ (ws @ X)))) @ ((mbox @ '#c') @ (mnot @ (ws @ X))))))))).
thf(axiom_a7_for_fool_ab_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#a') @ (ws @ X))) @ ((mbox @ '#b') @ ((mbox @ '#a') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_ab_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#a') @ (mnot @ (ws @ X)))) @ ((mbox @ '#b') @ ((mbox @ '#a') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a7_for_fool_ac_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#a') @ (ws @ X))) @ ((mbox @ '#c') @ ((mbox @ '#a') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_ac_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#a') @ (mnot @ (ws @ X)))) @ ((mbox @ '#c') @ ((mbox @ '#a') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a7_for_fool_ba_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#b') @ (ws @ X))) @ ((mbox @ '#a') @ ((mbox @ '#b') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_ba_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#b') @ (mnot @ (ws @ X)))) @ ((mbox @ '#a') @ ((mbox @ '#b') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a7_for_fool_bc_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#b') @ (ws @ X))) @ ((mbox @ '#c') @ ((mbox @ '#b') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_bc_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#b') @ (mnot @ (ws @ X)))) @ ((mbox @ '#c') @ ((mbox @ '#b') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a7_for_fool_ca_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#c') @ (ws @ X))) @ ((mbox @ '#a') @ ((mbox @ '#c') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_ca_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#c') @ (mnot @ (ws @ X)))) @ ((mbox @ '#a') @ ((mbox @ '#c') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a7_for_fool_cb_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#c') @ (ws @ X))) @ ((mbox @ '#b') @ ((mbox @ '#c') @ (ws @ X))))))))).
thf(axiom_a7_for_fool_cb_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ ((mbox @ '#c') @ (mnot @ (ws @ X)))) @ ((mbox @ '#b') @ ((mbox @ '#c') @ (mnot @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_ab_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#a') @ (ws @ X)))) @ ((mbox @ '#b') @ (mnot @ ((mbox @ '#a') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_ab_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#a') @ (mnot @ (ws @ X))))) @ ((mbox @ '#b') @ (mnot @ ((mbox @ '#a') @ (mnot @ (ws @ X))))))))))).
thf(axiom_a6_for_fool_ac_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#a') @ (ws @ X)))) @ ((mbox @ '#c') @ (mnot @ ((mbox @ '#a') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_ac_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#a') @ (mnot @ (ws @ X))))) @ ((mbox @ '#c') @ (mnot @ ((mbox @ '#a') @ (mnot @ (ws @ X))))))))))).
thf(axiom_a6_for_fool_ba_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#b') @ (ws @ X)))) @ ((mbox @ '#a') @ (mnot @ ((mbox @ '#b') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_ba_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#b') @ (mnot @ (ws @ X))))) @ ((mbox @ '#a') @ (mnot @ ((mbox @ '#b') @ (mnot @ (ws @ X))))))))))).
thf(axiom_a6_for_fool_bc_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#b') @ (ws @ X)))) @ ((mbox @ '#c') @ (mnot @ ((mbox @ '#b') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_bc_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#b') @ (mnot @ (ws @ X))))) @ ((mbox @ '#c') @ (mnot @ ((mbox @ '#b') @ (mnot @ (ws @ X))))))))))).
thf(axiom_a6_for_fool_ca_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#c') @ (ws @ X)))) @ ((mbox @ '#a') @ (mnot @ ((mbox @ '#c') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_ca_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#c') @ (mnot @ (ws @ X))))) @ ((mbox @ '#a') @ (mnot @ ((mbox @ '#c') @ (mnot @ (ws @ X))))))))))).
thf(axiom_a6_for_fool_cb_1, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#c') @ (ws @ X)))) @ ((mbox @ '#b') @ (mnot @ ((mbox @ '#c') @ (ws @ X)))))))))).
thf(axiom_a6_for_fool_cb_2, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((mimplies @ (mnot @ ((mbox @ '#c') @ (mnot @ (ws @ X))))) @ ((mbox @ '#b') @ (mnot @ ((mbox @ '#c') @ (mnot @ (ws @ X))))))))))).
thf(axiom_14, axiom, (mlocal @ (mnot @ ((mbox @ '#a') @ (ws @ a))))).
thf(axiom_14_0, axiom, (mlocal @ (mnot @ ((mbox @ '#b') @ (ws @ b))))).
thf(con, conjecture, (mlocal @ ((mbox @ '#c') @ (ws @ c)))).