% A Gödelian Ontological Proof with More Plausible Axiological Principles: Corollary 2 Weakened
%
% Formalization for automated proof of Corollary 2 with weakened axioms in
% Johan E. Gustafsson ‘A Gödelian Ontological Proof with More Plausible Axiological Principles’ Ergo, forthcoming.

% Axioms for Quantified Modal Logic KB.
include('Axioms/LCL016^0.ax').
include('Axioms/LCL016^1.ax').
% Axioms for variable domain quantifiers
include('Axioms/LCL017^1.ax').

% Positvity type
thf(pType,type,
    p: ( mu > $i > $o ) > $i > $o ).

% Godlike type
thf(gType,type,
    g: mu > $i > $o ).

% A property equivalent and the contradictory property are alike in positivity
thf(axiomV1star,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mforall_indset
          @ ^ [Psi: mu > $i > $o] :
              ( mimplies
              @ ( mbox
                @ ( mforall_eiw_ind
                  @ ^ [X: mu] :
                      ( mequiv @ ( Phi @ X )
                      @ ( ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) )
                        @ X ) ) ) )
              @ ( mequiv @ ( p @ Phi )
                @ ( p
                  @ ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) ) ) ) ) ) ) ) ).

% Contradictory properties are not positive.
thf(axiomV2,axiom,
    ( mvalid
    @ ( mforall_indset
      @ ^ [Phi: mu > $i > $o] :
          ( mnot
          @ ( p
            @ ^ [X: mu] : ( mand @ ( Phi @ X ) @ ( mnot @ ( Phi @ X ) ) ) ) ) ) ) ).

% Being godlike entails having all positive properties necessarily
thf(axiomV3star,axiom,
    ( mvalid
    @ ( mforall_eiw_ind
      @ ^ [X: mu] :
          ( mimplies @ ( g @ X )
          @ ( mforall_indset
            @ ^ [Phi: mu > $i > $o] : ( mimplies @ ( p @ Phi ) @ ( mbox @ ( Phi @ X ) ) ) ) ) ) ) ).

% Definition of existence
thf(definitionE,definition,
    ( e
    = ( ^ [X: mu] :
          ( mexists_eiw_ind
          @ ^ [Y: mu,W: $i] : ( X = Y ) ) ) ) ).

% The property of being godlike and existing is positive.
thf(axiomV4,axiom,
    ( mvalid
    @ ( p
      @ ^ [X: mu] : ( mand @ ( g @ X ) @ ( e @ X ) ) ) ) ).

% Something godlike exists.
thf(theoremV6,conjecture,
    ( mvalid
    @ ( mexists_eiw_ind
      @ ^ [X: mu] : ( g @ X ) ) ) ).

