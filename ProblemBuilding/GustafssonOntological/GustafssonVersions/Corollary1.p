% A Gödelian Ontological Proof with More Plausible Axiological Principles: Corollary 1
%
% Formalization for automated proof of Corollary 1 in
% Johan E. Gustafsson ‘A Gödelian Ontological Proof with More Plausible Axiological Principles’ Ergo, forthcoming.

% Axioms for Quantified Modal Logic KB.
include('Axioms/LCL016^0.ax').
include('Axioms/LCL016^1.ax').

% Positvity type
thf(pType,type,
    p: ( mu > $i > $o ) > $i > $o ).

% Godlike type
thf(gType,type,
    g: mu > $i > $o ).

% Equivalent properties are alike in positivity
thf(axiomC1,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mforall_indset
          @ ^ [Psi: mu > $i > $o] :
              ( mimplies
              @ ( mbox
                @ ( mforall_ind
                  @ ^ [X: mu] : ( mequiv @ ( Phi @ X ) @ ( Psi @ X ) ) ) )
              @ ( mequiv @ ( p @ Phi ) @ ( p @ Psi ) ) ) ) ) ) ).

% Contradictory properties are not positive.
thf(axiomC2,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mnot
          @ ( p
            @ ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) ) ) ) ) ) ).

% Definition of being godlike as having all positive properties necessarily
thf(definitionC3,definition,
    ( g
    = ( ^ [X: mu] :
          ( mforall_indset
          @ ^ [Phi: mu > $i > $o] : ( mimplies @ ( p @ Phi ) @ ( mbox @ ( Phi @ X ) ) ) ) ) ) ).

% The property of being godlike is positive.
thf(axiomC4,axiom,
    mvalid @ ( p @ g ) ).

% Something godlike exists.
thf(theoremC6,conjecture,
    ( mvalid
    @ ( mexists_ind
      @ ^ [X: mu] : ( g @ X ) ) ) ).

