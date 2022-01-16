%------------------------------------------------------------------------------
% File     : LOG002_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Generic modal logics
% Name     : Generic modal logic definitions
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : See Logics/LOG001_2.l for details of the modal logic systems
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$modal).

tff(box_type,type,'{$box}' : $o > $o ).

tff(dia_type,type,'{$dia}' : $o > $o ).

tff(box_shortform,definition,
    '{$box}' == '[.]' ).

tff(dia_shortform,definition,
    '{$dia}' == '<.>' ).

%------------------------------------------------------------------------------
