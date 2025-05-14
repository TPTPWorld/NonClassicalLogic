%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example: GDPR in Dyadic deontic logic (Carmo/Jones)
%
% {$obligatory}(p) corresponds to OB (obligatory) p
% {$obligatory}(p/q) corresponds to 'it ought to be p given q'
% ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tff(spec,logic,
    $deontic_modal == 
      [ $modalities == $modal_system_D ] ).

%--- It is obligatory to process data lawfully
tff(a1,axiom,
    {$obligatory} @ (processDataLawfully) ).

%--- If data is not processed lawfully it has to be erased
tff(a2,axiom,
    {$obligatory} @ (~ processDataLawfully),
    eraseData ).

%--- Data is actually not processed lawfully
tff(situationalAx,axiom-local,
    ~ processDataLawfully ).

%--- Is it obligatory to delete the data?
tff(c1,conjecture,
    {$obligatory} @ (eraseData) ).

%%% Commented out
%--- Consistency check: Is it obligatory to kill the boss?
%tff(c3, conjecture, {$obligatory} @ (kill)).
