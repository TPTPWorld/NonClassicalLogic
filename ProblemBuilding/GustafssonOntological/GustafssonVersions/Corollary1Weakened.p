% A Gödelian Ontological Proof with More Plausible Axiological Principles: Corollary 1 Weakened
%
% Formalization for automated proof of Corollary 1 with weakened axioms in
% Johan E. Gustafsson ‘A Gödelian Ontological Proof with More Plausible Axiological Principles’ Ergo, forthcoming.

% Axioms for Quantified Modal Logic KB.
include('Axioms/LCL016^0.ax').
include('Axioms/LCL016^1.ax').

% Positvity type
thf(p_type,type,
    p: ( mu > $i > $o ) > $i > $o ).

% Godlike type
thf(g_tp,type,
    g: mu > $i > $o ).

% A property equivalent and the contradictory property are alike in positivity
thf(axiomC1star,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mforall_indset
          @ ^ [Psi: mu > $i > $o] :
              ( mimplies
              @ ( mbox
                @ ( mforall_ind
                  @ ^ [X: mu] :
                      ( mequiv @ ( Phi @ X )
                      @ ( ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) )
                        @ X ) ) ) )
              @ ( mequiv @ ( p @ Phi )
                @ ( p
                  @ ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) ) ) ) ) ) ) ) ).

% Contradictory properties are not positive.
thf(axiomC2,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mnot
          @ ( p
            @ ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) ) ) ) ) ) ).

% Being godlike entails having all positive properties necessarily
thf(axiomC3star,axiom,
    ( mvalid
    @ ( mforall_ind
      @ ^ [X: mu] :
          ( mimplies @ ( g @ X )
          @ ( mforall_indset
            @ ^ [Phi: mu > $i > $o] : ( mimplies @ ( p @ Phi ) @ ( mbox @ ( Phi @ X ) ) ) ) ) ) ) ).

% The property of being godlike is positive.
thf(axiomC4,axiom,
    mvalid @ ( p @ g ) ).

% Something godlike exists.
thf(theoremC6,conjecture,
    ( mvalid
    @ ( mexists_ind
      @ ^ [X: mu] : ( g @ X ) ) ) ).

