%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 13:22:35 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(s4_constant_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($constant),($modalities) == ($modal_system_S4)])).

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
thf(mforall_di_type, type, mforall_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mforall_di_def, definition, (mforall_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((! [X:$i]: (((A @ X) @ W))))))).
thf(mexists_di_type, type, mexists_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mexists_di_def, definition, (mexists_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((? [X:$i]: (((A @ X) @ W))))))).
thf(cs_decl, type, cs: $i).
thf(sue_decl, type, sue: $i).
thf(mary_decl, type, mary: $i).
thf(john_decl, type, john: $i).
thf(math_decl, type, math: $i).
thf(psych_decl, type, psych: $i).
thf(teach_decl, type, teach: ($i > ($i > (mworld > $o)))).
thf(db, axiom, (mlocal @ (mbox @ ((mand @ ((teach @ john) @ math)) @ ((mand @ (mexists_di @ (^ [X:$i]: (((teach @ X) @ cs))))) @ ((mand @ ((teach @ mary) @ psych)) @ ((teach @ sue) @ psych))))))).
thf(query, conjecture, (mlocal @ (mbox @ (mexists_di @ (^ [X:$i]: (((teach @ X) @ cs))))))).