%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example: CTD in standard deontic logic (GDPR)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--- logic specification for SDL
thf(spec, logic, ($modal = [
   $constants = $rigid,
   $quantification = $constant,
   $consequence = [$global,
                    situationalAxiom = $local],
   $modalities = $modal_system_D ] ) ).

%--- declare atomic propositions
thf(type1, type, processDataLawfully: $o).
thf(type2, type, eraseData: $o).

%--- It is obligatory to process data lawfully
thf(ax1, axiom, [.] @ processDataLawfully).

%--- If data is not processed lawfully it has to be erased
thf(ax2, axiom, (~ (processDataLawfully))
                 => ([.] @ eraseData)).
                 
%--- Lawfully processed data must be kept
thf(ax3, axiom, [.] @ (processDataLawfully => ~(eraseData))).

%--- Data is actually not processed lawfully
thf(situationalAxiom, axiom, ~ (processDataLawfully)).

%--- Is it obligatory to delete the data?
thf(c, conjecture, [.] @ eraseData).

