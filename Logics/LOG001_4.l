%------------------------------------------------------------------------------
% File     : LOG001_4 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Systems of normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions for normal modal logics
include('Logics/LOG001_2.l').
include('Logics/LOG001_3.l').
%------------------------------------------------------------------------------
tff(modal_system_K,definition,
    ( $modal_system_K 
   == ( $modus_ponens
      & $modal_necessitation
      & $modal_axiom_K ) ) ).

tff(modal_system_K4,definition,
    ( $modal_system_K4 
   == ( $modal_system_K
      & $modal_axiom_4 ) ) ).

tff(modal_system_K5,definition,
    ( $modal_system_K5 
   == ( $modal_system_K
      & $modal_axiom_5 ) ) ).

tff(modal_system_K45,definition,
    ( $modal_system_K45 
   == ( $modal_system_K4
      & $modal_axiom_5 ) ) ).

tff(modal_system_KB,definition,
    ( $modal_system_KB 
   == ( $modal_system_K
      & $modal_axiom_B ) ) ).

tff(modal_system_KB5,definition,
    ( $modal_system_KB5 
   == ( $modal_system_KB
      & $modal_axiom_5 ) ) ).

tff(modal_system_D,definition,
    ( $modal_system_D 
   == ( $modal_system_K
      & $modal_axiom_D ) ) ).

tff(modal_system_D4,definition,
    ( $modal_system_D4 
   == ( $modal_system_D
      & $modal_axiom_4 ) ) ).

tff(modal_system_D5,definition,
    ( $modal_system_D5 
   == ( $modal_system_D
      & $modal_axiom_5 ) ) ).

tff(modal_system_D45,definition,
    ( $modal_system_D45 
   == ( $modal_system_D4
      & $modal_axiom_5 ) ) ).

tff(modal_system_DB,definition,
    ( $modal_system_DB 
   == ( $modal_system_D
      & $modal_axiom_B ) ) ).

tff(modal_system_T,definition,
    ( $modal_system_T 
   == ( $modal_system_K
      & $modal_axiom_T ) ) ).

tff(modal_system_B,definition,
    ( $modal_system_B
   == ( $modal_system_T
      & $modal_axiom_B ) ) ).

tff(modal_system_S4,definition,
    ( $modal_system_S4 
   == ( $modal_system_T
      & $modal_axiom_4 ) ) ).

tff(modal_system_S5,definition,
    ( $modal_system_S5 
   == ( $modal_system_S4
      & $modal_axiom_5 ) ) ).

tff(modal_system_K4W,definition,
    ( $modal_system_K4W 
   == ( $modal_system_K
      & $modal_axiom_GL ) ) ).

tff(modal_system_4_1,definition,
    ( $modal_system_4_1 
   == ( $modal_system_S4
      & $modal_axiom_H ) ) ).

tff(modal_system_4_3,definition,
    ( $modal_system_4_3 
   == ( $modal_system_S4
      & $modal_axiom_G ) ) ).

tff(modal_system_Grz,definition,
    ( $modal_system_Grz 
   == ( $modal_system_K
      & $modal_axiom_Grz ) ) ).

tff(modal_system_GL,definition,
    ( $modal_system_GL 
   == ( $modal_system_K
      & $modal_axiom_GL ) ) ).

%------------------------------------------------------------------------------
