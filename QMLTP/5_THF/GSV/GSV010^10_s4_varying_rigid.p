%%% This output was generated by embedproblem, version 1.7.1 (library version 1.3).
%%% Generated on Thu Apr 28 14:35:27 EDT 2022
%%% using 'modal' embedding, version 1.5.2.
%%% Logic specification used:
%%% tff(s4_varying_rigid, logic, ($modal) == ([($constants) == ($rigid),($quantification) == ($varying),($modalities) == ($modal_system_S4)])).

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
thf(mforall_di_type, type, mforall_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mforall_di_def, definition, (mforall_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((! [X:$i]: ((((eiw_di @ X) @ W) => ((A @ X) @ W)))))))).
thf(mexists_di_type, type, mexists_di: (($i > (mworld > $o)) > (mworld > $o))).
thf(mexists_di_def, definition, (mexists_di = (^ [A:($i > (mworld > $o)),W:mworld]: ((? [X:$i]: ((((eiw_di @ X) @ W) & ((A @ X) @ W)))))))).
thf(bt_decl, type, bt: $i).
thf(an_a_nonce_decl, type, an_a_nonce: $i).
thf(a_decl, type, a: $i).
thf(b_decl, type, b: $i).
thf(at_decl, type, at: $i).
thf(t_decl, type, t: $i).
thf(a_holds_decl, type, a_holds: ($i > (mworld > $o))).
thf(t_holds_decl, type, t_holds: ($i > (mworld > $o))).
thf(party_of_protocol_decl, type, party_of_protocol: ($i > (mworld > $o))).
thf(a_stored_decl, type, a_stored: ($i > (mworld > $o))).
thf(fresh_to_b_decl, type, fresh_to_b: ($i > (mworld > $o))).
thf(b_stored_decl, type, b_stored: ($i > (mworld > $o))).
thf(b_holds_decl, type, b_holds: ($i > (mworld > $o))).
thf(message_decl, type, message: ($i > (mworld > $o))).
thf(generate_b_nonce_decl, type, generate_b_nonce: ($i > $i)).
thf(quadruple_decl, type, quadruple: ($i > ($i > ($i > ($i > $i))))).
thf(triple_decl, type, triple: ($i > ($i > ($i > $i)))).
thf(encrypt_decl, type, encrypt: ($i > ($i > $i))).
thf(generate_key_decl, type, generate_key: ($i > $i)).
thf(generate_expiration_time_decl, type, generate_expiration_time: ($i > $i)).
thf(sent_decl, type, sent: ($i > ($i > ($i > $i)))).
thf(key_decl, type, key: ($i > ($i > $i))).
thf(pair_decl, type, pair: ($i > ($i > $i))).
thf(a_holds_key_at_for_t, axiom, (mlocal @ (mbox @ (a_holds @ ((key @ at) @ t))))).
thf(a_is_party_of_protocol, axiom, (mlocal @ (mbox @ (party_of_protocol @ a)))).
thf(a_sent_message_i_to_b, axiom, (mlocal @ (mbox @ (message @ (((sent @ a) @ b) @ ((pair @ a) @ an_a_nonce)))))).
thf(a_stored_message_i, axiom, (mlocal @ (mbox @ (a_stored @ ((pair @ b) @ an_a_nonce))))).
thf(a_forwards_secure, axiom, (mlocal @ (mbox @ (mforall_di @ (^ [U:$i]: ((mbox @ (mforall_di @ (^ [V:$i]: ((mbox @ (mforall_di @ (^ [W:$i]: ((mbox @ (mforall_di @ (^ [X:$i]: ((mbox @ (mforall_di @ (^ [Y:$i]: ((mbox @ (mforall_di @ (^ [Z:$i]: ((mbox @ ((mimplies @ ((mand @ (mbox @ (message @ (((sent @ t) @ a) @ (((triple @ ((encrypt @ ((((quadruple @ Y) @ Z) @ W) @ V)) @ at)) @ X) @ U))))) @ (mbox @ (a_stored @ ((pair @ Y) @ Z))))) @ ((mand @ (mbox @ (message @ (((sent @ a) @ Y) @ ((pair @ X) @ ((encrypt @ U) @ W)))))) @ (mbox @ (a_holds @ ((key @ W) @ Y)))))))))))))))))))))))))))))))).
thf(b_hold_key_bt_for_t, axiom, (mlocal @ (mbox @ (b_holds @ ((key @ bt) @ t))))).
thf(b_is_party_of_protocol, axiom, (mlocal @ (mbox @ (party_of_protocol @ b)))).
thf(nonce_a_is_fresh_to_b, axiom, (mlocal @ (mbox @ (fresh_to_b @ an_a_nonce)))).
thf(b_creates_freash_nonces_in_time, axiom, (mlocal @ (mbox @ (mforall_di @ (^ [U:$i]: ((mbox @ (mforall_di @ (^ [V:$i]: ((mbox @ ((mimplies @ ((mand @ (mbox @ (message @ (((sent @ U) @ b) @ ((pair @ U) @ V))))) @ (mbox @ (fresh_to_b @ V)))) @ ((mand @ (mbox @ (message @ (((sent @ b) @ t) @ (((triple @ b) @ (generate_b_nonce @ V)) @ ((encrypt @ (((triple @ U) @ V) @ (generate_expiration_time @ V))) @ bt)))))) @ (mbox @ (b_stored @ ((pair @ U) @ V)))))))))))))))).
thf(b_accepts_secure_session_key, axiom, (mlocal @ (mbox @ (mforall_di @ (^ [V:$i]: ((mbox @ (mforall_di @ (^ [X:$i]: ((mbox @ (mforall_di @ (^ [Y:$i]: ((mbox @ ((mimplies @ ((mand @ (mbox @ (message @ (((sent @ X) @ b) @ ((pair @ ((encrypt @ (((triple @ X) @ V) @ (generate_expiration_time @ Y))) @ bt)) @ ((encrypt @ (generate_b_nonce @ Y)) @ V)))))) @ (mbox @ (b_stored @ ((pair @ X) @ Y))))) @ (mbox @ (b_holds @ ((key @ V) @ X))))))))))))))))))).
thf(t_holds_key_at_for_a, axiom, (mlocal @ (mbox @ (t_holds @ ((key @ at) @ a))))).
thf(t_holds_key_bt_for_b, axiom, (mlocal @ (mbox @ (t_holds @ ((key @ bt) @ b))))).
thf(t_is_party_of_protocol, axiom, (mlocal @ (mbox @ (party_of_protocol @ t)))).
thf(server_t_generates_key, axiom, (mlocal @ (mbox @ (mforall_di @ (^ [U:$i]: ((mbox @ (mforall_di @ (^ [V:$i]: ((mbox @ (mforall_di @ (^ [W:$i]: ((mbox @ (mforall_di @ (^ [X:$i]: ((mbox @ (mforall_di @ (^ [Y:$i]: ((mbox @ (mforall_di @ (^ [Z:$i]: ((mbox @ (mforall_di @ (^ [X1:$i]: ((mbox @ ((mimplies @ ((mand @ (mbox @ (message @ (((sent @ U) @ t) @ (((triple @ U) @ V) @ ((encrypt @ (((triple @ W) @ X) @ Y)) @ Z)))))) @ ((mand @ (mbox @ (t_holds @ ((key @ Z) @ U)))) @ (mbox @ (t_holds @ ((key @ X1) @ W)))))) @ (mbox @ (message @ (((sent @ t) @ W) @ (((triple @ ((encrypt @ ((((quadruple @ U) @ X) @ (generate_key @ X)) @ Y)) @ X1)) @ ((encrypt @ (((triple @ W) @ (generate_key @ X)) @ Y)) @ Z)) @ V)))))))))))))))))))))))))))))))))))).