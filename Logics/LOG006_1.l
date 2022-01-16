%------------------------------------------------------------------------------
% File     : LOG006_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Epistemic modal logic
% Version  : Especial.
% English  : 

% Refs     : [vDH15] van Ditmarsch et al. (2015), Handbook of Epistemic Log
% Source   : [TPTP]
% Names    : 

% Syntax   : 

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$epistemic_modal).

tff(knows_type,type,'{$knows}' : $o > $o ).

tff(possible_type,type,'{$possible}' : $o > $o ).

tff(group_type,type,'{$group($agents := $tuple)}' : $o > $o ).

tff(common_type,type,'{$common($agents := $tuple)}' : $o > $o ).

tff(knows_shortform,definition,
    '{$knows}' == '[.]' ).

tff(knows_shortform,definition,
    '{$possible}' == '<.>' ).

%------------------------------------------------------------------------------
