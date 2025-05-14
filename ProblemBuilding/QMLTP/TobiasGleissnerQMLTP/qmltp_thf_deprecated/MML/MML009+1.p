% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [bs := $modal_system_D , wu := $modal_system_D , bu := $modal_system_D]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_bs_type,type,(bs : index_type)).
thf(rel_wu_type,type,(wu : index_type)).
thf(rel_bu_type,type,(bu : index_type)).

% propositions

% individual constants
thf(userdoc_type,type,(userdoc : ($i))).
thf(lw_type,type,(lw : ($i))).

% predicates
thf(printed_type,type,(printed : ($i>$o))).
thf(printableon_type,type,(printableon : ($i>$i>$o))).
thf(printedable_type,type,(printedable : ($i>$i>$o))).
thf(printedon_type,type,(printedon : ($i>$i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML009+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (User Modeling System)
% Problem  : Printer Problem
% Version  : Especial.
% English  : Assume the following:
%            If the user is believed to want a document to be printed on a
%            printer, then he is also assumed to believe that this is possible.
%            Users want any implication of their immediate goals if the know
%            the implication relation.
%            The user wants to be printed the document userdoc.
%            The user believes that all documents are printed on printer lw
%            Then the user wants that the document userdoc is printed
%            on printer lw.
% Refs     : [KP95] A. Kobsa and W. Pohl (1995) The User Modeling Shell System
%            BGP-MS
% Source   :
% Names    :
% Status   : Theorem
% Rating   : 0.00 v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%--------------------------------------------------------------------------
tpi(9,set_logic,).
thf(axiom_1,axiom,(![D:$i]:(![P:$i]:(($box@index_type@bs@($box@index_type@wu@((printedon@D@P))))=>($box@index_type@bs@($box@index_type@bu@((printableon@D@P)))))))).
thf(axiom_2_1,axiom,(![D:$i]:(![P:$i]:((($box@index_type@bs@($box@index_type@wu@((printed@D))))&($box@index_type@bs@($box@index_type@bu@((printed@D)=>((printedon@D@P))))))=>($box@index_type@bs@($box@index_type@wu@((printedon@D@P)))))))).
thf(axiom_2_2,axiom,(![D:$i]:(![P:$i]:((($box@index_type@bs@($box@index_type@wu@((printedon@D@P))))&($box@index_type@bs@($box@index_type@bu@((printedon@D@P)=>((printedable@D@P))))))=>($box@index_type@bs@($box@index_type@wu@((printedable@D@P)))))))).
thf(axiom_3,axiom,($box@index_type@bs@($box@index_type@wu@((printed@userdoc))))).
thf(axiom_4,axiom,($box@index_type@bs@($box@index_type@bu@(![D:$i]:((printed@D)=>(printedon@D@lw)))))).
thf(con,conjecture,($box@index_type@bs@($box@index_type@wu@((printedon@userdoc@lw))))).