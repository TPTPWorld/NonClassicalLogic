%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 15:57:55 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(s5_cumulative_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($cumulative),($modalities) == ($modal_system_S5)])).

thf(mworld, type, mworld: $tType).
thf(mindex, type, mindex: $tType).
thf(mrel_type, type, mrel: (mindex > (mworld > (mworld > $o)))).
thf('#i_alice_type', type, '#i_alice': mindex).
thf('#i_bob_type', type, '#i_bob': mindex).
thf('#b_alice_type', type, '#b_alice': mindex).
thf('#b_bob_type', type, '#b_bob': mindex).
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
thf('mrel_#i_alice_reflexive', axiom, (! [W:mworld]: ((((mrel @ '#i_alice') @ W) @ W)))).
thf('mrel_#i_alice_euclidean', axiom, (! [W:mworld,V:mworld,U:mworld]: ((((((mrel @ '#i_alice') @ W) @ U) & (((mrel @ '#i_alice') @ W) @ V)) => (((mrel @ '#i_alice') @ U) @ V))))).
thf('mrel_#i_bob_reflexive', axiom, (! [W:mworld]: ((((mrel @ '#i_bob') @ W) @ W)))).
thf('mrel_#i_bob_euclidean', axiom, (! [W:mworld,V:mworld,U:mworld]: ((((((mrel @ '#i_bob') @ W) @ U) & (((mrel @ '#i_bob') @ W) @ V)) => (((mrel @ '#i_bob') @ U) @ V))))).
thf('mrel_#b_alice_reflexive', axiom, (! [W:mworld]: ((((mrel @ '#b_alice') @ W) @ W)))).
thf('mrel_#b_alice_euclidean', axiom, (! [W:mworld,V:mworld,U:mworld]: ((((((mrel @ '#b_alice') @ W) @ U) & (((mrel @ '#b_alice') @ W) @ V)) => (((mrel @ '#b_alice') @ U) @ V))))).
thf('mrel_#b_bob_reflexive', axiom, (! [W:mworld]: ((((mrel @ '#b_bob') @ W) @ W)))).
thf('mrel_#b_bob_euclidean', axiom, (! [W:mworld,V:mworld,U:mworld]: ((((((mrel @ '#b_bob') @ W) @ U) & (((mrel @ '#b_bob') @ W) @ V)) => (((mrel @ '#b_bob') @ U) @ V))))).
thf(portland_decl, type, portland: $i).
thf(bigcity_decl, type, bigcity: ($i > (mworld > $o))).
thf(axiom_1_alice, axiom, (mlocal @ ((mbox @ '#b_alice') @ ((mimplies @ ((mand @ (bigcity @ portland)) @ ((mbox @ '#b_alice') @ ((mbox @ '#b_bob') @ (mnot @ (bigcity @ portland)))))) @ ((mbox @ '#i_alice') @ ((mbox @ '#b_bob') @ (bigcity @ portland))))))).
thf(axiom_1_bob, axiom, (mlocal @ ((mbox @ '#b_bob') @ ((mimplies @ ((mand @ (bigcity @ portland)) @ ((mbox @ '#b_bob') @ ((mbox @ '#b_alice') @ (mnot @ (bigcity @ portland)))))) @ ((mbox @ '#i_bob') @ ((mbox @ '#b_alice') @ (bigcity @ portland))))))).
thf(axiom_2, axiom, (mlocal @ ((mbox @ '#b_alice') @ (bigcity @ portland)))).
thf(axiom_3, axiom, (mlocal @ ((mbox @ '#b_alice') @ ((mbox @ '#b_bob') @ (mnot @ (bigcity @ portland)))))).
thf(con, conjecture, (mlocal @ ((mbox @ '#i_alice') @ ((mbox @ '#b_bob') @ (bigcity @ portland))))).