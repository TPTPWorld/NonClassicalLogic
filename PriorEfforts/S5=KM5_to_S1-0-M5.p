%------------------------------------------------------------------------------
include('S5=KM5.sys').
include('ModalAxiomDefns.ax',[axiom_s1_5]).
include('OperatorDefns.ax').
%------------------------------------------------------------------------------
fof(system_S1_0_op_possibly,axiom,op_possibly).

fof(system_S1_0_op_necessarily,axiom,op_necessarily).

fof(system_S1_0_op_or,axiom,op_or).

fof(system_S1_0_op_implies,axiom,op_implies_and).

fof(system_S1_0_op_strict_implies,axiom,op_strict_implies).

fof(system_S1_0_op_strict_equiv,axiom,op_strict_equiv).
%------------------------------------------------------------------------------
%----Based on John's proof, in comments
%  1:   (p>q) > ( (q>r) > (p>r) )  : PC tautology.
%----Not proved
fof(f1,lemma,
    ! [P,Q,R] :
      is_a_theorem(implies(implies(P,Q),implies(implies(Q,R),implies(P,R)))) ).

%  2: L((p>q) > ( (q>r) > (p>r) )) : Necessitation
%fof(f2,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(necessarily(implies(implies(P,Q),implies(implies(Q,R),implies(P,R))))) ).

%  3: L((p>q) > ( (q>r) > (p>r) )) > ( L(p>q) > L((q>r) > (p>r)) ) : K, p/(p>q), q/((q>r) > (p>r))
%fof(f3,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(necessarily(implies(implies(implies(P,Q),implies(implies(Q,R),implies(P,R))),implies(implies(implies(implies(Q,R),implies(P,R)),R),implies(implies(P,Q),R))))) ).

%  4:                                  L(p>q) > L((q>r) > (p>r))   : 2, 3, MP>
%fof(f4,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(necessarily(implies(P,Q)),necessarily(implies(implies(Q,R),implies(P,R))))) ).

%  5: L((q>r) > (p>r)) > (L(q>r) > L(p>r)) : K, p/(q>r), q/(p>r)
%fof(f5,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(necessarily(implies(implies(Q,R),implies(P,R))),implies(necessarily(implies(Q,R)),necessarily(implies(P,R))))) ).

%  6: (L(p>q) > L((q>r) > (p>r))) & (L((q>r) > (p>r)) > (L(q>r) > L(p>r))) : 4, 5, Adjunction.
%fof(f6,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(and(implies(necessarily(implies(P,Q)),necessarily(implies(implies(Q,R),implies(P,R)))),implies(necessarily(implies(implies(Q,R),implies(P,R))),implies(necessarily(implies(Q,R)),necessarily(implies(P,R)))))) ).

%  7: ((p>q)&(q>r))>(p>r) : PC tautology.
%----Not proved
fof(f7,lemma,
    ! [P,Q,R] :
      is_a_theorem(implies(and(implies(P,Q),implies(Q,R)),implies(P,R))) ).

% # Sorry, grimmly long.... and therefore multi line.
%  8:   (L(p>q) > L((q>r) > (p>r)))
%              & (L((q>r) > (p>r)) > (L(q>r) > L(p>r)))
%     > (L(p>q) >                    (L(q>r) > L(p>r))))
%                              :  from 1,
%                              :  p/(L(p>q) > L((q>r) > (p>r)))
%                              :  q/L((q>r) > (p>r))
%                              :  r/(L(q>r) > L(p>r)))
%fof(f8,lemma,
%    ! [P,Q,R]  :
%      is_a_theorem(implies(implies(implies(necessarily(implies(P,Q)),necessarily(implies(implies(Q,R),implies(P,R)))),necessarily(implies(implies(Q,R),implies(P,R)))),implies(implies(necessarily(implies(implies(Q,R),implies(P,R))),implies(necessarily(implies(Q,R)),necessarily(implies(P,R)))),implies(implies(necessarily(implies(P,Q)),necessarily(implies(implies(Q,R),implies(P,R)))),implies(necessarily(implies(Q,R)),necessarily(implies(P,R))))))) ).

%  9:    L(p>q) >                    (L(q>r) > L(p>r)) : 6, 8, MP>
%fof(f9,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(necessarily(implies(P,Q)),implies(necessarily(implies(Q,R)),necessarily(implies(P,R))))) ).

%  10:   (p=>q) > ((q=>r) > (p=>r)) : 9, def => (applied three times.)
%fof(f10,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(strict_implies(P,Q),implies(strict_implies(Q,R),strict_implies(P,R)))) ).

%  11: (    p   > (   q   >    r  )) > ( (   p  &   q  )  >    r   ) : PC tautology.
%----Not proved
fof(f11,lemma,
    ! [P,Q,R] :
      is_a_theorem(implies(implies(P,implies(Q,R)),implies(and(P,Q),R))) ).

%  12: ( (p=>q) > ((q=>r) > (p=>r))) > ( ((p=>q)&(q=>r))  > (p=>r) ) : 11, p/(p=>q), q/(q=>r), r/(p=>r)
%fof(f12,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(implies(strict_implies(P,Q),implies(strict_implies(Q,R),strict_implies(P,R))),implies(and(strict_implies(P,Q),strict_implies(Q,R)),strict_implies(P,R)))) ).

%  13:                                   ((p=>q)&(q=>r))  > (p=>r)   : 10, 12, MP>
%fof(f13,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(implies(and(strict_implies(P,Q),strict_implies(Q,R)),strict_implies(P,R))) ).

%  14:                                 L(((p=>q)&(q=>r))  > (p=>r))  : 13, Necessitation.
%fof(f14,lemma,
%    ! [P,Q,R] :
%      is_a_theorem(necessarily(implies(and(strict_implies(P,Q),strict_implies(Q,R)),strict_implies(P,R)))) ).

%  15:                                   ((p=>q)&(q=>r)) => (p=>r)   : 14, def of =>

%----The final theorem
fof(axiom_s1_5,conjecture,axiom_s1_5).
%------------------------------------------------------------------------------
