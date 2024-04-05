tff(simple_spec,logic,
    $alethic_modal == [
      $constants == $rigid,
      $quantification == $constant,
      $modalities == $modal_system_S5 ] ).

tff(student_type,type,student: $tType).

%----Charges
tff(charge_type,type,charge: $tType).
tff(drinkingInDorm_decl,type,drinkingInDorm: charge).

%----Pleas
tff(plea_type,type,plea: $tType).
tff(responsiblePlea_decl,type,responsiblePlea: plea).
tff(notResponsiblePlea_decl,type,notResponsiblePlea: plea).
tff(noPlea_decl,type,noPlea: plea).
tff(three_pleas,axiom,
    ! [Plea: plea] :
      ( ( Plea = responsiblePlea
        | Plea = notResponsiblePlea
        | Plea = noPlea )
      & ( responsiblePlea != notResponsiblePlea
        & responsiblePlea != noPlea
        & notResponsiblePlea != noPlea ) ) ).
%---Should be able to say $distinct(responsiblePlea,notResponsiblePlea,noPlea), but Leo-III barfs.

%----Actions have a time, place, activity
tff(action_type,type,action: $tType).
%----For now just use three terms. Time and place can be formalised.
tff(whereWhenWhat_decl,type,wWW: ($i *  $i * $i) > action).

%----Panel conclusion
tff(panelConclusion_type,type,panelConclusion: $tType).
tff(definitelyResponsible_decl,type,definitelyResponsible: panelConclusion).
tff(possiblyResponsible_decl,type,possiblyResponsible: panelConclusion).
tff(possiblyNotResponsible_decl,type,possiblyNotResponsible: panelConclusion).
tff(definitelyNotResponsible_decl,type,definitelyNotResponsible: panelConclusion).
tff(four_conclusions,axiom,
    ! [Conclusion: panelConclusion] :
      ( ( Conclusion = definitelyResponsible
        | Conclusion = possiblyResponsible
        | Conclusion = possiblyNotResponsible
        | Conclusion = definitelyNotResponsible )
      & ( definitelyResponsible != possiblyResponsible
        & definitelyResponsible != possiblyNotResponsible
        & definitelyResponsible != definitelyNotResponsible
        & possiblyResponsible != possiblyNotResponsible
        & possiblyResponsible != definitelyNotResponsible
        & possiblyNotResponsible != definitelyNotResponsible ) ) ).

tff(isCharged_decl,type,isCharged: (student * charge) > $o).
tff(isResponsible_decl,type,isResponsible: (student * charge) > $o).
tff(definitely_responsible_decl,type,definitely_responsible: (student * charge) > $o).
tff(possibly_responsible_decl,type,possibly_responsible: (student * charge) > $o).
tff(possibly_not_responsible_decl,type,possibly_not_responsible: (student * charge) > $o).
tff(definitely_not_responsible_decl,type,definitely_not_responsible: (student * charge) > $o).
tff(pleads_decl,type,pleads: (student * charge * plea) > $o).
tff(panelConcludesResponsible_decl,type,panelConcludesResponsible:(student * charge * action) > $o).
tff(panelConcludes_decl,type,panelConcludes:(student * charge * panelConclusion * action) > $o).
tff(inScope_decl,type,inScope: action > $o).

%----Determination of responsibility. The panelConcludesResponsible and inScope conditions are
%----subject to necessity and possibility modalities, which propagate up to isResponsible.
tff(responsible_iff,axiom,
    ! [Student: student,Charge: charge] :
      ( isResponsible(Student,Charge)
    <=> ( pleads(Student,Charge,responsiblePlea)
        | ? [Action: action] :
            ( panelConcludesResponsible(Student,Charge,Action)
            & inScope(Action) ) ) ) ).

%----Propagate different panel conclusiond up to levels of panel confidence.
tff(panel_concludes_necessary,axiom,
    ! [Student: student,Charge: charge,Action: action] :
      ( panelConcludes(Student,Charge,definitelyResponsible,Action)
     => {$necessary} @ (panelConcludesResponsible(Student,Charge,Action)) ) ).

%----US law says innocent until proven guilty, so must be possible either way. Should it say
%----necessarily not responsible?
tff(panel_concludes_possible,axiom,
    ! [Student: student,Charge: charge,Action: action] :
      ( panelConcludes(Student,Charge,possiblyResponsible,Action)
     => ( {$possible} @ (panelConcludesResponsible(Student,Charge,Action)) 
        & {$possible} @ (~ panelConcludesResponsible(Student,Charge,Action)) ) ) ).

tff(panel_concludes_possible_not,axiom,
    ! [Student: student,Charge: charge,Action: action] :
      ( panelConcludes(Student,Charge,possiblyNotResponsible,Action)
     => ~ {$possible} @ (panelConcludesResponsible(Student,Charge,Action)) ) ).

tff(panel_concludes_necessary_not,axiom,
    ! [Student: student,Charge: charge,Action: action] :
      ( panelConcludes(Student,Charge,definitelyNotResponsible,Action)
     => {$necessary} @ (~ panelConcludesResponsible(Student,Charge,Action)) ) ).

%----Definitions for top level levels on responsibility
tff(definitely_responsible,axiom,
    ! [Student: student,Charge: charge] :
      ( ( isCharged(Student,Charge)
        & {$necessary} @ ( isResponsible(Student,Charge) ) )
     => definitely_responsible(Student,Charge) ) ).

tff(possibly_responsible,axiom,
    ! [Student: student,Charge: charge] :
      ( ( isCharged(Student,Charge)
        & {$possible} @ ( isResponsible(Student,Charge) ) )
     => possibly_responsible(Student,Charge) ) ).

tff(possibly_not_responsible,axiom,
    ! [Student: student,Charge: charge] :
      ( ( isCharged(Student,Charge)
        & {$possible} @ ( ~ isResponsible(Student,Charge) ) )
     => possibly_not_responsible(Student,Charge) ) ).

tff(definitely_not_responsible,axiom,
    ! [Student: student,Charge: charge] :
      ( ( isCharged(Student,Charge)
        & {$necessary} @ ( ~ isResponsible(Student,Charge) ) )
     => definitely_not_responsible(Student,Charge) ) ).

%----Case studies about poor George
tff(george_decl,type,george: student).
tff(the_charge,axiom,isCharged(george,drinkingInDorm)).

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
%% tff(the_plea,axiom,pleads(george,drinkingInDorm,notResponsiblePlea)).
%% tff(the_panel_concludes,axiom,
%%     panelConcludes(george,drinkingInDorm,definitelyResponsible,wWW(campus,tuesday,drunk)) ).
%% tff(the_scope,axiom,
%%     {$possible} @ (inScope(wWW(campus,tuesday,drunk))) ).
%% 
%% %----Cannot be proved
%% tff(verdict,conjecture,
%%     definitely_responsible(george,drinkingInDorm) ).
%% %----Can be proved
%% tff(verdict,conjecture,
%%     possibly_responsible(george,drinkingInDorm) ).
%% %----Cannot be proved
%% tff(verdict,conjecture,
%%     possibly_not_responsible(george,drinkingInDorm) ).

%% %----Example where student pleads not responsible, the panel concludes he possibly is, and 
%% %----it's in scope.
%% tff(the_actions,axiom,
%%     ! [Action: action] : Action = wWW(campus,tuesday,drunk) ).
%% 
%% tff(the_plea,axiom,pleads(george,drinkingInDorm,notResponsiblePlea)).
%% tff(the_panel_concludes,axiom,
%%     panelConcludes(george,drinkingInDorm,possiblyResponsible,wWW(campus,tuesday,drunk)) ).
%% tff(the_scope,axiom,
%%     inScope(wWW(campus,tuesday,drunk)) ).
%% 
%----Cannot be proved
%% tff(verdict,conjecture,
%%     definitely_responsible(george,drinkingInDorm) ).
%% %----Can be proved
%% tff(verdict,conjecture,
%%     possibly_responsible(george,drinkingInDorm) ).
%% %----Cannot be proved but I want to be provable.
%% tff(verdict,conjecture,
%%     possibly_not_responsible(george,drinkingInDorm) ).

