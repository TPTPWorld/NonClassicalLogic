%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : APM003+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   40 (  12 unt;  22 typ;  10 def)
%            Number of atoms       :   78 (  10 equ;   0 cnn)
%            Maximal formula atoms :   18 (   4 avg)
%            Number of connectives :  120 (   1   ~;   1   |;   5   &; 107   @)
%                                         (   1 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (   5 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   77 (  77   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (  21 usr;   3 con; 0-4 aty)
%            Number of variables   :   48 (  35   ^  10   !;   3   ?;  48   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $decreasing,
%            $modalities == $modal_system_S5].
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

thf(mrel_euclidean,axiom,
    ! [W: mworld,V: mworld,U: mworld] :
      ( ( ( mrel @ W @ U )
        & ( mrel @ W @ V ) )
     => ( mrel @ U @ V ) ) ).

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

thf(u_decl,type,
    u: $i ).

thf(one_decl,type,
    one: $i ).

thf(number_decl,type,
    number: $i > $i > mworld > $o ).

thf(string_decl,type,
    string: $i > mworld > $o ).

thf(in_decl,type,
    in: $i > $i > $i > mworld > $o ).

thf(do_decl,type,
    do: $i > $i > $i > mworld > $o ).

thf(entry_box_decl,type,
    entry_box: $i > mworld > $o ).

thf(userid_decl,type,
    userid: $i > $i > mworld > $o ).

thf(ax1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mexists_di
        @ ^ [I: $i] : ( mbox @ ( mand @ ( userid @ u @ I ) @ ( string @ I ) ) ) ) ) ) ).

thf(ax2,axiom,
    ( mlocal
    @ ( mexists_di
      @ ^ [B: $i] : ( mbox @ ( mand @ ( entry_box @ B ) @ ( number @ B @ one ) ) ) ) ) ).

thf(ax3,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [S: $i] :
            ( mforall_di
            @ ^ [I: $i] :
                ( mforall_di
                @ ^ [B: $i] :
                    ( mimplies @ ( mand @ ( string @ I ) @ ( entry_box @ B ) )
                    @ ( mexists_di
                      @ ^ [A: $i] :
                          ( mbox
                          @ ( mforall_di
                            @ ^ [S2: $i] : ( mimplies @ ( do @ S @ A @ S2 ) @ ( in @ I @ B @ S2 ) ) ) ) ) ) ) ) ) ) ) ).

thf(con,conjecture,
    ( mlocal
    @ ( mbox
      @ ( mexists_di
        @ ^ [I: $i] :
            ( mexists_di
            @ ^ [B: $i] :
                ( mexists_di
                @ ^ [A: $i] :
                    ( mexists_di
                    @ ^ [S: $i] :
                        ( mand @ ( mbox @ ( mand @ ( userid @ u @ I ) @ ( mand @ ( entry_box @ B ) @ ( number @ B @ one ) ) ) )
                        @ ( mbox
                          @ ( mforall_di
                            @ ^ [S2: $i] : ( mimplies @ ( do @ S @ A @ S2 ) @ ( in @ I @ B @ S2 ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------