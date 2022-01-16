%------------------------------------------------------------------------------
% File     : LOG001_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Common elements for all modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
%----Syntax extensions (additionally to classical connectives)
tff(box_type,type,'[.]' : $o > $o ).

tff(dia_type,type,'<.>' : $o > $o ).

tff(diamond,definition,
    ( <.>(P)
   == ~ [.](~ P) ) ).

%------------------------------------------------------------------------------
