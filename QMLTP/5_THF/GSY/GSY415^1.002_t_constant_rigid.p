%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : GSY415+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   31 (  11 unt;  15 typ;  10 def)
%            Number of atoms       :  133 (  10 equ;   0 cnn)
%            Maximal formula atoms :   64 (   8 avg)
%            Number of connectives :  168 (   1   ~;   1   |;   2   &; 161   @)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   21 (   6 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   62 (  62   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (  14 usr;   1 con; 0-3 aty)
%            Number of variables   :   46 (  41   ^   3   !;   2   ?;  46   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $constant,
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

thf(mforall_di_type,type,
    mforall_di: ( $i > mworld > $o ) > mworld > $o ).

thf(mforall_di_def,definition,
    ( mforall_di
    = ( ^ [A: $i > mworld > $o,W: mworld] :
        ! [X: $i] : ( A @ X @ W ) ) ) ).

thf(mexists_di_type,type,
    mexists_di: ( $i > mworld > $o ) > mworld > $o ).

thf(mexists_di_def,definition,
    ( mexists_di
    = ( ^ [A: $i > mworld > $o,W: mworld] :
        ? [X: $i] : ( A @ X @ W ) ) ) ).

thf(qmltpeq_decl,type,
    qmltpeq: $i > $i > mworld > $o ).

thf(f_decl,type,
    f: $i > mworld > $o ).

thf(reflexivity,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [X: $i] : ( mbox @ ( qmltpeq @ X @ X ) ) ) ) ) ).

thf(symmetry,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [X: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [Y: $i] : ( mbox @ ( mimplies @ ( mbox @ ( qmltpeq @ X @ Y ) ) @ ( mbox @ ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).

thf(transitivity,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [X: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [Y: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [Z: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ X @ Y ) ) @ ( mbox @ ( qmltpeq @ Y @ Z ) ) ) @ ( mbox @ ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).

thf(f_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( f @ A ) ) ) @ ( mbox @ ( f @ B ) ) ) ) ) ) ) ) ) ).

thf(kalish317,conjecture,
    ( mlocal
    @ ( mand
      @ ( mbox
        @ ( mimplies
          @ ( mand
            @ ( mexists_di
              @ ^ [X: $i] : ( mbox @ ( f @ X ) ) )
            @ ( mbox
              @ ( mforall_di
                @ ^ [Y: $i] :
                    ( mbox
                    @ ( mforall_di
                      @ ^ [Z: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( f @ Y ) ) @ ( mbox @ ( f @ Z ) ) ) @ ( mbox @ ( qmltpeq @ Y @ Z ) ) ) ) ) ) ) ) )
          @ ( mexists_di
            @ ^ [U: $i] :
                ( mand @ ( mbox @ ( f @ U ) )
                @ ( mbox
                  @ ( mforall_di
                    @ ^ [V: $i] : ( mbox @ ( mimplies @ ( mbox @ ( f @ V ) ) @ ( mbox @ ( qmltpeq @ U @ V ) ) ) ) ) ) ) ) ) )
      @ ( mbox
        @ ( mimplies
          @ ( mexists_di
            @ ^ [U: $i] :
                ( mand @ ( mbox @ ( f @ U ) )
                @ ( mbox
                  @ ( mforall_di
                    @ ^ [V: $i] : ( mbox @ ( mimplies @ ( mbox @ ( f @ V ) ) @ ( mbox @ ( qmltpeq @ U @ V ) ) ) ) ) ) ) )
          @ ( mand
            @ ( mexists_di
              @ ^ [X: $i] : ( mbox @ ( f @ X ) ) )
            @ ( mbox
              @ ( mforall_di
                @ ^ [Y: $i] :
                    ( mbox
                    @ ( mforall_di
                      @ ^ [Z: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( f @ Y ) ) @ ( mbox @ ( f @ Z ) ) ) @ ( mbox @ ( qmltpeq @ Y @ Z ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------