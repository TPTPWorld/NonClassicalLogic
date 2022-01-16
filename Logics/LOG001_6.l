%------------------------------------------------------------------------------
% File     : LOG001_6 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Axioms for non-normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
tff(modal_axiom_C,definition,
    ( $modal_axiom_C
   == ( ( [.](A)
        & [.](B) )
     => [.]
          ( A
          & B ) ) ) ).

tff(modal_axiom_Cstar,definition,
    ( $modal_axiom_Cstar
   == ( [.]
          ( A
          & B ) 
     => ( [.](A)
        & [.](B) ) ) ) ).

tff(modal_axiom_nnM,definition,
    ( $modal_axiom_nnM
   == ( [.]
          ( A
          & B )
     => [.](A) ) ) ).

%------------------------------------------------------------------------------
