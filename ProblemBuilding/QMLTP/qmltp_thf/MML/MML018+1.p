% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [p := $modal_system_S4 , t := $modal_system_S4 , c := $modal_system_S4 , cr := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_p_type,type,(p : index_type)).
thf(rel_t_type,type,(t : index_type)).
thf(rel_c_type,type,(c : index_type)).
thf(rel_cr_type,type,(cr : index_type)).

% propositions

% individual constants
thf(p_type,type,(p : ($i))).
thf(fortytwo_type,type,(fortytwo : ($i))).

% predicates
thf(balance_type,type,(balance : ($i>$i>$o))).
thf(account_type,type,(account : ($i>$i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML018+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Bank Example (variant 2)
% Version  : Especial.
% English  : Patron p wishes to find out from a bank teller t the balance of
%            p's account, number 42.
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
%------------------------------------------------------------------------------
tpi(18,set_logic,).
thf(axiom_1,axiom,($box@index_type@bank@(![X:$i]:($box@index_type@cr@((account@p@X)=>(?[B:$i]:($box@index_type@t@((balance@p@B))))))))).
thf(axiom_1_0,axiom,($box@index_type@cr@((account@p@fortytwo)))).
thf(con,conjecture,(?[B:$i]:($box@index_type@t@((balance@p@B))))).