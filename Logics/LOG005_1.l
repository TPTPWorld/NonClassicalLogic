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

% Comments : 
%------------------------------------------------------------------------------
%----Include common definitions
include('Logics/LOG001_1.l').
%------------------------------------------------------------------------------
tff(name,logic,$deontic_modal).

tff(obligatory_decl,type,'{$obligatory}' : $o > $o ).

tff(permissible_decl,type,'{$permissible}' : $o > $o ).

tff(obligatory_shortform,definition,
    '{$obligatory}' == '[.]' ).

tff(permissible_shortform,definition,
    '{$permissible}' == '<.>' ).

tff(permissible_defn,definition,
    ( {$permissible} @ (P)
   == ~ {$obligatory} @ (~ P) ) ).

%------------------------------------------------------------------------------
