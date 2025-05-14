%------------------------------------------------------------------------------
% File     : PHI005^6 : TPTP v9.1.0. Released v9.1.0.
% Domain   : Philosophy
% Problem  : Necessarily, God exists
% Version  : [Gus24] axioms.
% English  :

% Refs     : [Gus24] Gustafsson (2024), A Goedelian Ontological Proof with
% Source   : [Gus24]
% Names    : Theorem1 [Gus24]

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

%----Equivalent properties are alike in positivity
thf(axiomC1,axiom,
    ! [Phi: property > $o] :
    ! [Psi: property > $o] :
      ( ( {$necessary} 
        @ ( ! [X: property] :
              ( ( Phi @ X )
            <=> ( Psi @ X ) ) ) )
     => ( ( positive @ Phi )
      <=> ( positive @ Psi ) ) ) ).

%----Contradictory properties are not positive.
thf(axiomC2,axiom,
    ! [Phi: property > $o] :
      ~ ( positive
        @ ^ [X: property] :
            ( ( ( Phi @ X )
              & ~ ( Phi @ X ) ) ) ) ).

%----Definition of being godlike as having all positive properties necessarily
thf(definitionC3,definition,
    ( godlike
    = ( ^ [X: property ] :
        ! [Phi: property > $o] :
          ( ( positive @ Phi )
         => ( {$necessary}
            @ ( Phi @ X ) ) ) ) ) ).

%----The property of being godlike is positive.
thf(axiomC4,axiom,
    ( positive @ godlike ) ).

%----Necessarily something godlike exists.
thf(theoremC5,conjecture,
    ( {$necessary}
    @ ? [X: property] :
        ( godlike @ X ) ) ).

%------------------------------------------------------------------------------
