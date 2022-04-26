% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [b_s := $modal_system_S5 , b_u := $modal_system_S5]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_b_s_type,type,(b_s : index_type)).
thf(rel_b_u_type,type,(b_u : index_type)).

% propositions

% individual constants
thf(seventy_type,type,(seventy : ($i))).
thf(ninetyfive_type,type,(ninetyfive : ($i))).
thf(second_type,type,(second : ($i))).
thf(paris_type,type,(paris : ($i))).
thf(first_type,type,(first : ($i))).

% predicates
thf(price_type,type,(price : ($i>$o))).
thf(dest_type,type,(dest : ($i>$o))).
thf(class_type,type,(class : ($i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML016+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Ticket Example
% Version  : Especial.
% English  :
% Refs     : [FHL+98] L. Farinas del Cerro, A. Herzig, D. Longin, O. Rifi.
%            Belief Reconstruction in Cooperative Dialogues. AIMSA 1998,
%            LNCS 1480, p. 254-266. 1998.
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
tpi(16,set_logic,).
thf(axiom_1,axiom,($box@index_type@b_s@(((dest@paris)&(class@first))=>(price@ninetyfive)))).
thf(axiom_2,axiom,($box@index_type@b_s@(((dest@paris)&(class@second))=>(price@seventy)))).
thf(axiom_3_s,axiom,($box@index_type@b_s@(~(((class@first)&(class@second)))))).
thf(axiom_3_u,axiom,($box@index_type@b_u@(~(((class@first)&(class@second)))))).
thf(axiom_4_s,axiom,($box@index_type@b_s@(~(((price@seventy)&(price@ninetyfive)))))).
thf(axiom_4_u,axiom,($box@index_type@b_u@(~(((price@seventy)&(price@ninetyfive)))))).
thf(axiom_5,axiom,($box@index_type@b_s@((dest@paris)&(class@second)))).
thf(con,conjecture,($box@index_type@b_s@((price@seventy)))).