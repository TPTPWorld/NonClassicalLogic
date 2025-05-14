% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [s := $modal_system_S4 , a := $modal_system_S4 , cp := $modal_system_S4 , teller := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_s_type,type,(s : index_type)).
thf(rel_a_type,type,(a : index_type)).
thf(rel_cp_type,type,(cp : index_type)).
thf(rel_teller_type,type,(teller : index_type)).

% propositions
thf(answerable_type,type,(answerable : ($o))).

% individual constants
thf(fortytwo_type,type,(fortytwo : ($i))).
thf(s_type,type,(s : ($i))).

% predicates
thf(number_type,type,(number : ($i>$i>$o))).
thf(code_type,type,(code : ($i>$o))).
thf(belong_type,type,(belong : ($i>$i>$o))).
thf(balance_type,type,(balance : ($i>$i>$o))).
thf(belongs_type,type,(belongs : ($i>$i>$o))).
thf(identifiable_type,type,(identifiable : ($i>$o))).
thf(value_type,type,(value : ($i>$i>$o))).
thf(done_type,type,(done : ($i>$o))).
thf(account_type,type,(account : ($i>$o))).

% functions
thf(u0_type,type,(u0 : ($i>$i))).
thf(u1_type,type,(u1 : ($i>$i>$i))).

% converted problem
%----------------------------------------------------------------------------
% File     : MUL017+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Bank Example
% Version  : Especial.
% English  : Speaker S wishes to find out from a bank teller A the balance of
%            S's account, number 42.
% Refs     : [Sto97] M. Stone. Applying Theories of Communicative Action in
%            Generation Using Logic Programming. AAAI Fall Symposium On
%            Communicative Action in Humans and Machines, 1997.
% Source   :
% Names    :
% Status   : Unsolved
% Rating   : 1.00  v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%--------------------------------------------------------------------------
tpi(17,set_logic,).
thf(axiom_1,axiom,($box@index_type@bank@(![C:$i]:((code@C)=>(?[A:$i]:($box@index_type@bank@((account@A)&(number@A@C)&(identifiable@A)))))))).
thf(axiom_2,axiom,($box@index_type@bank@((code@fortytwo)))).
thf(axiom_3,axiom,($box@index_type@bank@(![A:$i]:(?[B:$i]:($box@index_type@bank@((account@A)=>(balance@A@B))))))).
thf(axiom_4,axiom,($box@index_type@bank@(![A:$i]:(![B:$i]:(((balance@A@B)&(identifiable@A))=>(identifiable@B)))))).
thf(axiom_5,axiom,($box@index_type@bank@(![A:$i]:(![B:$i]:((balance@A@B)=>(?[V:$i]:($box@index_type@a@((value@B@V))))))))).
thf(axiom_phi0_aa,axiom,($box@index_type@a@(![A:$i]:((($box@index_type@a@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(done@(u0@A)))=>(($box@index_type@a@((belongs@A@s)))&($box@index_type@s@((belong@A@s)))))))).
thf(axiom_phi0_as,axiom,($box@index_type@a@(![A:$i]:((($box@index_type@s@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(done@(u0@A)))=>(($box@index_type@a@((belongs@A@s)))&($box@index_type@s@((belong@A@s)))))))).
thf(axiom_phi0_sa,axiom,($box@index_type@s@(![A:$i]:((($box@index_type@a@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(done@(u0@A)))=>(($box@index_type@a@((belongs@A@s)))&($box@index_type@s@((belong@A@s)))))))).
thf(axiom_phi0_ss,axiom,($box@index_type@s@(![A:$i]:((($box@index_type@a@((account@A)&(number@A@fortytwo)&(identifiable@A)))&(done@(u0@A)))=>(($box@index_type@a@((belongs@A@s)))&($box@index_type@s@((belong@A@s)))))))).
thf(axiom_phi1_aa,axiom,($box@index_type@a@(![A:$i]:(![B:$i]:(($box@index_type@a@(((account@A)&(belongs@A@s)&(balance@A@B)&(identifiable@B)&(?[V:$i]:($box@index_type@a@((value@B@V)))))&(done@(u1@A@B))))=>(($box@index_type@a@(answerable))&($box@index_type@s@(answerable)))))))).
thf(axiom_phi1_as,axiom,($box@index_type@a@(![A:$i]:(![B:$i]:(($box@index_type@s@(((account@A)&(belongs@A@s)&(balance@A@B)&(identifiable@B)&(?[V:$i]:($box@index_type@a@((value@B@V)))))&(done@(u1@A@B))))=>(($box@index_type@a@(answerable))&($box@index_type@s@(answerable)))))))).
thf(axiom_phi1_sa,axiom,($box@index_type@s@(![A:$i]:(![B:$i]:(($box@index_type@a@(((account@A)&(belongs@A@s)&(balance@A@B)&(identifiable@B)&(?[V:$i]:($box@index_type@a@((value@B@V)))))&(done@(u1@A@B))))=>(($box@index_type@a@(answerable))&($box@index_type@s@(answerable)))))))).
thf(axiom_phi1_ss,axiom,($box@index_type@s@(![A:$i]:(![B:$i]:(($box@index_type@s@(((account@A)&(belongs@A@s)&(balance@A@B)&(identifiable@B)&(?[V:$i]:($box@index_type@a@((value@B@V)))))&(done@(u1@A@B))))=>(($box@index_type@a@(answerable))&($box@index_type@s@(answerable)))))))).
thf(con,conjecture,(?[U0:$i]:(($box@index_type@a@((done@U0)=>(($box@index_type@a@(?[U1:$i]:(($box@index_type@a@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))&($box@index_type@s@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable)))))))&($box@index_type@s@(?[U1:$i]:(($box@index_type@a@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))&($box@index_type@s@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))))))))&($box@index_type@s@((done@U0)=>(($box@index_type@a@(?[U1:$i]:(($box@index_type@a@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))&($box@index_type@s@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable)))))))&($box@index_type@s@(?[U1:$i]:(($box@index_type@a@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))&($box@index_type@s@((done@U1)=>(($box@index_type@a@answerable)&($box@index_type@s@answerable))))))))))))).