%------------------------------------------------------------------------------
% File     : PHI005^6 : TPTP v9.1.0. Released v9.1.0.
% Domain   : Philosophy
% Problem  : Necessarily something godlike exists
% Version  : [Gus24] axioms.
% English  :

% Refs     : [Gus24] Gustafsson (2024), A Goedelian Ontological Proof with
% Source   : [Gus24]
% Names    : Theorem2 [Gus24]

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

%----Equivalent properties are alike in positivity
thf(axiomV1,axiom,
    ! [Phi: property > $o] :
    ! [Psi: property > $o] :
      ( ( {$necessary} 
        @ ( ! [X: property] :
              ( ( exists @ X )
             => ( ( Phi @ X )
              <=> ( Psi @ X ) ) ) ) )
     => ( ( positive @ Phi )
      <=> ( positive @ Psi ) ) ) ).

%----Contradictory properties are not positive.
thf(axiomV2,axiom,
    ! [Phi: property > $o] :
      ~ ( positive
        @ ^ [X: property] :
            ( ( ( Phi @ X )
              & ~ ( Phi @ X ) ) ) ) ).

%----Definition of being godlike as having all positive properties necessarily
thf(definitionV3,definition,
    ( godlike
    = ( ^ [X: property] :
        ! [Phi: property > $o] :
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

%----Necessarily something godlike exists.
thf(theoremV5,conjecture,
    ( {$necessary}
    @ ? [X: property] :
        ( ( exists @ X )
        & ( godlike @ X ) ) ) ).

%------------------------------------------------------------------------------
