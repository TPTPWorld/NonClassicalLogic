%----SIMPLE CASE
%----Standard S5 version 1
% Example problem with "standard" semantics: TODO
thf(simple_s5,logic,(
    $modal ==
      [ $domains == $constant,
        $designation == $rigid,
        $terms = $local,
        $modalities == $modal_system_S5 ] )).

%----Standard S5 version 2
%----Default modality S5 as list of axioms K + T + 5.
thf(simple_s5_v3,logic,(
    $modal ==
      [ $domains == $constant,
        $designation == $rigid,
        $terms = $local,
        $modalities ==
          [ $modal_axiom_K,
            $modal_axiom_T,
            $modal_axiom_5 ] ] )).


%----CONSTANTS OPTIONS
% Example problem with at least one flexible constant: TODO
% Example problem with at least one flexible and rigid constant: TODO

%----Constants The constant king_of_france has special semantics
thf(human_type,type,(
    human: $tType )).

thf(king_of_france_constant,type,(
    king_of_france: human )).

thf(constants,logic,(
    $modal ==
      [ $domains == $constant,
        $designation ==
          [ $constant,
            king_of_france == $flexible ],
        $terms = $local,
        $modalities == $modal_system_S5 ] )).


%----QUANTIFICATION OPTIONS
% Example problem with at least one constant domain: TODO
% Example problem with at least one cumulative domain: PUZ149*.p
% Example problem with at least one varying domain: PUZ087*.p
% Example problem with at least two different types of domains: TODO

%----Quantification may be different for any base type or compound type e.g.
%----for type plushie
thf(plushie_type,type,(
    plushie: $tType )).

thf(quantification,logic,(
    $modal ==
      [ $domains ==
          [ $constant,
            plushie == $varying ],
        $designation == $rigid,
        $terms = $local,
        $modalities == $modal_system_S5 ] )).


%----CONSEQUENCE OPTIONS
% Example problem with at least one local axiom: TODO
% Example problem with at least one global axiom: TODO
% Example problem with at least one local and one global axiom: TODO
% Example problem with local conjecture: TODO
% Example problem with global conjecture: TODO

%----Consequence. All axioms and the conjecture have the same consequence 
%----except for ax1 which has a special consequence
thf(ax1,axiom,(
    $true )).

thf(different_consequence,logic,(
    $modal ==
      [ $domains == $constant,
        $designation == $rigid,
        $terms = $local,
        $modalities == $modal_system_S5 ] )).


%----MODALITY OPTIONS
% Example problem with at least two different modalities: TODO

%----Special semantics for modalities with index a and b (here: systems KB and 
%----K); one default value for all other modalities (here: system S5)
thf(exotic,logic,(
    $modal ==
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms = $local,
        $modalities ==
          [ $modal_system_S5,
            [#a] == $modal_system_KB,
            [#b] == $modal_system_K ] ] )).

thf(exotic,logic,(
    $modal ==
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms = $local,
        $modalities ==
          [ $modal_system_S5,
            {$necessary(#a)} == $modal_system_KB,
            {$necessary(#b)} == $modal_system_K ] ] )).
