% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [ticket := $modal_system_S4 , coffee := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_ticket_type,type,(ticket : index_type)).
thf(rel_coffee_type,type,(coffee : index_type)).

% propositions

% individual constants
thf(passenger_type,type,(passenger : ($i))).

% predicates
thf(takejourney_type,type,(takejourney : ($i>$o))).
thf(usemachine_type,type,(usemachine : ($i>$o))).
thf(visitdonuts_type,type,(visitdonuts : ($i>$o))).
thf(usewindow_type,type,(usewindow : ($i>$o))).
thf(getticket_type,type,(getticket : ($i>$o))).
thf(visitstarbucks_type,type,(visitstarbucks : ($i>$o))).
thf(getcoffee_type,type,(getcoffee : ($i>$o))).
thf(visitstarbuck_type,type,(visitstarbuck : ($i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML020+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Coffee and Ticket Example (adapted)
% Version  : Especial.
% English  : When I can get ticket and coffee I can take a journey
%
% Refs     : [Sto99] M. Stone. Indefinite Information in Modal Logic
%            Programming. TR-56, Rutgers University, 1999.
% Source   :
% Names    :
% Status   : Theorem
% Rating   : 0.00  v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%--------------------------------------------------------------------------
tpi(20,set_logic,).
thf(axiom_1,axiom,(![X:$i]:($box@index_type@ticket@((usemachine@X)|(usewindow@X))))).
thf(axiom_2,axiom,(![X:$i]:($box@index_type@ticket@((usemachine@X)=>(getticket@X))))).
thf(axiom_3,axiom,(![X:$i]:($box@index_type@ticket@((usewindow@X)=>(getticket@X))))).
thf(axiom_4,axiom,(![X:$i]:($box@index_type@coffee@((visitdonuts@X)|(visitstarbucks@X))))).
thf(axiom_5,axiom,(![X:$i]:($box@index_type@coffee@((visitdonuts@X)=>(getcoffee@X))))).
thf(axiom_6,axiom,(![X:$i]:($box@index_type@coffee@((visitstarbuck@X)=>(getcoffee@X))))).
thf(axiom_7,axiom,(![X:$i]:((($box@index_type@ticket@((getticket@X)))&($box@index_type@coffee@((getcoffee@X))))=>((takejourney@X))))).
thf(con,conjecture,((takejourney@passenger))).