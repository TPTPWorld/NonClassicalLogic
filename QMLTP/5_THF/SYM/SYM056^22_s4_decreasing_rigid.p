%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 17:15:58 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(s4_decreasing_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($decreasing),($modalities) == ($modal_system_S4)])).

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
thf(mrel_reflexive, axiom, (! [W:mworld]: (((mrel @ W) @ W)))).
thf(mrel_transitive, axiom, (! [W:mworld,V:mworld,U:mworld]: (((((mrel @ W) @ V) & ((mrel @ V) @ U)) => ((mrel @ W) @ U))))).
thf(eiw_di_type, type, eiw_di: ($i > (mworld > $o))).
thf(eiw_di_nonempty, axiom, (! [W:mworld]: ((? [X:$i]: (((eiw_di @ X) @ W)))))).
thf(eiw_di_decr, axiom, (! [W:mworld,V:mworld,X:$i]: (((((eiw_di @ X) @ W) & ((mrel @ V) @ W)) => ((eiw_di @ X) @ V))))).
thf(mforall_di_type, type, mforall_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mforall_di_def, definition, (mforall_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((! [X:$i]: ((((eiw_di @ X) @ W) => ((A @ X) @ W)))))))).
thf(mexists_di_type, type, mexists_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mexists_di_def, definition, (mexists_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((? [X:$i]: ((((eiw_di @ X) @ W) & ((A @ X) @ W)))))))).
thf(qmltpeq_decl, type, qmltpeq: ($i > ($i > (mworld > $o)))).
thf(p_decl, type, p: ($i > (mworld > $o))).
thf(reflexivity, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((qmltpeq @ X) @ X)))))).
thf(symmetry, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: ((mforall_di @ (^ [Y:$i]: (((mimplies @ ((qmltpeq @ X) @ Y)) @ ((qmltpeq @ Y) @ X)))))))))).
thf(transitivity, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: ((mforall_di @ (^ [Y:$i]: ((mforall_di @ (^ [Z:$i]: (((mimplies @ ((mand @ ((qmltpeq @ X) @ Y)) @ ((qmltpeq @ Y) @ Z))) @ ((qmltpeq @ X) @ Z))))))))))))).
thf(p_substitution_1, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: (((mimplies @ ((mand @ ((qmltpeq @ A) @ B)) @ (p @ A))) @ (p @ B)))))))))).
thf(con, conjecture, (mlocal @ ((mimplies @ (mforall_di @ (^ [X:$i]: ((mbox @ (mexists_di @ (^ [Y:$i]: (((qmltpeq @ X) @ Y))))))))) @ ((mimplies @ (mexists_di @ (^ [X:$i]: ((mdia @ (p @ X)))))) @ (mdia @ (mexists_di @ (^ [X:$i]: ((p @ X))))))))).