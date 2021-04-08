%------------------------------------------------------------------------------
include('S5=S1-0M10.sys').
include('OperatorDefns.ax',[op_implies,op_possibly]).
include('ModalAxiomDefns.ax',[axiom_5,axiom_M]).
%------------------------------------------------------------------------------
%----Include operator definitions for the things in conjectures
fof(use_op_implies,axiom,
    ( op_implies )  ).

%----Easy for E
%fof(halleck3,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(and(X,Y),and(Y,X)))  ).

%----Easy for E
%fof(halleck4,conjecture,
%    ! [X] : is_a_theorem(strict_implies(and(X,X),X))   ).

%----Easy for E
%fof(halleck16,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_implies(not(X),Y),strict_implies(not(Y),X)))   ).

%----Easy for E
%fof(halleck20,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_equiv(X,Y),strict_equiv(Y,X)))   ).

%----Done by E in 15s
fof(halleck38,lemma,
    ! [X] : is_a_theorem(strict_equiv(not(not(X)),X))  ).

%----Done by E in 5s
%fof(halleck40,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_implies(X,Y),strict_implies(not(Y),not(X))))   ).

%----Done by E in 30s
%fof(halleck45,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_equiv(not(X),Y),strict_equiv(not(Y),X)))   ).

%----Done by E in 30s
%fof(halleck47,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_equiv(X,not(Y)),strict_equiv(Y,not(X))))   ).

%----Done by E in 25s
%fof(halleck49,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_equiv(X,Y),strict_equiv(not(Y),not(X))))   ).

%----Easy for E
%fof(halleck52,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(implies(not(X),Y),implies(not(Y),X)))   ).

%----Done by E in 15s
%fof(halleck54,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(implies(X,not(Y)),implies(Y,not(X))))   ).

%----Done by E in 15s
%fof(halleck56,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(implies(X,Y),implies(not(Y),not(X))))   ).

%----Done by E in 25s
%fof(halleck57,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_equiv(X,Y),strict_equiv(not(X),not(Y))))   ).

%----Easy for E
%fof(halleck60,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(or(Y,X),or(X,Y)))   ).

%----Easy for E (this is the possibly operator defn)
%fof(halleck63,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(possibly(X),not(necessarily(not(X)))))   ).

%----Done by E in 15s
%fof(halleck66,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(not(possibly(X)),necessarily(not(X))))   ).

%----Done by E in 15s
%fof(halleck69,conjecture,
%    ! [X,Y] : is_a_theorem(strict_equiv(not(necessarily(X)),possibly(not(X))))   ).

%----Done by E in 20s
%fof(halleck73,lemma,
%    ! [X,Y] : is_a_theorem(strict_equiv(strict_implies(X,Y),necessarily(implies(X,Y))))  ).

%----Done by E in 20s
%fof(halleck80,conjecture,
%    ! [X] : is_a_theorem(strict_equiv(X,or(X,X)))  ).

%----I took a leap forward here - need to fill in the missing steps
%------------------------------------------------------------------------------
%----This section has lemmas that are needed for the attack leading up to
%----halleck182. They still need to be proved, one way or another, either
%----from just the system, or with the help of some earlier lines as lemmas.

%----Not proved yet, and needed below
%fof(halleck124,lemma,
%    ! [P,Q,R] : is_a_theorem(strict_equiv(strict_implies(P,implies(Q,R)),strict_implies(and(P,Q),R)))  ).

%----Not proved yet, and needed below
%fof(halleck132,lemma,
%    ! [P,Q,R] : is_a_theorem(strict_equiv(strict_implies(P,implies(Q,R)),strict_implies(Q,implies(P,R))))).

%----Easy for E
%fof(halleck135,conjecture,
%    ! [X] : is_a_theorem(strict_implies(and(X,implies(X,Y)),Y))  ).

%----Not proved yet, and needed below
%fof(halleck142,lemma,
%    ! [P,Q] : is_a_theorem(strict_equiv(implies(P,implies(P,Q)),implies(P,Q)))).

%------------------------------------------------------------------------------
%----Easy for E with halleck124
%fof(halleck172,conjecture,
%    ! [P,Q,R,S] : is_a_theorem(and(strict_implies(and(strict_implies(P,Q),strict_implies(Q,R)),strict_implies(P,R)),strict_implies(strict_implies(P,R),implies(strict_implies(R,S),strict_implies(P,S)))))).

%----Done by E in 25s with halleck172
%fof(halleck175,conjecture,
%    ! [P,Q] : is_a_theorem(strict_implies(and(strict_implies(not(Q),not(P)),strict_implies(not(P),P)),implies(strict_implies(P,Q),strict_implies(not(Q),Q))))).

%----Easy for E with halleck175 and halleck124
%fof(halleck176,lemma,
%    ! [P,Q] : is_a_theorem(strict_implies(strict_implies(not(Q),not(P)),implies(strict_implies(not(P),P),implies(strict_implies(P,Q),strict_implies(not(Q),Q)))))).

%----Easy for E with halleck176 and halleck132
%fof(halleck179,lemma,
%    ! [P,Q] : is_a_theorem(strict_implies(necessarily(P),implies(strict_implies(P,Q),implies(strict_implies(P,Q),necessarily(Q)))))).

%----Easy for E with halleck179 and halleck142
%----Not solved in 60s with halleck176 halleck142 halleck132
%fof(halleck180,lemma,
%    ! [P,Q] : is_a_theorem(strict_implies(necessarily(P),implies(strict_implies(P,Q),necessarily(Q))))).

%----Easy for E with halleck180 and halleck132
%fof(halleck181,lemma,
%    ! [P,Q] : is_a_theorem(strict_implies(strict_implies(P,Q),implies(necessarily(P),necessarily(Q))))).

%----Easy for E with halleck181 and halleck73
%----Done by E in 20s with halleck181
%fof(halleck182,conjecture,
%    ! [X,Y] : is_a_theorem(strict_implies(necessarily(implies(X,Y)),implies(necessarily(X),necessarily(Y))) )).

%------------------------------------------------------------------------------
%----Here are the components of KM5

%----Easy for E
%fof(modus_ponens,conjecture,
%    ( ! [X,Y] : 
%        ( ( is_a_theorem(X)
%          & is_a_theorem(implies(X,Y)) )
%       => is_a_theorem(Y) ) )).

%----Done by E in 20s
%fof(modus_tollens,conjecture,
%    ( ! [X,Y] : is_a_theorem(implies(implies(not(Y),not(X)),implies(X,Y))) )).

%----Done by E in 20s
%fof(implies_1,conjecture,
%    ( ! [X,Y] : is_a_theorem(implies(X,implies(Y,X))) )).

%----NOT done by E in 600s
%fof(implies_2,conjecture,
%    ( ! [X,Y,Z] : is_a_theorem(implies(implies(X,implies(Y,Z)),implies(implies(X,Y),implies(X,Z)))) )).

%----NOT done by E in 600s
%fof(necessitation,conjecture,
%    ( ! [X] : 
%        ( is_a_theorem(X)
%       => is_a_theorem(necessarily(X)) ) )).

%----NOT done by E in 600s This is halleck199
%fof(distribution,conjecture,
%    ! [X,Y] : is_a_theorem(implies(necessarily(implies(X,Y)),implies(necessarily(X),necessarily(Y))) )).

%----NOT done by E in 600s
%fof(prove_axiom_M,conjecture,
%    axiom_M ).

%----Easy for E with halleck38
fof(prove_axiom_5,conjecture,
    axiom_5 ).

%------------------------------------------------------------------------------
