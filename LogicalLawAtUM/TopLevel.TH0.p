%%% Logic specification used:
%%% tff(simple_spec, logic, ($alethic_modal) == ([($constants) == ($rigid),($quantification) == ($constant),($modalities) == ($modal_system_S5)])).

thf(student_type, type, student: $tType).
%----Charges
thf(charge_type, type, charge: $tType).
%----Pleas
thf(plea_type, type, plea: $tType).
%----Actions have a time, place, activity
thf(action_type, type, action: $tType).
%----Panel conclusion
thf(panelConclusion_type, type, panelConclusion: $tType).
thf(mworld, type, mworld: $tType).
thf(mrel_type, type, mrel: (mworld > (mworld > $o))).
thf(mactual_type, type, mactual: mworld).
thf(mlocal_type, type, mlocal: ((mworld > $o) > $o)).
thf(mlocal_def, definition, (mlocal = (^ [Phi:(mworld > $o)]: ((Phi @ mactual))))).
thf(mglobal_type, type, mglobal: ((mworld > $o) > $o)).
thf(mglobal_def, definition, (mglobal = (^ [Phi:(mworld > $o)]: ((! [W:mworld]: ((Phi @ W))))))).
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
thf(mforall_student_type, type, mforall_student: ((student > (mworld > $o)) > (mworld > $o))).
thf(mforall_student_def, definition, (mforall_student = (^ [A:(student > (mworld > $o)),W:mworld]: ((! [X:student]: (((A @ X) @ W))))))).
thf(mexists_student_type, type, mexists_student: ((student > (mworld > $o)) > (mworld > $o))).
thf(mexists_student_def, definition, (mexists_student = (^ [A:(student > (mworld > $o)),W:mworld]: ((? [X:student]: (((A @ X) @ W))))))).
thf(mforall_charge_type, type, mforall_charge: ((charge > (mworld > $o)) > (mworld > $o))).
thf(mforall_charge_def, definition, (mforall_charge = (^ [A:(charge > (mworld > $o)),W:mworld]: ((! [X:charge]: (((A @ X) @ W))))))).
thf(mexists_charge_type, type, mexists_charge: ((charge > (mworld > $o)) > (mworld > $o))).
thf(mexists_charge_def, definition, (mexists_charge = (^ [A:(charge > (mworld > $o)),W:mworld]: ((? [X:charge]: (((A @ X) @ W))))))).
thf(mforall_action_type, type, mforall_action: ((action > (mworld > $o)) > (mworld > $o))).
thf(mforall_action_def, definition, (mforall_action = (^ [A:(action > (mworld > $o)),W:mworld]: ((! [X:action]: (((A @ X) @ W))))))).
thf(mexists_action_type, type, mexists_action: ((action > (mworld > $o)) > (mworld > $o))).
thf(mexists_action_def, definition, (mexists_action = (^ [A:(action > (mworld > $o)),W:mworld]: ((? [X:action]: (((A @ X) @ W))))))).
thf(campus_type, type, campus: $i).
thf(drunk_type, type, drunk: $i).
thf(tuesday_type, type, tuesday: $i).
thf(drinkingInDorm_decl, type, drinkingInDorm: charge).
thf(responsiblePlea_decl, type, responsiblePlea: plea).
thf(notResponsiblePlea_decl, type, notResponsiblePlea: plea).
thf(noPlea_decl, type, noPlea: plea).
%----For now just use three terms. Time and place can be formalised.
thf(whereWhenWhat_decl, type, wWW: ($i > ($i > ($i > action)))).
thf(definitelyResponsible_decl, type, definitelyResponsible: panelConclusion).
thf(possiblyResponsible_decl, type, possiblyResponsible: panelConclusion).
thf(possiblyNotResponsible_decl, type, possiblyNotResponsible: panelConclusion).
thf(definitelyNotResponsible_decl, type, definitelyNotResponsible: panelConclusion).
thf(isCharged_decl, type, isCharged: (student > (charge > (mworld > $o)))).
thf(isResponsible_decl, type, isResponsible: (student > (charge > (mworld > $o)))).
thf(definitely_responsible_decl, type, definitely_responsible: (student > (charge > (mworld > $o)))).
thf(possibly_responsible_decl, type, possibly_responsible: (student > (charge > (mworld > $o)))).
thf(possibly_not_responsible_decl, type, possibly_not_responsible: (student > (charge > (mworld > $o)))).
thf(definitely_not_responsible_decl, type, definitely_not_responsible: (student > (charge > (mworld > $o)))).
thf(pleads_decl, type, pleads: (student > (charge > (plea > (mworld > $o))))).
thf(panelConcludesResponsible_decl, type, panelConcludesResponsible: (student > (charge > (action > (mworld > $o))))).
thf(panelConcludes_decl, type, panelConcludes: (student > (charge > (panelConclusion > (action > (mworld > $o)))))).
thf(inScope_decl, type, inScope: (action > (mworld > $o))).
%----Case studies about poor George
thf(george_decl, type, george: student).
%----Determination of responsibility. The panelConcludesResponsible and inScope conditions are
%----subject to necessity and possibility modalities, which propagate up to isResponsible.
thf(responsible_iff, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: (((mequiv @ ((isResponsible @ Student) @ Charge)) @ ((mor @ (((pleads @ Student) @ Charge) @ responsiblePlea)) @ (mexists_action @ (^ [Action:action]: (((mand @ (((panelConcludesResponsible @ Student) @ Charge) @ Action)) @ (inScope @ Action))))))))))))))).
%----Propagate different panel conclusiond up to levels of panel confidence.
thf(panel_concludes_necessary, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: ((mforall_action @ (^ [Action:action]: (((mimplies @ ((((panelConcludes @ Student) @ Charge) @ definitelyResponsible) @ Action)) @ (mbox @ (((panelConcludesResponsible @ Student) @ Charge) @ Action)))))))))))))).
thf(panel_concludes_possible, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: ((mforall_action @ (^ [Action:action]: (((mimplies @ ((((panelConcludes @ Student) @ Charge) @ possiblyResponsible) @ Action)) @ (mdia @ (((panelConcludesResponsible @ Student) @ Charge) @ Action)))))))))))))).
thf(panel_concludes_possible_not, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: ((mforall_action @ (^ [Action:action]: (((mimplies @ ((((panelConcludes @ Student) @ Charge) @ possiblyNotResponsible) @ Action)) @ (mdia @ (mnot @ (((panelConcludesResponsible @ Student) @ Charge) @ Action))))))))))))))).
thf(panel_concludes_necessary_not, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: ((mforall_action @ (^ [Action:action]: (((mimplies @ ((((panelConcludes @ Student) @ Charge) @ definitelyNotResponsible) @ Action)) @ (mbox @ (mnot @ (((panelConcludesResponsible @ Student) @ Charge) @ Action))))))))))))))).
%----Definitions for top level levels on responsibility
thf(definitely_responsible, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: (((mimplies @ ((mand @ ((isCharged @ Student) @ Charge)) @ (mbox @ ((isResponsible @ Student) @ Charge)))) @ ((definitely_responsible @ Student) @ Charge)))))))))).
thf(possibly_responsible, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: (((mimplies @ ((mand @ ((isCharged @ Student) @ Charge)) @ (mdia @ ((isResponsible @ Student) @ Charge)))) @ ((possibly_responsible @ Student) @ Charge)))))))))).
thf(possibly_not_responsible, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: (((mimplies @ ((mand @ ((isCharged @ Student) @ Charge)) @ (mdia @ (mnot @ ((isResponsible @ Student) @ Charge))))) @ ((possibly_not_responsible @ Student) @ Charge)))))))))).
thf(definitely_not_responsible, axiom, (mglobal @ (mforall_student @ (^ [Student:student]: ((mforall_charge @ (^ [Charge:charge]: (((mimplies @ ((mand @ ((isCharged @ Student) @ Charge)) @ (mbox @ (mnot @ ((isResponsible @ Student) @ Charge))))) @ ((definitely_not_responsible @ Student) @ Charge)))))))))).
thf(the_charge, axiom, (mglobal @ ((isCharged @ george) @ drinkingInDorm))).
%----Example where student pleads responsible.
%% tff(the_plea,axiom,pleads(george,drinkingInDorm,responsiblePlea)).
%% 
%% %----Can be proved
%% tff(verdict,conjecture,
%%     definitely_responsible(george,drinkingInDorm) ).
%% %----Can be proved
%% tff(verdict,conjecture,
%%     possibly_responsible(george,drinkingInDorm) ).
%% %----Cannot be proved
%% tff(verdict,conjecture,
%%     possibly_not_responsible(george,drinkingInDorm) ).
%% %----Example where student pleads not responsible, the panel concludes he definitely is, but 
%% %----it's only possibly in scope.
thf(the_plea, axiom, (mglobal @ (((pleads @ george) @ drinkingInDorm) @ notResponsiblePlea))).
thf(the_panel_concludes, axiom, (mglobal @ ((((panelConcludes @ george) @ drinkingInDorm) @ definitelyResponsible) @ (((wWW @ campus) @ tuesday) @ drunk)))).
thf(the_scope, axiom, (mglobal @ (mdia @ (inScope @ (((wWW @ campus) @ tuesday) @ drunk))))).
%----Cannot be proved
thf(verdict, conjecture, (mlocal @ ((definitely_responsible @ george) @ drinkingInDorm))).
% SZS output end ListOfTH0 for TopLevel.p
