%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : NLP001+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   41 (  11 unt;  28 typ;  10 def)
%            Number of atoms       :  156 (  10 equ;   0 cnn)
%            Maximal formula atoms :  128 (  12 avg)
%            Number of connectives :  238 (   1   ~;   1   |;   4   &; 227   @)
%                                         (   1 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   30 (   4 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   90 (  90   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (  27 usr;   1 con; 0-3 aty)
%            Number of variables   :   48 (  39   ^   6   !;   3   ?;  48   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $decreasing,
%            $modalities == $modal_system_K].
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

thf(chevy_decl,type,
    chevy: $i > mworld > $o ).

thf(dirty_decl,type,
    dirty: $i > mworld > $o ).

thf(barrel_decl,type,
    barrel: $i > $i > mworld > $o ).

thf(hollywood_decl,type,
    hollywood: $i > mworld > $o ).

thf(city_decl,type,
    city: $i > mworld > $o ).

thf(in_decl,type,
    in: $i > $i > mworld > $o ).

thf(old_decl,type,
    old: $i > mworld > $o ).

thf(down_decl,type,
    down: $i > $i > mworld > $o ).

thf(way_decl,type,
    way: $i > mworld > $o ).

thf(white_decl,type,
    white: $i > mworld > $o ).

thf(car_decl,type,
    car: $i > mworld > $o ).

thf(street_decl,type,
    street: $i > mworld > $o ).

thf(event_decl,type,
    event: $i > mworld > $o ).

thf(lonely_decl,type,
    lonely: $i > mworld > $o ).

thf(co1,conjecture,
    ( mlocal
    @ ( mand
      @ ( mimplies
        @ ( mexists_di
          @ ^ [U: $i] :
              ( mexists_di
              @ ^ [V: $i] :
                  ( mexists_di
                  @ ^ [W: $i] :
                      ( mexists_di
                      @ ^ [X: $i] : ( mand @ ( hollywood @ U ) @ ( mand @ ( city @ U ) @ ( mand @ ( event @ V ) @ ( mand @ ( street @ W ) @ ( mand @ ( way @ W ) @ ( mand @ ( lonely @ W ) @ ( mand @ ( chevy @ X ) @ ( mand @ ( car @ X ) @ ( mand @ ( white @ X ) @ ( mand @ ( dirty @ X ) @ ( mand @ ( old @ X ) @ ( mand @ ( barrel @ V @ X ) @ ( mand @ ( down @ V @ W ) @ ( in @ V @ U ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
        @ ( mexists_di
          @ ^ [Y: $i] :
              ( mexists_di
              @ ^ [Z: $i] :
                  ( mexists_di
                  @ ^ [X1: $i] :
                      ( mexists_di
                      @ ^ [X2: $i] : ( mand @ ( hollywood @ Y ) @ ( mand @ ( city @ Y ) @ ( mand @ ( event @ Z ) @ ( mand @ ( chevy @ X1 ) @ ( mand @ ( car @ X1 ) @ ( mand @ ( white @ X1 ) @ ( mand @ ( dirty @ X1 ) @ ( mand @ ( old @ X1 ) @ ( mand @ ( street @ X2 ) @ ( mand @ ( way @ X2 ) @ ( mand @ ( lonely @ X2 ) @ ( mand @ ( barrel @ Z @ X1 ) @ ( mand @ ( down @ Z @ X2 ) @ ( in @ Z @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
      @ ( mimplies
        @ ( mexists_di
          @ ^ [X3: $i] :
              ( mexists_di
              @ ^ [X4: $i] :
                  ( mexists_di
                  @ ^ [X5: $i] :
                      ( mexists_di
                      @ ^ [X6: $i] : ( mand @ ( hollywood @ X3 ) @ ( mand @ ( city @ X3 ) @ ( mand @ ( event @ X4 ) @ ( mand @ ( chevy @ X5 ) @ ( mand @ ( car @ X5 ) @ ( mand @ ( white @ X5 ) @ ( mand @ ( dirty @ X5 ) @ ( mand @ ( old @ X5 ) @ ( mand @ ( street @ X6 ) @ ( mand @ ( way @ X6 ) @ ( mand @ ( lonely @ X6 ) @ ( mand @ ( barrel @ X4 @ X5 ) @ ( mand @ ( down @ X4 @ X6 ) @ ( in @ X4 @ X3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
        @ ( mexists_di
          @ ^ [X7: $i] :
              ( mexists_di
              @ ^ [X8: $i] :
                  ( mexists_di
                  @ ^ [X9: $i] :
                      ( mexists_di
                      @ ^ [X10: $i] : ( mand @ ( hollywood @ X7 ) @ ( mand @ ( city @ X7 ) @ ( mand @ ( event @ X8 ) @ ( mand @ ( street @ X9 ) @ ( mand @ ( way @ X9 ) @ ( mand @ ( lonely @ X9 ) @ ( mand @ ( chevy @ X10 ) @ ( mand @ ( car @ X10 ) @ ( mand @ ( white @ X10 ) @ ( mand @ ( dirty @ X10 ) @ ( mand @ ( old @ X10 ) @ ( mand @ ( barrel @ X8 @ X10 ) @ ( mand @ ( down @ X8 @ X9 ) @ ( in @ X8 @ X7 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------