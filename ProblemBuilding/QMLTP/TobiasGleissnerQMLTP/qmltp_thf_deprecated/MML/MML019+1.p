% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [p := $modal_system_S4 , ip := $modal_system_S4 , t := $modal_system_S4 , it := $modal_system_S4 , bank := $modal_system_S4 , cr := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_p_type,type,(p : index_type)).
thf(rel_ip_type,type,(ip : index_type)).
thf(rel_t_type,type,(t : index_type)).
thf(rel_it_type,type,(it : index_type)).
thf(rel_bank_type,type,(bank : index_type)).
thf(rel_cr_type,type,(cr : index_type)).

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
tpi(18,set_logic,).
thf(axiom_4,axiom,($box@index_type@cr@(![A:$i]:(?[U:$i]:($box@index_type@cr@((($box@index_type@ip@((belongs@A@p)))&($box@index_type@cr@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(uttered@p@U))=>($box@index_type@cr@((belongs@A@p))))))))).
thf(axiom_5,axiom,($box@index_type@cr@(![A:$i]:(![B:$i]:(?[U:$i]:(($box@index_type@cr@(($box@index_type@ip@(?[V:$i]:($box@index_type@p@((value@B@V)))))=>(hasanswer@p)))&(((($box@index_type@cr@((account@A)&(belongs@A@p)&(balance@A@B)&(identifiable@B))))&(uttered@p@U))=>(($box@index_type@cr@(?[V:$i]:($box@index_type@p@((value@B@V)))))=>(hasanswer@p))))))))).
thf(axiom_6,axiom,($box@index_type@cr@(![A:$i]:(![B:$i]:(![V:$i]:(?[U:$i]:(($box@index_type@cr@(($box@index_type@it@((value@B@V)))&($box@index_type@cr@((account@A)&(belongs@A@p)&(balance@A@B)&(identifiable@B)))&(uttered@t@U)))=>($box@index_type@cr@((value@B@V)))))))))).
thf(axiom_7,axiom,($box@index_type@bank@((code@fortytwo)))).
thf(axiom_8,axiom,($box@index_type@bank@(![C:$i]:((code@C)=>(?[A:$i]:($box@index_type@bank@((account@A)&(number@A@C)&(identifiable@A)))))))).
thf(axiom_9,axiom,($box@index_type@bank@(![A:$i]:(?[B:$i]:($box@index_type@bank@((account@A)=>(balance@A@B))))))).
thf(axiom_10,axiom,($box@index_type@bank@(![A:$i]:(![B:$i]:(((balance@A@B)&(identifiable@A))=>(identifiable@B)))))).
thf(axiom_11,axiom,($box@index_type@bank@(![A:$i]:(![B:$i]:((balance@A@B)=>(?[V:$i]:($box@index_type@t@((value@B@V))))))))).
thf(axiom_12,axiom,($box@index_type@ip@(![A:$i]:(((account@A)&(number@A@fortytwo))=>(belongs@A@p))))).
thf(axiom_13,axiom,($box@index_type@ip@(![A:$i]:(![B:$i]:((account@A)&(number@A@fortytwo)&(balance@A@B)&(?[C:$i]:($box@index_type@p@((value@B@C)))=>((hasanswer@p)))))))).
thf(axiom_1,axiom,(($box@index_type@cr@((hasanswer@p)))=>($box@index_type@p@((hasanswer@p))))).
thf(axiom_1_0,axiom,(($box@index_type@cr@((hasanswer@p)))=>($box@index_type@t@((hasanswer@p))))).
thf(axiom_1_1,axiom,(($box@index_type@bank@((hasanswer@p)))=>($box@index_type@cr@((hasanswer@p))))).
thf(axiom_1_2,axiom,(($box@index_type@t@((code@fortytwo)))=>($box@index_type@it@((code@fortytwo))))).
thf(axiom_1_3,axiom,(($box@index_type@cr@((code@fortytwo)))=>($box@index_type@p@((code@fortytwo))))).
thf(axiom_1_4,axiom,(($box@index_type@cr@((code@fortytwo)))=>($box@index_type@t@((code@fortytwo))))).
thf(axiom_1_5,axiom,(($box@index_type@bank@((code@fortytwo)))=>($box@index_type@cr@((code@fortytwo))))).
thf(axiom_1_6,axiom,(($box@index_type@t@((code@fortytwo)))=>($box@index_type@it@((code@fortytwo))))).
thf(axiom_1_7,axiom,(![X:$i]:(($box@index_type@cr@((identifiable@X)))=>($box@index_type@p@((identifiable@X)))))).
thf(axiom_1_8,axiom,(![X:$i]:(($box@index_type@cr@((identifiable@X)))=>($box@index_type@t@((identifiable@X)))))).
thf(axiom_1_9,axiom,(![X:$i]:(($box@index_type@bank@((identifiable@X)))=>($box@index_type@cr@((identifiable@X)))))).
thf(axiom_1_10,axiom,(![X:$i]:(($box@index_type@t@((identifiable@X)))=>($box@index_type@it@((identifiable@X)))))).
thf(axiom_1_11,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((number@X@Y)))=>($box@index_type@p@((number@X@Y)))))))).
thf(axiom_1_12,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((number@X@Y)))=>($box@index_type@t@((number@X@Y)))))))).
thf(axiom_1_13,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@bank@((number@X@Y)))=>($box@index_type@cr@((number@X@Y)))))))).
thf(axiom_1_14,axiom,(![X:$i]:(![Y:$i]:(($box@index_type@t@((number@X@Y)))=>($box@index_type@it@((number@X@Y))))))).
thf(axiom_1_15,axiom,(![X:$i]:(($box@index_type@cr@((account@X)))=>($box@index_type@p@((account@X)))))).
thf(axiom_1_16,axiom,(![X:$i]:(($box@index_type@cr@((account@X)))=>($box@index_type@t@((account@X)))))).
thf(axiom_1_17,axiom,(![X:$i]:(($box@index_type@bank@((account@X)))=>($box@index_type@cr@((account@X)))))).
thf(axiom_1_18,axiom,(![X:$i]:(($box@index_type@t@((account@X)))=>($box@index_type@it@((account@X)))))).
thf(axiom_1_19,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((balance@X@Y)))=>($box@index_type@p@((balance@X@Y)))))))).
thf(axiom_1_20,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((balance@X@Y)))=>($box@index_type@t@((balance@X@Y)))))))).
thf(axiom_1_21,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@bank@((balance@X@Y)))=>($box@index_type@cr@((balance@X@Y)))))))).
thf(axiom_1_22,axiom,(![X:$i]:(![Y:$i]:(($box@index_type@t@((balance@X@Y)))=>($box@index_type@it@((balance@X@Y))))))).
thf(axiom_1_23,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((value@X@Y)))=>($box@index_type@p@((value@X@Y)))))))).
thf(axiom_1_24,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@cr@((value@X@Y)))=>($box@index_type@t@((value@X@Y)))))))).
thf(axiom_1_25,axiom,(![X:$i]:(![Y:$i]:((($box@index_type@bank@((value@X@Y)))=>($box@index_type@cr@((value@X@Y)))))))).
thf(axiom_1_26,axiom,(![X:$i]:(![Y:$i]:(($box@index_type@t@((value@X@Y)))=>($box@index_type@it@((value@X@Y))))))).
thf(con,conjecture,(?[U:$i]:($box@index_type@p@((uttered@p@U)=>(?[U1:$i]:($box@index_type@p@((uttered@p@U1)=>($box@index_type@cr@(?[U2:$i]:(($box@index_type@t@((uttered@t@U2)))=>($box@index_type@cr@((hasanswer@p))))))))))))).