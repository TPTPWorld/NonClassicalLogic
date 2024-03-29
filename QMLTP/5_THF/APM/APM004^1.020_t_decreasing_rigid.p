%------------------------------------------------------------------------------
% File     : APM004^1.020 : TPTP v8.1.0. Released v8.1.0.
% Domain   : Planning
% Problem  : Abductive planning: Bomb-in-the-toilet with detector
% Version  : [BP13] axioms.
% English  : 

% Refs     : [Sto98] Stone (1998), Abductive Planning with Sensing
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [BP13]  Benzmueller & Paulson (2013), Quantified Multimodal Lo
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : APM004+1 [QMLTP]

% Status   : Theorem 
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   34 (  12 unt;  17 typ;  10 def)
%            Number of atoms       :   62 (  10 equ;   0 cnn)
%            Maximal formula atoms :   10 (   3 avg)
%            Number of connectives :   84 (   1   ~;   1   |;   4   &;  73   @)
%                                         (   1 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   65 (  65   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (  16 usr;   1 con; 0-3 aty)
%            Number of variables   :   40 (  30   ^   7   !;   3   ?;  40   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $decreasing,
%            $modalities == $modal_system_T].
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

thf(mrel_reflexive,axiom,
    ! [W: mworld] : ( mrel @ W @ W ) ).

thf(eiw_di_type,type,
    eiw_di: $i > mworld > $o ).

thf(eiw_di_nonempty,axiom,
    ! [W: mworld] :
    ? [X: $i] : ( eiw_di @ X @ W ) ).

thf(eiw_di_decr,axiom,
    ! [W: mworld,V: mworld,X: $i] :
      ( ( ( eiw_di @ X @ W )
        & ( mrel @ V @ W ) )
     => ( eiw_di @ X @ V ) ) ).

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

thf(h_decl,type,
    h: $i > mworld > $o ).

thf(bomb_decl,type,
    bomb: $i > mworld > $o ).

thf(defused_decl,type,
    defused: $i > mworld > $o ).

thf(ax1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mexists_di
        @ ^ [B: $i] : ( bomb @ B ) ) ) ) ).

thf(ax2,axiom,
    ( mlocal
    @ ( mexists_di
      @ ^ [A: $i] :
          ( mbox
          @ ( mforall_di
            @ ^ [X: $i] : ( mimplies @ ( mand @ ( bomb @ X ) @ ( h @ A ) ) @ ( mbox @ ( bomb @ X ) ) ) ) ) ) ) ).

thf(ax3,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [X: $i] :
            ( mexists_di
            @ ^ [D: $i] : ( mbox @ ( mimplies @ ( mand @ ( bomb @ X ) @ ( h @ D ) ) @ ( defused @ X ) ) ) ) ) ) ) ).

thf(con,conjecture,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [X: $i] :
            ( mexists_di
            @ ^ [D: $i] : ( mimplies @ ( mand @ ( bomb @ X ) @ ( h @ D ) ) @ ( defused @ X ) ) ) ) ) ) ).

%------------------------------------------------------------------------------
