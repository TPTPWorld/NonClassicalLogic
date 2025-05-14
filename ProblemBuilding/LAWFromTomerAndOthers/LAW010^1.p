%------------------------------------------------------------------------------
% File     : LAW010^1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Law
% Problem  : Is it obligatory to delete the data?
% Version  : Especial.
% English  : 

% Refs     : [Lib20] Libal (2020), Towards Automated GDPR Compliance Checki
%          : [Ben21] Benzmueller (2021), Email to Geoff Sutcliffe
% Source   : [Ben21]
% Names    : GDPR.modal.p [Ben21]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   3 unt;   2 typ;   0 def)
%            Number of atoms       :    7 (   0 equ;   0 cnn)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    9 (   3   ~;   0   |;   0   &;   0   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   4 {.};   0 {#})
%            Maximal formula depth :    4 (   3 avg)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :    0 (   0   ^;   0   !;   0   ?;   0   :)
% SPC      : NH0_THM_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
thf(spec,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_D ] ).

%----declare atomic propositions
thf(type1,type,
    processDataLawfully: $o ).

thf(type2,type,
    eraseData: $o ).

%----It is obligatory to process data lawfully
thf(ax1,axiom,
    [.] processDataLawfully ).

%----If data is not processed lawfully it has to be erased
thf(ax2,axiom,
    ( ~ processDataLawfully
   => [.] eraseData ) ).

%----Lawfully processed data must be kept
thf(ax3,axiom,
    [.] ( processDataLawfully
       => ~ eraseData ) ).

%----Data is actually not processed lawfully
thf(situationalAxiom,axiom-local,
    ~ processDataLawfully ).

%----Is it obligatory to delete the data?
thf(c,conjecture,
    [.] eraseData ).

%------------------------------------------------------------------------------
