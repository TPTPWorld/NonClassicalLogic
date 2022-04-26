% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S4]).

% modalities

% propositions

% individual constants
thf(fortytwo_type,type,(fortytwo : ($i))).
thf(p_type,type,(p : ($i))).
thf(t_type,type,(t : ($i))).

% predicates
thf(number_type,type,(number : ($i>$i>$o))).
thf(code_type,type,(code : ($i>$o))).
thf(balance_type,type,(balance : ($i>$i>$o))).
thf(belongs_type,type,(belongs : ($i>$i>$o))).
thf(identifiable_type,type,(identifiable : ($i>$o))).
thf(uttered_type,type,(uttered : ($i>$i>$o))).
thf(value_type,type,(value : ($i>$i>$o))).
thf(hasanswer_type,type,(hasanswer : ($i>$o))).
thf(account_type,type,(account : ($i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML019+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Banker Example (variant 3)
% Version  : Especial.
% English  : Speaker S wishes to find out from a bank teller A the balance of
%            S's account, number 42
% Refs     : [Sto99] M. Stone. Indefinite Information in Modal Logic
%            Programming. TR-56, Rutgers University, 1999.
% Source   :
% Names    :
% Status   : Unsolved
% Rating   : 0.00  v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%------------------------------------------------------------------------------
thf(axiom_4,axiom,({$box(#cr)}@(![A:$i]:(?[U:$i]:({$box(#cr)}@((({$box(#ip)}@((belongs@A@p)))&({$box(#cr)}@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(uttered@p@U))=>({$box(#cr)}@((belongs@A@p))))))))).
thf(axiom_5,axiom,({$box(#cr)}@(![A:$i]:(![B:$i]:(?[U:$i]:(({$box(#cr)}@(({$box(#ip)}@(?[V:$i]:({$box(#p)}@((value@B@V)))))=>(hasanswer@p)))&(((({$box(#cr)}@((account@A)&(belongs@A@p)&(balance@A@B)&(identifiable@B))))&(uttered@p@U))=>(({$box(#cr)}@(?[V:$i]:({$box(#p)}@((value@B@V)))))=>(hasanswer@p))))))))).
thf(axiom_6,axiom,({$box(#cr)}@(![A:$i]:(![B:$i]:(![V:$i]:(?[U:$i]:(({$box(#cr)}@(({$box(#it)}@((value@B@V)))&({$box(#cr)}@((account@A)&(belongs@A@p)&(balance@A@B)&(identifiable@B)))&(uttered@t@U)))=>({$box(#cr)}@((value@B@V)))))))))).
thf(axiom_7,axiom,({$box(#bank)}@((code@fortytwo)))).
thf(axiom_8,axiom,({$box(#bank)}@(![C:$i]:((code@C)=>(?[A:$i]:({$box(#bank)}@((account@A)&(number@A@C)&(identifiable@A)))))))).
thf(axiom_9,axiom,({$box(#bank)}@(![A:$i]:(?[B:$i]:({$box(#bank)}@((account@A)=>(balance@A@B))))))).
thf(axiom_10,axiom,({$box(#bank)}@(![A:$i]:(![B:$i]:(((balance@A@B)&(identifiable@A))=>(identifiable@B)))))).
thf(axiom_11,axiom,({$box(#bank)}@(![A:$i]:(![B:$i]:((balance@A@B)=>(?[V:$i]:({$box(#t)}@((value@B@V))))))))).
thf(axiom_12,axiom,({$box(#ip)}@(![A:$i]:(((account@A)&(number@A@fortytwo))=>(belongs@A@p))))).
thf(axiom_13,axiom,({$box(#ip)}@(![A:$i]:(![B:$i]:((account@A)&(number@A@fortytwo)&(balance@A@B)&(?[C:$i]:({$box(#p)}@((value@B@C)))=>((hasanswer@p)))))))).
thf(axiom_1,axiom,(({$box(#cr)}@((hasanswer@p)))=>({$box(#p)}@((hasanswer@p))))).
thf(axiom_1_0,axiom,(({$box(#cr)}@((hasanswer@p)))=>({$box(#t)}@((hasanswer@p))))).
thf(axiom_1_1,axiom,(({$box(#bank)}@((hasanswer@p)))=>({$box(#cr)}@((hasanswer@p))))).
thf(axiom_1_2,axiom,(({$box(#t)}@((code@fortytwo)))=>({$box(#it)}@((code@fortytwo))))).
thf(axiom_1_3,axiom,(({$box(#cr)}@((code@fortytwo)))=>({$box(#p)}@((code@fortytwo))))).
thf(axiom_1_4,axiom,(({$box(#cr)}@((code@fortytwo)))=>({$box(#t)}@((code@fortytwo))))).
thf(axiom_1_5,axiom,(({$box(#bank)}@((code@fortytwo)))=>({$box(#cr)}@((code@fortytwo))))).
thf(axiom_1_6,axiom,(({$box(#t)}@((code@fortytwo)))=>({$box(#it)}@((code@fortytwo))))).
thf(axiom_1_7,axiom,(![X:$i]:(({$box(#cr)}@((identifiable@X)))=>({$box(#p)}@((identifiable@X)))))).
thf(axiom_1_8,axiom,(![X:$i]:(({$box(#cr)}@((identifiable@X)))=>({$box(#t)}@((identifiable@X)))))).
thf(axiom_1_9,axiom,(![X:$i]:(({$box(#bank)}@((identifiable@X)))=>({$box(#cr)}@((identifiable@X)))))).
thf(axiom_1_10,axiom,(![X:$i]:(({$box(#t)}@((identifiable@X)))=>({$box(#it)}@((identifiable@X)))))).
thf(axiom_1_11,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((number@X@Y)))=>({$box(#p)}@((number@X@Y)))))))).
thf(axiom_1_12,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((number@X@Y)))=>({$box(#t)}@((number@X@Y)))))))).
thf(axiom_1_13,axiom,(![X:$i]:(![Y:$i]:((({$box(#bank)}@((number@X@Y)))=>({$box(#cr)}@((number@X@Y)))))))).
thf(axiom_1_14,axiom,(![X:$i]:(![Y:$i]:(({$box(#t)}@((number@X@Y)))=>({$box(#it)}@((number@X@Y))))))).
thf(axiom_1_15,axiom,(![X:$i]:(({$box(#cr)}@((account@X)))=>({$box(#p)}@((account@X)))))).
thf(axiom_1_16,axiom,(![X:$i]:(({$box(#cr)}@((account@X)))=>({$box(#t)}@((account@X)))))).
thf(axiom_1_17,axiom,(![X:$i]:(({$box(#bank)}@((account@X)))=>({$box(#cr)}@((account@X)))))).
thf(axiom_1_18,axiom,(![X:$i]:(({$box(#t)}@((account@X)))=>({$box(#it)}@((account@X)))))).
thf(axiom_1_19,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((balance@X@Y)))=>({$box(#p)}@((balance@X@Y)))))))).
thf(axiom_1_20,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((balance@X@Y)))=>({$box(#t)}@((balance@X@Y)))))))).
thf(axiom_1_21,axiom,(![X:$i]:(![Y:$i]:((({$box(#bank)}@((balance@X@Y)))=>({$box(#cr)}@((balance@X@Y)))))))).
thf(axiom_1_22,axiom,(![X:$i]:(![Y:$i]:(({$box(#t)}@((balance@X@Y)))=>({$box(#it)}@((balance@X@Y))))))).
thf(axiom_1_23,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((value@X@Y)))=>({$box(#p)}@((value@X@Y)))))))).
thf(axiom_1_24,axiom,(![X:$i]:(![Y:$i]:((({$box(#cr)}@((value@X@Y)))=>({$box(#t)}@((value@X@Y)))))))).
thf(axiom_1_25,axiom,(![X:$i]:(![Y:$i]:((({$box(#bank)}@((value@X@Y)))=>({$box(#cr)}@((value@X@Y)))))))).
thf(axiom_1_26,axiom,(![X:$i]:(![Y:$i]:(({$box(#t)}@((value@X@Y)))=>({$box(#it)}@((value@X@Y))))))).
thf(con,conjecture,(?[U:$i]:({$box(#p)}@((uttered@p@U)=>(?[U1:$i]:({$box(#p)}@((uttered@p@U1)=>({$box(#cr)}@(?[U2:$i]:(({$box(#t)}@((uttered@t@U2)))=>({$box(#cr)}@((hasanswer@p))))))))))))).
