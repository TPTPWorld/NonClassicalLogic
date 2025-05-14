%------------------------------------------------------------------------------
% File     : PHI005^6 : TPTP v9.1.0. Released v9.1.0.
% Domain   : Philosophy
% Problem  : Something godlike exists, weakened
% Version  : [Gus24] axioms.
% English  :

% Refs     : [Gus24] Gustafsson (2024), A Goedelian Ontological Proof with
% Source   : [Gus24]
% Names    : Corollary2Weakened [Gus24]

% Status   : Theorem
% Rating   : ? v9.1.0
% Syntax   : Number of formulae    :    7 (   0 unt;   3 typ;   0 def)
% SPC      : NH0_THM_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
thf(semantics,logic,
    ( $modal 
   == [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_KB ] ) ).
      
thf(property_type,type,
    property: $tType ).

%----Positvity type
thf(positive_decl,type,
    positive: (property > $o) > $o ).

%----Godlike type
thf(godlike_decl,type,
    godlike: property > $o ).

%----Concretely exists type
thf(exists_decl,type,
    exists: property > $o ).

%----A property equivalent and the contradictory property are alike in 
%----positivity
thf(axiomV1star,axiom,
    ! [Phi: property > $o] :
      ( ( {$necessary} 
        @ ( ! [X: property] :
              ( ( exists @ X )
             => ( ( Phi @ X )
              <=> ( ^ [Y: property] :
                      ( ( Phi @ Y )
                      & ~ ( Phi @ Y ) )
                  @ X ) ) ) ) )
     => ( ( positive @ Phi )
      <=> ( positive 
          @ ^ [Y: property] :
              ( ( Phi @ Y )
              & ~ ( Phi @ Y ) ) ) ) ) ).

%----Contradictory properties are not positive.
thf(axiomV2,axiom,
    ! [Phi: property > $o] :
      ~ ( positive
        @ ^ [X: property] :
            ( ( ( Phi @ X )
              & ~ ( Phi @ X ) ) ) ) ).

%----Being godlike entails having all positive properties necessarily
thf(axiomV3star,axiom,
    ! [X: property] :
      ( ( exists @ X )
     => ( ( godlike @ X )
       => ! [Phi: property > $o] :
            ( ( positive @ Phi )
           => ( {$necessary}
              @ ( Phi @ X ) ) ) ) ) ).

%----Definition of exists
thf(definitionE,definition,
    ( exists
    = ( ^ [X: property] :
        ? [Y: property] :
          ( ( exists @ Y )
          & ( X = Y ) ) ) ) ).

%----The property of being godlike is positive.
thf(axiomV4,axiom,
    ( positive 
    @ ^ [X: property] :
        ( ( godlike @ X)
        & ( exists @ X ) ) ) ).

%----Something godlike exists
thf(theoremV6,conjecture,
    ? [X: property] :
      ( ( exists @ X )
      & ( godlike @ X ) ) ).

%------------------------------------------------------------------------------
