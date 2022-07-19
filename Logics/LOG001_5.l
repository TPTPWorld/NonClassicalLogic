%------------------------------------------------------------------------------
% File     : LOG001_5 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Inference rules for non-normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
#include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
%----If (A => B) is a theorem then ([.] @ (A) => [.] @ (B)) is a theorem too.
%----Here --> is global consequence.
tff(modal_axiom_RM,definition,
    ( $modal_axiom_RM
   == ( [ ( A
         => B ) ]
    --> [ ( [.] @ (A)
         => [.] @ (B) ) ] ) ) ).

%----If (A <=> B) is a theorem then ([.] @ (A) <=> [.] @ (B)) is a theorem too.
%----Here --> is global consequence.
tff(modal_axiom_RE,definition,
    ( $modal_axiom_RE
   == ( [ ( A
        <=> B ) ]
    --> [ ( [.] @ (A)
        <=> [.] @ (B) ) ] ) ) ).

%------------------------------------------------------------------------------
