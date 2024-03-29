%------------------------------------------------------------------------------
% File     : MML004^1.019 : TPTP v8.1.0. Released v8.1.0.
% Domain   : Puzzles
% Problem  : Yale shooting problem (simple version)
% Version  : [BP13] axioms.
% English  : After any sequence of actions ("always") ended by "load" the
%            gun is loaded. After any sequence of actions, if the gun is
%            loaded then after a shoot the turkey is not alive. Then, after
%            the actions load and shoot the turkey is not alive.

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [BP13]  Benzmueller & Paulson (2013), Quantified Multimodal Lo
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : MML004+1 [QMLTP]

% Status   : Unknown 
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   36 (   8 unt;  17 typ;   8 def)
%            Number of atoms       :   90 (   8 equ;   0 cnn)
%            Maximal formula atoms :    8 (   4 avg)
%            Number of connectives :  108 (   1   ~;   1   |;   2   &; 101   @)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Number of types       :    3 (   2 usr)
%            Number of type conns  :   50 (  50   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (  15 usr;   4 con; 0-3 aty)
%            Number of variables   :   23 (  21   ^   1   !;   1   ?;  23   :)
% SPC      : TH0_UNK_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $decreasing,
%            $modalities == $modal_system_K].
%------------------------------------------------------------------------------
thf(mworld,type,
    mworld: $tType ).

thf(mindex,type,
    mindex: $tType ).

thf(mrel_type,type,
    mrel: mindex > mworld > mworld > $o ).

thf('#always_type',type,
    '#always': mindex ).

thf('#shoot_type',type,
    '#shoot': mindex ).

thf('#load_type',type,
    '#load': mindex ).

thf(mactual_type,type,
    mactual: mworld ).

thf(mlocal_type,type,
    mlocal: ( mworld > $o ) > $o ).

thf(mlocal_def,definition,
    ( mlocal
    = ( ^ [Phi: mworld > $o] : ( Phi @ mactual ) ) ) ).

thf(mnot_type,type,
    mnot: ( mworld > $o ) > mworld > $o ).

thf(mand_type,type,
    mand: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mor_type,type,
    mor: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mimplies_type,type,
    mimplies: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mequiv_type,type,
    mequiv: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mnot_def,definition,
    ( mnot
    = ( ^ [A: mworld > $o,W: mworld] :
          ~ ( A @ W ) ) ) ).

thf(mand_def,definition,
    ( mand
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
          & ( B @ W ) ) ) ) ).

thf(mor_def,definition,
    ( mor
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
          | ( B @ W ) ) ) ) ).

thf(mimplies_def,definition,
    ( mimplies
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
         => ( B @ W ) ) ) ) ).

thf(mequiv_def,definition,
    ( mequiv
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
        <=> ( B @ W ) ) ) ) ).

thf(mbox_type,type,
    mbox: mindex > ( mworld > $o ) > mworld > $o ).

thf(mbox_def,definition,
    ( mbox
    = ( ^ [R: mindex,Phi: mworld > $o,W: mworld] :
        ! [V: mworld] :
          ( ( mrel @ R @ W @ V )
         => ( Phi @ V ) ) ) ) ).

thf(mdia_type,type,
    mdia: mindex > ( mworld > $o ) > mworld > $o ).

thf(mdia_def,definition,
    ( mdia
    = ( ^ [R: mindex,Phi: mworld > $o,W: mworld] :
        ? [V: mworld] :
          ( ( mrel @ R @ W @ V )
          & ( Phi @ V ) ) ) ) ).

thf(alive_decl,type,
    alive: mworld > $o ).

thf(loaded_decl,type,
    loaded: mworld > $o ).

thf(i_always_load_1,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ loaded ) @ ( mbox @ '#load' @ loaded ) ) ).

thf(i_always_load_2,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ ( mnot @ loaded ) ) @ ( mbox @ '#load' @ ( mnot @ loaded ) ) ) ).

thf(i_always_alive_1,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ alive ) @ ( mbox @ '#load' @ alive ) ) ).

thf(i_always_alive_2,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ ( mnot @ alive ) ) @ ( mbox @ '#load' @ ( mnot @ alive ) ) ) ).

thf(i_always_load_1_0,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ loaded ) @ ( mbox @ '#shoot' @ loaded ) ) ).

thf(i_always_load_2_0,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ ( mnot @ loaded ) ) @ ( mbox @ '#shoot' @ ( mnot @ loaded ) ) ) ).

thf(i_always_alive_1_0,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ alive ) @ ( mbox @ '#shoot' @ alive ) ) ).

thf(i_always_alive_2_0,axiom,
    mlocal @ ( mimplies @ ( mbox @ '#always' @ ( mnot @ alive ) ) @ ( mbox @ '#shoot' @ ( mnot @ alive ) ) ) ).

thf(axiom_1,axiom,
    mlocal @ ( mbox @ '#always' @ ( mbox @ '#load' @ loaded ) ) ).

thf(axiom_2,axiom,
    mlocal @ ( mbox @ '#always' @ ( mimplies @ loaded @ ( mbox @ '#shoot' @ ( mnot @ alive ) ) ) ) ).

thf(conj,conjecture,
    mlocal @ ( mbox @ '#load' @ ( mbox @ '#shoot' @ ( mnot @ alive ) ) ) ).

%------------------------------------------------------------------------------
