%------------------------------------------------------------------------------
include('PCPrincipiaReduced.sys').
include('OperatorDefns.ax').
%------------------------------------------------------------------------------
%fof(prove_b3,conjecture,
%    ! [P,Q,R] : is_a_theorem(implies(or(Q,R),or(Q,or(P,R)))) ).

%fof(prove_b5,lemma,
%    ! [P,Q,R] : is_a_theorem(implies(or(P,or(Q,R)),or(P,or(Q,or(P,R))))) ).

%fof(prove_b6,lemma,
%    ! [P,Q,R] : is_a_theorem(implies(or(P,or(Q,or(P,R))),or(or(Q,or(P,R)),P))) ).

%----Proved from b5 and b6 by Vampire in 76s
%fof(prove_b7,lemma,
%    ! [P,Q,R] : is_a_theorem(implies(or(P,or(Q,R)),or(or(Q,or(P,R)),P))) ).

%fof(prove_b10,conjecture,
%    ! [P,R] : is_a_theorem(implies(P,or(P,R))) ).

%fof(prove_b12,conjecture,
%    ! [P,Q,R] : is_a_theorem(implies(P,or(Q,or(P,R)))) ).

%fof(prove_b14,lemma,
%    ! [P,Q,R] : is_a_theorem(implies(or(or(Q,or(P,R)),P),or(or(Q,or(P,R)),or(Q,or(P,R))))) ).

%fof(prove_b15,lemma,
%    !  [P,Q,R] : is_a_theorem(implies(or(or(Q,or(P,R)),or(Q,or(P,R))),or(Q,or(P,R)))) ).

%----Proved from b14 and b15 by Vampire in 84s
%fof(prove_b16,lemma,
%    ! [P,Q,R] : is_a_theorem(implies(or(or(Q,or(P,R)),P),or(Q,or(P,R)))) ).

fof(prove_4,conjecture, 
    ! [P,Q,R] : is_a_theorem(implies(or(P,or(Q,R)),or(Q,or(P,R))))).

%------------------------------------------------------------------------------

