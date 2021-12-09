% Scott's version of Goedel's Ontological Proof of the Existence of God

% semantics specification
% TODO: are these semantics correct?
thf(simple_s5,logic,(
    $alethic_modal ==
        [ $constants == $rigid,
          $quantification == $constant,
          $consequence == $local,
          $modalities == $modal_system_S5 ] )).

% positive constant
thf( positive_type , type , ( positive: ( $i > $o ) > $o ) ).

% godlike constant
thf( godlike_type , type , ( godlike: $i > $o ) ).

% essence constant
thf( essence_type , type , ( essence: ( $i > $o ) > $i > $o ) ).

% necessary existence constant
thf( ne_type , type , ( ne: $i > $o ) ).

% A1: Either the property or its negation are positive, but not both.
% ∀φ.P (λx.¬(φ x)) ↔ ¬(P φ)
thf( a1 , axiom , ( ! [Phi:$i>$o] : ( ( positive @ ( ^ [X:$i] : ( ~ ( Phi @ X ) ) ) ) <=> ( ~ ( positive @ Phi ) ) ) ) ).

% A2: A property necessarily implied by a positive property is positive.
% ∀φ.∀ψ.(P φ ∧ □∀x.φ x → ψ x) → P ψ
thf( a2 , axiom , ( ! [Phi:$i>$o,Psi:$i>$o] :  ( ( ( positive @ Phi ) & ( {$box} @ ( ! [X:$i] : ( ( ( Phi @ X ) => ( Psi @ X ) ) ) ) ) ) => ( positive @ Psi ) ) ) ).

% T1: Positive properties are possibly exemplified.
% ∀φ.P φ → ⋄∃x.φ x
thf( t1 , conjecture , ( ! [Phi:$i>$o] : ( ( positive @ Phi ) => ( {$dia} @ ( ? [X:$i] : ( Phi @ X ) ) ) ) ) ).

% D1: A God-like being possesses all positive properties.
% G x ≡ ∀φ.P φ → φ x
thf( d1 , definition , ( godlike = ( ^ [X:$i] : ( ! [Phi:$i>$o] : ( ( positive @ Phi ) => ( Phi @ X ) ) ) ) ) ).

% A3: The property of being God-like is positive.
% P (G)
thf( a3 , axiom , ( positive @ godlike ) ).

% C: Possibly, God exists.
% ⋄ ∃x.G x
thf ( c , conjecture , ( {$dia} @ ( ? [X:$i] : ( godlike @ X ) ) ) ).

% A4: Positive properties are necessary positive properties.
% ∀φ.P φ → □ P φ
thf( a4 , axiom , ( ! [Phi:$i>$o] : ( ( positive @ Phi ) => ( {$box} @ ( positive @ Phi ) ) ) ) ).

% D2: An essence of an individual is a property possessed by it and necessarily implying any of its properties.
% ess φ x ≡ φ x ∧ ∀ψ.(ψ x → □ ∀y.(φ y → ψ y))
thf( d2 , definition , ( essence = ( ^ [Phi:$i>$o,X:$i] : ( ( Phi @ X ) & ( ! [Psi:$i>$o] : ( ( Psi @ X ) => ( {$box} @ ( ! [Y:$i] : ( ( Phi @ Y ) => ( Psi @ Y ) ) ) ) ) ) ) ) ) ).

% T2: Being God-like is an essence of any God-like being.
% ∀x.G x → ess G x
thf( t2 , conjecture , ( ![X:$i] : ( ( godlike @ X ) => ( essence @ godlike @ X ) ) ) ).

% D3: Necessary existence of an individual is the necessary exemplification of all its essences
% NE x ≡ ∀φ.ess φ x → □ ∃y.φ y
thf( d3 , definition , ( ne = ( ^ [X:$i] : ( ! [Phi:$i>$o] : ( ( essence @ Phi @ X ) => ( {$box} @ ( ? [Y:$i] : ( Phi @ Y ) ) ) ) ) ) ) ).

% A5: Necessary existence is positive.
% P NE
thf( a5 , axiom , ( positive @ ne ) ).

% T3: Necessarily God exists.
% □ ∃x.G x
thf( t3 , conjecture , ( {$box} @ ( ? [X:$i] : ( godlike @ X ) ) ) ).
