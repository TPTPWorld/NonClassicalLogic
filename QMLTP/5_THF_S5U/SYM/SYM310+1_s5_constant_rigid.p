%%% This output was generated by embedproblem, version 1.7.2 (library version 1.3).
%%% Generated on Fri May 06 13:42:12 EDT 2022
%%% using 'modal' embedding, version 1.5.3.
%%% Logic specification used:
%%% tff(s5_constant_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($constant),($modalities) == ($modal_system_S5U)])).

thf(mworld, type, mworld: $tType).
thf(mrel_type, type, mrel: (mworld > (mworld > $o))).
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
thf(mbox_type, type, mbox: ((mworld > $o) > (mworld > $o))).
thf(mbox_def, definition, (mbox = (^ [Phi:(mworld > $o),W:mworld]: ((! [V:mworld]: ((((mrel @ W) @ V) => (Phi @ V)))))))).
thf(mdia_type, type, mdia: ((mworld > $o) > (mworld > $o))).
thf(mdia_def, definition, (mdia = (^ [Phi:(mworld > $o),W:mworld]: ((? [V:mworld]: ((((mrel @ W) @ V) & (Phi @ V)))))))).
thf(mrel_universal, axiom, (! [W:mworld,V:mworld]: (((mrel @ W) @ V)))).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:40:13 CEST 2022 using command 'downgrade(tff)'.
thf(v1_decl, type, v1: (mworld > $o)).
thf(v2_decl, type, v2: (mworld > $o)).
thf(v3_decl, type, v3: (mworld > $o)).
thf(v4_decl, type, v4: (mworld > $o)).
thf(v5_decl, type, v5: (mworld > $o)).
thf(v6_decl, type, v6: (mworld > $o)).
thf(v7_decl, type, v7: (mworld > $o)).
thf(v8_decl, type, v8: (mworld > $o)).
thf(persat1, axiom, (mlocal @ ((mor @ v1) @ ((mor @ v2) @ ((mor @ (mnot @ v3)) @ (mbox @ (mnot @ v7))))))).
thf(persat2, axiom, (mlocal @ ((mor @ v2) @ ((mor @ v3) @ ((mor @ v7) @ (mbox @ v1)))))).
thf(persat3, axiom, (mlocal @ ((mor @ v2) @ ((mor @ v4) @ ((mor @ v6) @ (mbox @ (mnot @ v7))))))).
thf(persat4, axiom, (mlocal @ ((mor @ v2) @ ((mor @ (mnot @ v3)) @ ((mor @ (mbox @ v6)) @ (mbox @ v7)))))).
thf(persat5, axiom, (mlocal @ ((mor @ v2) @ ((mor @ (mnot @ v5)) @ ((mor @ (mbox @ (mnot @ v4))) @ (mbox @ (mnot @ v8))))))).
thf(persat6, axiom, (mlocal @ ((mor @ v2) @ ((mor @ (mnot @ v7)) @ ((mor @ (mbox @ v6)) @ (mbox @ (mnot @ v4))))))).
thf(persat7, axiom, (mlocal @ ((mor @ v3) @ ((mor @ v4) @ ((mor @ (mbox @ v4)) @ (mbox @ v6)))))).
thf(persat8, axiom, (mlocal @ ((mor @ v3) @ ((mor @ (mnot @ v2)) @ ((mor @ (mbox @ v7)) @ (mbox @ (mnot @ v5))))))).
thf(persat9, axiom, (mlocal @ ((mor @ v3) @ ((mor @ (mnot @ v5)) @ ((mor @ (mbox @ v3)) @ (mbox @ v5)))))).
thf(persat10, axiom, (mlocal @ ((mor @ v3) @ ((mor @ (mnot @ v8)) @ ((mor @ (mbox @ v4)) @ (mbox @ (mnot @ v8))))))).
thf(persat11, axiom, (mlocal @ ((mor @ v3) @ ((mor @ (mbox @ v1)) @ ((mor @ (mbox @ v4)) @ (mbox @ (mnot @ v2))))))).
thf(persat12, axiom, (mlocal @ ((mor @ v4) @ ((mor @ (mnot @ v5)) @ ((mor @ (mbox @ v5)) @ (mbox @ (mnot @ v2))))))).
thf(persat13, axiom, (mlocal @ ((mor @ v5) @ ((mor @ v8) @ ((mor @ (mbox @ (mnot @ v1))) @ (mbox @ (mnot @ v5))))))).
thf(persat14, axiom, (mlocal @ ((mor @ v5) @ ((mor @ (mnot @ v3)) @ ((mor @ (mnot @ v8)) @ (mbox @ (mnot @ v4))))))).
thf(persat15, axiom, (mlocal @ ((mor @ v5) @ ((mor @ (mnot @ v4)) @ ((mor @ (mbox @ v2)) @ (mbox @ v8)))))).
thf(persat16, axiom, (mlocal @ ((mor @ v6) @ ((mor @ v7) @ ((mor @ (mnot @ v1)) @ (mbox @ (mnot @ v4))))))).
thf(persat17, axiom, (mlocal @ ((mor @ v6) @ ((mor @ v8) @ ((mor @ (mnot @ v2)) @ (mbox @ (mnot @ v3))))))).
thf(persat18, axiom, (mlocal @ ((mor @ v6) @ ((mor @ v8) @ ((mor @ (mnot @ v4)) @ (mbox @ (mnot @ v2))))))).
thf(persat19, axiom, (mlocal @ ((mor @ v6) @ ((mor @ v8) @ ((mor @ (mbox @ v2)) @ (mbox @ v7)))))).
thf(persat20, axiom, (mlocal @ ((mor @ v6) @ ((mor @ (mbox @ v6)) @ ((mor @ (mbox @ (mnot @ v2))) @ (mbox @ (mnot @ v5))))))).
thf(persat21, axiom, (mlocal @ ((mor @ v6) @ ((mor @ (mbox @ (mnot @ v4))) @ ((mor @ (mbox @ (mnot @ v5))) @ (mbox @ (mnot @ v8))))))).
thf(persat22, axiom, (mlocal @ ((mor @ v7) @ ((mor @ (mnot @ v3)) @ ((mor @ (mnot @ v6)) @ (mbox @ (mnot @ v6))))))).
thf(persat23, axiom, (mlocal @ ((mor @ v7) @ ((mor @ (mbox @ v3)) @ ((mor @ (mbox @ v5)) @ (mbox @ (mnot @ v4))))))).
thf(persat24, axiom, (mlocal @ ((mor @ v8) @ ((mor @ (mnot @ v6)) @ ((mor @ (mbox @ v1)) @ (mbox @ v2)))))).
thf(persat25, axiom, (mlocal @ ((mor @ (mnot @ v2)) @ ((mor @ (mbox @ v1)) @ ((mor @ (mbox @ v7)) @ (mbox @ v8)))))).
thf(persat26, axiom, (mlocal @ ((mor @ (mnot @ v4)) @ ((mor @ (mnot @ v8)) @ ((mor @ (mbox @ v5)) @ (mbox @ (mnot @ v8))))))).
thf(persat27, axiom, (mlocal @ ((mor @ (mnot @ v4)) @ ((mor @ (mbox @ v2)) @ ((mor @ (mbox @ (mnot @ v4))) @ (mbox @ (mnot @ v7))))))).
thf(persat28, axiom, (mlocal @ ((mor @ (mnot @ v5)) @ ((mor @ (mnot @ v6)) @ ((mor @ (mbox @ v1)) @ (mbox @ v2)))))).
thf(persat29, axiom, (mlocal @ ((mor @ (mnot @ v6)) @ ((mor @ (mbox @ v1)) @ ((mor @ (mbox @ v2)) @ (mbox @ (mnot @ v4))))))).
thf(persat30, axiom, (mlocal @ ((mor @ (mnot @ v6)) @ ((mor @ (mbox @ v1)) @ ((mor @ (mbox @ (mnot @ v1))) @ (mbox @ (mnot @ v5))))))).
thf(deontic1, axiom, (mlocal @ (mdia @ (^ [W:mworld]: ($true))))).
thf(result1, conjecture, (mlocal @ (^ [W:mworld]: ($false)))).