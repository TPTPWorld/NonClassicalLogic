%------------------------------------------------------------------------------
% File     : GSY367^1.012 : TPTP v8.1.0. Released v8.1.0.
% Domain   : Logic Calculi
% Problem  : Goedel translation of SYN367+1 (from TPTP-v5.0.0)
% Version  : [BP13] axioms.
% English  : 

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [BP13]  Benzmueller & Paulson (2013), Quantified Multimodal Lo
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : GSY367+1 [QMLTP]

% Status   : Theorem 
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   30 (  12 unt;  17 typ;  10 def)
%            Number of atoms       :   53 (  10 equ;   0 cnn)
%            Maximal formula atoms :   27 (   4 avg)
%            Number of connectives :   67 (   1   ~;   1   |;   3   &;  58   @)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   3 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   64 (  64   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (  16 usr;   1 con; 0-3 aty)
%            Number of variables   :   34 (  26   ^   5   !;   3   ?;  34   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $varying,
%            $modalities == $modal_system_S5U].
%------------------------------------------------------------------------------
thf(mworld,type,
    mworld: $tType ).

thf(mrel_type,type,
    mrel: mworld > mworld > $o ).

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
    mbox: ( mworld > $o ) > mworld > $o ).

thf(mbox_def,definition,
    ( mbox
    = ( ^ [Phi: mworld > $o,W: mworld] :
        ! [V: mworld] :
          ( ( mrel @ W @ V )
         => ( Phi @ V ) ) ) ) ).

thf(mdia_type,type,
    mdia: ( mworld > $o ) > mworld > $o ).

thf(mdia_def,definition,
    ( mdia
    = ( ^ [Phi: mworld > $o,W: mworld] :
        ? [V: mworld] :
          ( ( mrel @ W @ V )
          & ( Phi @ V ) ) ) ) ).

thf(mrel_universal,axiom,
    ! [W: mworld,V: mworld] : ( mrel @ W @ V ) ).

thf(eiw_di_type,type,
    eiw_di: $i > mworld > $o ).

thf(eiw_di_nonempty,axiom,
    ! [W: mworld] :
    ? [X: $i] : ( eiw_di @ X @ W ) ).

thf(mforall_di_type,type,
    mforall_di: ( $i > mworld > $o ) > mworld > $o ).

thf(mforall_di_def,definition,
    ( mforall_di
    = ( ^ [A: $i > mworld > $o,W: mworld] :
        ! [X: $i] :
          ( ( eiw_di @ X @ W )
         => ( A @ X @ W ) ) ) ) ).

thf(mexists_di_type,type,
    mexists_di: ( $i > mworld > $o ) > mworld > $o ).

thf(mexists_di_def,definition,
    ( mexists_di
    = ( ^ [A: $i > mworld > $o,W: mworld] :
        ? [X: $i] :
          ( ( eiw_di @ X @ W )
          & ( A @ X @ W ) ) ) ) ).

%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:34:55 CEST 2022 using command 'downgrade(tff)'.
thf(p_decl,type,
    p: mworld > $o ).

thf(big_q_decl,type,
    big_q: $i > mworld > $o ).

thf(big_r_decl,type,
    big_r: $i > mworld > $o ).

thf(x2118,conjecture,
    ( mlocal
    @ ( mbox
      @ ( mimplies
        @ ( mbox
          @ ( mforall_di
            @ ^ [X: $i] : ( mor @ ( mand @ ( mbox @ p ) @ ( mbox @ ( big_q @ X ) ) ) @ ( mand @ ( mbox @ ( mnot @ ( mbox @ p ) ) ) @ ( mbox @ ( big_r @ X ) ) ) ) ) )
        @ ( mor
          @ ( mbox
            @ ( mforall_di
              @ ^ [X: $i] : ( mbox @ ( big_q @ X ) ) ) )
          @ ( mbox
            @ ( mforall_di
              @ ^ [X: $i] : ( mbox @ ( big_r @ X ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
