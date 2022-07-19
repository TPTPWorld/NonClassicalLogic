%------------------------------------------------------------------------------
% File     : LOG004_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Alethic modal logic 
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$alethic_modal).

tff(necessary_decl,type,'{$necessary}' : $o > $o ).

tff(possible_decl,type,'{$possible}' : $o > $o ).

tff(necessary_shortform,definition,
    '{$necessary}' == '[.]' ).

tff(possible_shortform,definition,
    '{$possible}' == '<.>' ).

tff(possible_defn,definition,
    ( {$possible} @ (P)
   == ~ {$necessary} @ (~ P) ) ).

%------------------------------------------------------------------------------
