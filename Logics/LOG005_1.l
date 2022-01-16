%------------------------------------------------------------------------------
% File     : LOG005_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Deontic modal logic
% Version  : Especial.
% English  : 

% Refs     : [Hil71] Hilpinen (1971), Deontic Logic: Introductory and Syste
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : See Logics/LOG001_2.l for details of the modal logic systems
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$deontic_modal).

tff(obligatory_type,type,'{$obligatory}' : $o > $o ).

tff(permissible_type,type,'{$permissible}' : $o > $o ).

tff(obligatory_shortform,definition,
    '{$obligatory}' == '[.]' ).

tff(permissible_shortform,definition,
    '{$permissible}' == '<.>' ).

%------------------------------------------------------------------------------
