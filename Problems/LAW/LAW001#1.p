%------------------------------------------------------------------------------
% File     : LAW001#1 : TPTP v8.0.0. Released v8.0.0.
% Domain   : GDPR
% Problem  : ?
% Version  : ?
% English  : Is it compliant to have in the policy: We will update you about 
%            the purpose of the further processing before the time of 
%            processing.

% Refs     :
% Source   :
% Names    :

% Status   : Theorem
% Rating   : ? v8.0.0
% Syntax   :
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----semantics
thf(semantics,logic,(
    $modal := 
      [ $constants := $rigid, 
        $quantification := $constant, 
        $consequence := $local, 
        $modalities := 
          [ $box_int @ 0 := $modal_system_D, 
            $box_int @ 1 := $modal_system_D ] ] )).

%----propositions

%----individual constants
thf(article_6_1_article_9_2_a__const_type,type,(
    article_6_1_article_9_2_a__const: $i )).

thf(purpose__const_type,type,(
    purpose__const: $i )).

thf(lodge_complaint__const_type,type,(
    lodge_complaint__const: $i )).

thf(access_rectification_etc__const_type,type,(
    access_rectification_etc__const: $i )).

thf(data__const_type,type,(
    data__const: $i )).

thf(collection_time__const_type,type,(
    collection_time__const: $i )).

thf(processor_2__const_type,type,(
    processor_2__const: $i )).

thf(subject__const_type,type,(
    subject__const: $i )).

thf(article_6_1__const_type,type,(
    article_6_1__const: $i )).

thf(article_46_47_p2_article_49_1__const_type,type,(
    article_46_47_p2_article_49_1__const: $i )).

thf(justification_2__const_type,type,(
    justification_2__const: $i )).

thf(first_processing_time__const_type,type,(
    first_processing_time__const: $i )).

thf(controller__const_type,type,(
    controller__const: $i )).

thf(withdraw_consent_etc__const_type,type,(
    withdraw_consent_etc__const: $i )).

thf(purpose_2__const_type,type,(
    purpose_2__const: $i )).

thf(justification__const_type,type,(
    justification__const: $i )).

thf(second_processing_time__const_type,type,(
    second_processing_time__const: $i )).

thf(processor__const_type,type,(
    processor__const: $i )).

%----predicates
thf(personal_data_processed_type,type,(
    personal_data_processed: $i > $i > $i > $i > $i > $o )).

thf(communicate_within_time_type,type,(
    communicate_within_time: $i > $i > $i > $i > $i > $o )).

thf(controller_type,type,(
    controller: $i > $i > $o )).

thf(representive_type,type,(
    representive: $i > $i > $o )).

thf(recipients_personal_data_type,type,(
    recipients_personal_data: $i > $i > $o )).

thf(transfer_relates_to_type,type,(
    transfer_relates_to: $i > $i > $i > $i > $o )).

thf(data_protection_officer_type,type,(
    data_protection_officer: $i > $i > $o )).

thf(justification_based_type,type,(
    justification_based: $i > $i > $o )).

thf(different_from_type,type,(
    different_from: $i > $i > $o )).

thf(data_subject_type,type,(
    data_subject: $i > $o )).

thf(processor_type,type,(
    processor: $i > $o )).

thf(collected_at_type,type,(
    collected_at: $i > $i > $o )).

thf(personal_data_processed_at_time_type,type,(
    personal_data_processed_at_time: $i > $i > $i > $i > $o )).

thf(nominate_type,type,(
    nominate: $i > $i > $o )).

thf(communicate_before_time_type,type,(
    communicate_before_time: $i > $i > $i > $i > $o )).

thf(is_obliged_to_give_type,type,(
    is_obliged_to_give: $i > $i > $i > $o )).

thf(personal_data_type,type,(
    personal_data: $i > $i > $o )).

thf(type_provision_type,type,(
    type_provision: $i > $i > $i > $o )).

thf(earlier_type,type,(
    earlier: $i > $i > $o )).

thf(stored_during_type,type,(
    stored_during: $i > $i > $o )).

thf(intent_transfer_data_to_type,type,(
    intent_transfer_data_to: $i > $i > $i > $o )).

thf(already_has_type,type,(
    already_has: $i > $i > $o )).

thf(communicate_at_time_type,type,(
    communicate_at_time: $i > $i > $i > $i > $o )).

thf(consequence_refusing_to_give_type,type,(
    consequence_refusing_to_give: $i > $i > $i > $o )).

%----functions
thf(criteria_storing_data__fun_type,type,(
    criteria_storing_data__fun: $i > $i > $i )).

thf(stored_during__fun_type,type,(
    stored_during__fun: $i > $i > $i )).

thf(existence_right_of__fun_type,type,(
    existence_right_of__fun: $i > $i > $i > $i > $i )).

thf(info_obliged_give_data__fun_type,type,(
    info_obliged_give_data__fun: $i > $i > $i )).

thf(legitimate_interest_third_party_or__fun_type,type,(
    legitimate_interest_third_party_or__fun: $i > $i > $i )).

thf(contact_details__fun_type,type,(
    contact_details__fun: $i > $i )).

thf(info__fun_type,type,(
    info__fun: $i > $i )).

thf(purpose_of_processing__fun_type,type,(
    purpose_of_processing__fun: $i > $i > $i )).

thf(legal_basis__fun_type,type,(
    legal_basis__fun: $i > $i > $i )).

thf(recepients_of_data__fun_type,type,(
    recepients_of_data__fun: $i > $i )).

thf(information_of_transfer__fun_type,type,(
    information_of_transfer__fun: $i > $i > $i > $i > $i )).

thf(appropriate_safeguards__fun_type,type,(
    appropriate_safeguards__fun: $i > $i > $i > $i > $i )).

thf(existence_ai__fun_type,type,(
    existence_ai__fun: $i > $i > $i )).

thf(axiom_0,axiom,(
    ! [Subject__var: $i,Controller__var: $i,Processor__var: $i,Data__var: $i,Time__var: $i,Justification__var: $i,Purpose__var: $i,Time0__var: $i,Representive__var: $i,DPO__var: $i,LegalBasis__var: $i,Party__var: $i,Recipients__var: $i,Country__var: $i,Information__var: $i,SafeGuards__var: $i] :
      ( ( ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Controller__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Controller__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Controller__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Controller__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Controller__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Controller__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Controller__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Representive__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( representive @ Controller__var @ Representive__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Representive__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Representive__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Representive__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( representive @ Controller__var @ Representive__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ Representive__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( representive @ Controller__var @ Representive__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Representive__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ Representive__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ DPO__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( data_protection_officer @ DPO__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ DPO__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ DPO__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ DPO__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( data_protection_officer @ DPO__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( contact_details__fun @ DPO__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( data_protection_officer @ DPO__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ DPO__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( contact_details__fun @ DPO__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( purpose_of_processing__fun @ Purpose__var @ Data__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legal_basis__fun @ LegalBasis__var @ Purpose__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( justification_based @ Justification__var @ article_6_1__const ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( justification_based @ Justification__var @ article_6_1__const ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( justification_based @ Justification__var @ article_6_1__const ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( legitimate_interest_third_party_or__fun @ Party__var @ Controller__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( recepients_of_data__fun @ Recipients__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( recipients_personal_data @ Recipients__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( recepients_of_data__fun @ Recipients__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( recepients_of_data__fun @ Recipients__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( recepients_of_data__fun @ Recipients__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( recipients_personal_data @ Recipients__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( recepients_of_data__fun @ Recipients__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( recipients_personal_data @ Recipients__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( recepients_of_data__fun @ Recipients__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( recepients_of_data__fun @ Recipients__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( intent_transfer_data_to @ Controller__var @ Data__var @ Country__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( intent_transfer_data_to @ Controller__var @ Data__var @ Country__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( intent_transfer_data_to @ Controller__var @ Data__var @ Country__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( information_of_transfer__fun @ Controller__var @ Data__var @ Country__var @ Information__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( transfer_relates_to @ Controller__var @ Data__var @ Country__var @ article_46_47_p2_article_49_1__const ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( transfer_relates_to @ Controller__var @ Data__var @ Country__var @ article_46_47_p2_article_49_1__const ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( transfer_relates_to @ Controller__var @ Data__var @ Country__var @ article_46_47_p2_article_49_1__const ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( appropriate_safeguards__fun @ Controller__var @ Data__var @ Country__var @ SafeGuards__var ) ) ) ) ) ) ) )).

thf(axiom_1,axiom,(
    ! [Subject__var: $i,Data__var: $i,Period__var: $i,Processor__var: $i,Controller__var: $i,Time__var: $i,Justification__var: $i,Purpose__var: $i,Time0__var: $i,Criteria__var: $i,ProvisionType__var: $i,IsObliged__var: $i,Consequences__var: $i,Algorithm__var: $i] :
      ( ( ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( stored_during__fun @ Data__var @ Period__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( stored_during__fun @ Data__var @ Period__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( stored_during__fun @ Data__var @ Period__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( stored_during__fun @ Data__var @ Period__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ~ ( stored_during @ Data__var @ Period__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ~ ( stored_during @ Data__var @ Period__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ~ ( stored_during @ Data__var @ Period__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info__fun @ ProvisionType__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
          & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
                & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
                  & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_at_time @ Controller__var @ Subject__var @ Time0__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) ) ) ) ) ) )).

thf(axiom_2,axiom,(
    ! [Subject__var: $i,Purpose2__var: $i,Data__var: $i,Time__var: $i,Time2__var: $i,Processor2__var: $i,Justification2__var: $i,Purpose__var: $i,Controller__var: $i,Processor__var: $i,Justification__var: $i,Time0__var: $i,Period__var: $i,Criteria__var: $i,ProvisionType__var: $i,IsObliged__var: $i,Consequences__var: $i,Algorithm__var: $i] :
      ( ( ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( purpose_of_processing__fun @ Purpose2__var @ Data__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( stored_during__fun @ Data__var @ Period__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( stored_during__fun @ Data__var @ Period__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( stored_during__fun @ Data__var @ Period__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( stored_during__fun @ Data__var @ Period__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( stored_during__fun @ Data__var @ Period__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ~ ( stored_during @ Data__var @ Period__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ~ ( stored_during @ Data__var @ Period__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ~ ( stored_during @ Data__var @ Period__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( criteria_storing_data__fun @ Data__var @ Criteria__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ access_rectification_etc__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( personal_data_processed_at_time @ Processor__var @ Data__var @ Time__var @ article_6_1_article_9_2_a__const ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ withdraw_consent_etc__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_right_of__fun @ Controller__var @ Subject__var @ Data__var @ lodge_complaint__const ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( type_provision @ Subject__var @ Data__var @ ProvisionType__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info__fun @ ProvisionType__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info__fun @ ProvisionType__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var )
          & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
          & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var )
                & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
                & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var )
                  & ( is_obliged_to_give @ Subject__var @ Data__var @ IsObliged__var )
                  & ( consequence_refusing_to_give @ Subject__var @ Data__var @ Consequences__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( info_obliged_give_data__fun @ IsObliged__var @ Consequences__var ) ) ) ) ) )
      & ( ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
          & ( earlier @ Time__var @ Time2__var )
          & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
          & ( different_from @ Purpose2__var @ Purpose__var )
          & ( nominate @ Controller__var @ Processor2__var )
          & ( processor @ Processor2__var )
          & ( processor @ Processor__var )
          & ( nominate @ Controller__var @ Processor__var )
          & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
          & ( personal_data @ Data__var @ Subject__var )
          & ( collected_at @ Data__var @ Time0__var )
          & ( data_subject @ Subject__var )
          & ( controller @ Controller__var @ Data__var ) )
       => ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) )
          & ( $box_int @ 1
            @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) ) ) )
      & ( ( $box_int @ 0
          @ ( ( $box_int @ 0
              @ ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
                & ( earlier @ Time__var @ Time2__var )
                & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                & ( different_from @ Purpose2__var @ Purpose__var )
                & ( nominate @ Controller__var @ Processor2__var )
                & ( processor @ Processor2__var )
                & ( processor @ Processor__var )
                & ( nominate @ Controller__var @ Processor__var )
                & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                & ( personal_data @ Data__var @ Subject__var )
                & ( collected_at @ Data__var @ Time0__var )
                & ( data_subject @ Subject__var )
                & ( controller @ Controller__var @ Data__var ) ) )
            & ( $box_int @ 1
              @ ~ ( ~ ( already_has @ Subject__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) )
                  & ( earlier @ Time__var @ Time2__var )
                  & ( personal_data_processed @ Processor2__var @ Data__var @ Time2__var @ Justification2__var @ Purpose2__var )
                  & ( different_from @ Purpose2__var @ Purpose__var )
                  & ( nominate @ Controller__var @ Processor2__var )
                  & ( processor @ Processor2__var )
                  & ( processor @ Processor__var )
                  & ( nominate @ Controller__var @ Processor__var )
                  & ( personal_data_processed @ Processor__var @ Data__var @ Time__var @ Justification__var @ Purpose__var )
                  & ( personal_data @ Data__var @ Subject__var )
                  & ( collected_at @ Data__var @ Time0__var )
                  & ( data_subject @ Subject__var )
                  & ( controller @ Controller__var @ Data__var ) ) ) ) )
       => ( $box_int @ 0
          @ ( ( $box_int @ 0 @ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) )
            & ( $box_int @ 1
              @ ~ ( communicate_before_time @ Controller__var @ Subject__var @ Time2__var @ ( existence_ai__fun @ Data__var @ Algorithm__var ) ) ) ) ) ) ) )).

thf(axiom_3,axiom,(
    controller @ controller__const @ data__const )).

thf(axiom_4,axiom,(
    nominate @ controller__const @ processor__const )).

thf(axiom_5,axiom,(
    processor @ processor__const )).

thf(axiom_6,axiom,(
    personal_data_processed @ processor__const @ data__const @ second_processing_time__const @ justification__const @ purpose__const )).

thf(axiom_7,axiom,(
    personal_data @ data__const @ subject__const )).

thf(axiom_8,axiom,(
    data_subject @ subject__const )).

thf(axiom_9,axiom,(
    collected_at @ data__const @ collection_time__const )).

thf(axiom_10,axiom,(
    nominate @ controller__const @ processor_2__const )).

thf(axiom_11,axiom,(
    processor @ processor_2__const )).

thf(axiom_12,axiom,(
    personal_data_processed @ processor_2__const @ data__const @ first_processing_time__const @ justification_2__const @ purpose_2__const )).

thf(axiom_13,axiom,(
    earlier @ first_processing_time__const @ second_processing_time__const )).

thf(axiom_14,axiom,(
    different_from @ purpose__const @ purpose_2__const )).

thf(axiom_15,axiom,(
    ! [Controllerlog1__var: $i,Subjectlog1__var: $i,Zlog1__var: $i,Actionlog1__var: $i,Ylog1__var: $i] :
      ( ( ( $dia_int @ 0 @ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) )
        & ( $dia_int @ 1
          @ ~ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) )
        & ( earlier @ Ylog1__var @ Zlog1__var ) )
     => ( ( $dia_int @ 0 @ ( communicate_within_time @ Ylog1__var @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) )
        & ( $dia_int @ 1
          @ ~ ( communicate_within_time @ Ylog1__var @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) ) ) ) )).

thf(axiom_16,axiom,(
    ! [Controllerlog1__var: $i,Subjectlog1__var: $i,Zlog1__var: $i,Actionlog1__var: $i,Ylog1__var: $i] :
      ( ( ( $dia_int @ 0 @ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) )
        & ( $dia_int @ 1
          @ ~ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Zlog1__var @ Actionlog1__var ) )
        & ( earlier @ Ylog1__var @ Zlog1__var ) )
     => ( ( $dia_int @ 0 @ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Ylog1__var @ Actionlog1__var ) )
        & ( $dia_int @ 1
          @ ~ ( communicate_before_time @ Controllerlog1__var @ Subjectlog1__var @ Ylog1__var @ Actionlog1__var ) ) ) ) )).

thf(axiom_17,axiom,(
    earlier @ collection_time__const @ first_processing_time__const )).

thf(axiom_18,axiom,(
    ! [X__var: $i,Y__var: $i,Z__var: $i] :
      ( ( ( earlier @ X__var @ Y__var )
        & ( earlier @ Y__var @ Z__var ) )
     => ( earlier @ X__var @ Z__var ) ) )).

thf(axiom_19,axiom,(
    ~ ( already_has @ subject__const @ ( purpose_of_processing__fun @ purpose__const @ data__const ) ) )).

thf(con,conjecture,
    ( ( $dia_int @ 0 @ ( communicate_before_time @ controller__const @ subject__const @ second_processing_time__const @ ( purpose_of_processing__fun @ purpose__const @ data__const ) ) )
    & ( $dia_int @ 1
      @ ~ ( communicate_before_time @ controller__const @ subject__const @ second_processing_time__const @ ( purpose_of_processing__fun @ purpose__const @ data__const ) ) ) )).

%------------------------------------------------------------------------------
