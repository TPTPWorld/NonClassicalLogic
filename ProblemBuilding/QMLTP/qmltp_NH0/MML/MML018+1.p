% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S4]).

% modalities

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
thf(axiom_1,axiom,({$box(#bank)}@(![X:$i]:({$box(#cr)}@((account@p@X)=>(?[B:$i]:({$box(#t)}@((balance@p@B))))))))).
thf(axiom_1_0,axiom,({$box(#cr)}@((account@p@fortytwo)))).
thf(con,conjecture,(?[B:$i]:({$box(#t)}@((balance@p@B))))).
