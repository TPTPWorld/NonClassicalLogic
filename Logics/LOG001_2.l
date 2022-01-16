%------------------------------------------------------------------------------
% File     : LOG001_2 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Inference rules for normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
% tff(propositional_tautologies,definition,P that are classical tautologies).

tff(modus_ponens,definition,
    ( $modus_ponens
   == ( [ P, P => Q]
    --> [Q] ) ) ).

%----If P is a theorem then [.](P) is a theorem too.
%----Here --> is global consequence.
tff(modal_necessitation,definition,
    ( $modal_necessitation
   == ( [P]
    --> [[.](P)] ) ) ).

%------------------------------------------------------------------------------
