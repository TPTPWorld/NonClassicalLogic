%------------------------------------------------------------------------------
% File     : LOG003_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Generic modal logic
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
tff(name,logic,$modal).

tff(box_decl,type,'{$box}' : $o > $o ).

tff(dia_decl,type,'{$dia}' : $o > $o ).

tff(box_shortform,definition,
    '{$box}' == '[.]' ).

tff(dia_shortform,definition,
    '{$dia}' == '<.>' ).

tff(dia_defn,definition,
    ( {$dia} @ (P)
   == ~ {$box} @ (~ P) ) ).

%------------------------------------------------------------------------------
