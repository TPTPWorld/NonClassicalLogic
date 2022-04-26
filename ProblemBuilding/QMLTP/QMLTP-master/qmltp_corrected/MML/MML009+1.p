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

tpi(9,set_logic,modal([cumulative,rigid,local],
                      [(bs,d),(wu,d),(bu,d)])).


qmf(axiom_1,axiom,
(! [D] : (! [P] : ((#box(bs) : (#box(wu) : (printedon(D,P)))) => (#box(bs) : (#box(bu) : (printableon(D,P)))))))).

qmf(axiom_2_1,axiom,
 (! [D] : (! [P] : (((#box(bs) : (#box(wu) : (printed(D)))) & (#box(bs) : (#box(bu) : (printed(D) => (printedon(D,P)))))) => (#box(bs) : (#box(wu) : (printedon(D,P)))))))).

qmf(axiom_2_2,axiom,
 (! [D] : (! [P] : (((#box(bs) : (#box(wu) : (printedon(D,P)))) & (#box(bs) : (#box(bu) : (printedon(D,P) => (printedable(D,P)))))) => (#box(bs) : (#box(wu) : (printedable(D,P)))))))).

qmf(axiom_3,axiom,
 (#box(bs) : (#box(wu) : (printed(userdoc))))).

qmf(axiom_4,axiom,
 (#box(bs) : (#box(bu) : (! [D] : (printed(D) => printedon(D,lw)))))).

qmf(con,conjecture,
 (#box(bs) : (#box(wu) : (printedon(userdoc,lw))))).
