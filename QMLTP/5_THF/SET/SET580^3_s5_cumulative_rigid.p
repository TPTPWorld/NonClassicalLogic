%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 16:30:55 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(s5_cumulative_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($cumulative),($modalities) == ($modal_system_S5)])).

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
thf(mrel_euclidean, axiom, (! [W:mworld,V:mworld,U:mworld]: (((((mrel @ W) @ U) & ((mrel @ W) @ V)) => ((mrel @ U) @ V))))).
thf(eiw_di_type, type, eiw_di: ($i > (mworld > $o))).
thf(eiw_di_nonempty, axiom, (! [W:mworld]: ((? [X:$i]: (((eiw_di @ X) @ W)))))).
thf(eiw_di_cumul, axiom, (! [W:mworld,V:mworld,X:$i]: (((((eiw_di @ X) @ W) & ((mrel @ W) @ V)) => ((eiw_di @ X) @ V))))).
thf(mforall_di_type, type, mforall_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mforall_di_def, definition, (mforall_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((! [X:$i]: ((((eiw_di @ X) @ W) => ((A @ X) @ W)))))))).
thf(mexists_di_type, type, mexists_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mexists_di_def, definition, (mexists_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((? [X:$i]: ((((eiw_di @ X) @ W) & ((A @ X) @ W)))))))).
thf(qmltpeq_decl, type, qmltpeq: ($i > ($i > (mworld > $o)))).
thf(member_decl, type, member: ($i > ($i > (mworld > $o)))).
thf(difference_decl, type, difference: ($i > ($i > $i))).
thf(symmetric_difference_decl, type, symmetric_difference: ($i > ($i > $i))).
thf(union_decl, type, union: ($i > ($i > $i))).
thf(reflexivity, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: (((qmltpeq @ X) @ X)))))).
thf(symmetry, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: ((mforall_di @ (^ [Y:$i]: (((mimplies @ ((qmltpeq @ X) @ Y)) @ ((qmltpeq @ Y) @ X)))))))))).
thf(transitivity, axiom, (mlocal @ (mforall_di @ (^ [X:$i]: ((mforall_di @ (^ [Y:$i]: ((mforall_di @ (^ [Z:$i]: (((mimplies @ ((mand @ ((qmltpeq @ X) @ Y)) @ ((qmltpeq @ Y) @ Z))) @ ((qmltpeq @ X) @ Z))))))))))))).
thf(difference_substitution_1, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((difference @ A) @ C)) @ ((difference @ B) @ C)))))))))))))).
thf(difference_substitution_2, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((difference @ C) @ A)) @ ((difference @ C) @ B)))))))))))))).
thf(symmetric_difference_substitution_1, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((symmetric_difference @ A) @ C)) @ ((symmetric_difference @ B) @ C)))))))))))))).
thf(symmetric_difference_substitution_2, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((symmetric_difference @ C) @ A)) @ ((symmetric_difference @ C) @ B)))))))))))))).
thf(union_substitution_1, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((union @ A) @ C)) @ ((union @ B) @ C)))))))))))))).
thf(union_substitution_2, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((qmltpeq @ A) @ B)) @ ((qmltpeq @ ((union @ C) @ A)) @ ((union @ C) @ B)))))))))))))).
thf(member_substitution_1, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((mand @ ((qmltpeq @ A) @ B)) @ ((member @ A) @ C))) @ ((member @ B) @ C))))))))))))).
thf(member_substitution_2, axiom, (mlocal @ (mforall_di @ (^ [A:$i]: ((mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mimplies @ ((mand @ ((qmltpeq @ A) @ B)) @ ((member @ C) @ A))) @ ((member @ C) @ B))))))))))))).
thf(union_defn, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: ((mforall_di @ (^ [D:$i]: (((mequiv @ ((member @ D) @ ((union @ B) @ C))) @ ((mor @ ((member @ D) @ B)) @ ((member @ D) @ C)))))))))))))).
thf(difference_defn, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: ((mforall_di @ (^ [D:$i]: (((mequiv @ ((member @ D) @ ((difference @ B) @ C))) @ ((mand @ ((member @ D) @ B)) @ (mnot @ ((member @ D) @ C))))))))))))))).
thf(symmetric_difference_defn, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((qmltpeq @ ((symmetric_difference @ B) @ C)) @ ((union @ ((difference @ B) @ C)) @ ((difference @ C) @ B))))))))))).
thf(commutativity_of_union, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((qmltpeq @ ((union @ B) @ C)) @ ((union @ C) @ B)))))))))).
thf(commutativity_of_symmetric_difference, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((qmltpeq @ ((symmetric_difference @ B) @ C)) @ ((symmetric_difference @ C) @ B)))))))))).
thf(equal_member_defn, axiom, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: (((mequiv @ ((qmltpeq @ B) @ C)) @ (mforall_di @ (^ [D:$i]: (((mequiv @ ((member @ D) @ B)) @ ((member @ D) @ C)))))))))))))).
thf(prove_th23, conjecture, (mlocal @ (mforall_di @ (^ [B:$i]: ((mforall_di @ (^ [C:$i]: ((mforall_di @ (^ [D:$i]: (((mequiv @ ((member @ B) @ ((symmetric_difference @ C) @ D))) @ (mnot @ ((mequiv @ ((member @ B) @ C)) @ ((member @ B) @ D))))))))))))))).