%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : GNL005+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   74 (  12 unt;  35 typ;  10 def)
%            Number of atoms       :  794 (  10 equ;   0 cnn)
%            Maximal formula atoms :  402 (  20 avg)
%            Number of connectives : 1044 (   1   ~;   1   |;   3   &;1035   @)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   60 (  13 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :  105 ( 105   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   35 (  34 usr;   1 con; 0-3 aty)
%            Number of variables   :  127 ( 119   ^   4   !;   4   ?; 127   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $varying,
%            $modalities == $modal_system_D].
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

thf(mrel_serial,axiom,
    ! [W: mworld] :
    ? [V: mworld] : ( mrel @ W @ V ) ).

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

thf(young_decl,type,
    young: $i > mworld > $o ).

thf(old_decl,type,
    old: $i > mworld > $o ).

thf(down_decl,type,
    down: $i > $i > mworld > $o ).

thf(way_decl,type,
    way: $i > mworld > $o ).

thf(qmltpeq_decl,type,
    qmltpeq: $i > $i > mworld > $o ).

thf(seat_decl,type,
    seat: $i > mworld > $o ).

thf(white_decl,type,
    white: $i > mworld > $o ).

thf(car_decl,type,
    car: $i > mworld > $o ).

thf(furniture_decl,type,
    furniture: $i > mworld > $o ).

thf(street_decl,type,
    street: $i > mworld > $o ).

thf(fellow_decl,type,
    fellow: $i > mworld > $o ).

thf(front_decl,type,
    front: $i > mworld > $o ).

thf(man_decl,type,
    man: $i > mworld > $o ).

thf(event_decl,type,
    event: $i > mworld > $o ).

thf(lonely_decl,type,
    lonely: $i > mworld > $o ).

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

thf(barrel_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( barrel @ A @ C ) ) ) @ ( mbox @ ( barrel @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

thf(barrel_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( barrel @ C @ A ) ) ) @ ( mbox @ ( barrel @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

thf(car_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( car @ A ) ) ) @ ( mbox @ ( car @ B ) ) ) ) ) ) ) ) ) ).

thf(chevy_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( chevy @ A ) ) ) @ ( mbox @ ( chevy @ B ) ) ) ) ) ) ) ) ) ).

thf(city_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( city @ A ) ) ) @ ( mbox @ ( city @ B ) ) ) ) ) ) ) ) ) ).

thf(dirty_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( dirty @ A ) ) ) @ ( mbox @ ( dirty @ B ) ) ) ) ) ) ) ) ) ).

thf(down_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( down @ A @ C ) ) ) @ ( mbox @ ( down @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

thf(down_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( down @ C @ A ) ) ) @ ( mbox @ ( down @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

thf(event_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( event @ A ) ) ) @ ( mbox @ ( event @ B ) ) ) ) ) ) ) ) ) ).

thf(fellow_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( fellow @ A ) ) ) @ ( mbox @ ( fellow @ B ) ) ) ) ) ) ) ) ) ).

thf(front_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( front @ A ) ) ) @ ( mbox @ ( front @ B ) ) ) ) ) ) ) ) ) ).

thf(furniture_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( furniture @ A ) ) ) @ ( mbox @ ( furniture @ B ) ) ) ) ) ) ) ) ) ).

thf(hollywood_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( hollywood @ A ) ) ) @ ( mbox @ ( hollywood @ B ) ) ) ) ) ) ) ) ) ).

thf(in_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( in @ A @ C ) ) ) @ ( mbox @ ( in @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

thf(in_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( in @ C @ A ) ) ) @ ( mbox @ ( in @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

thf(lonely_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( lonely @ A ) ) ) @ ( mbox @ ( lonely @ B ) ) ) ) ) ) ) ) ) ).

thf(man_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( man @ A ) ) ) @ ( mbox @ ( man @ B ) ) ) ) ) ) ) ) ) ).

thf(old_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( old @ A ) ) ) @ ( mbox @ ( old @ B ) ) ) ) ) ) ) ) ) ).

thf(seat_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( seat @ A ) ) ) @ ( mbox @ ( seat @ B ) ) ) ) ) ) ) ) ) ).

thf(street_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( street @ A ) ) ) @ ( mbox @ ( street @ B ) ) ) ) ) ) ) ) ) ).

thf(way_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( way @ A ) ) ) @ ( mbox @ ( way @ B ) ) ) ) ) ) ) ) ) ).

thf(white_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( white @ A ) ) ) @ ( mbox @ ( white @ B ) ) ) ) ) ) ) ) ) ).

thf(young_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( young @ A ) ) ) @ ( mbox @ ( young @ B ) ) ) ) ) ) ) ) ) ).

thf(co1,conjecture,
    ( mlocal
    @ ( mand
      @ ( mbox
        @ ( mimplies
          @ ( mexists_di
            @ ^ [U: $i] :
                ( mexists_di
                @ ^ [V: $i] :
                    ( mexists_di
                    @ ^ [W: $i] :
                        ( mexists_di
                        @ ^ [X: $i] :
                            ( mexists_di
                            @ ^ [Y: $i] :
                                ( mexists_di
                                @ ^ [Z: $i] :
                                    ( mexists_di
                                    @ ^ [X1: $i] :
                                        ( mexists_di
                                        @ ^ [X3: $i] :
                                            ( mexists_di
                                            @ ^ [X4: $i] : ( mand @ ( mbox @ ( seat @ U ) ) @ ( mand @ ( mbox @ ( furniture @ U ) ) @ ( mand @ ( mbox @ ( front @ U ) ) @ ( mand @ ( mbox @ ( hollywood @ V ) ) @ ( mand @ ( mbox @ ( city @ V ) ) @ ( mand @ ( mbox @ ( event @ W ) ) @ ( mand @ ( mbox @ ( chevy @ X ) ) @ ( mand @ ( mbox @ ( car @ X ) ) @ ( mand @ ( mbox @ ( white @ X ) ) @ ( mand @ ( mbox @ ( dirty @ X ) ) @ ( mand @ ( mbox @ ( old @ X ) ) @ ( mand @ ( mbox @ ( street @ Y ) ) @ ( mand @ ( mbox @ ( way @ Y ) ) @ ( mand @ ( mbox @ ( lonely @ Y ) ) @ ( mand @ ( mbox @ ( barrel @ W @ X ) ) @ ( mand @ ( mbox @ ( down @ W @ Y ) ) @ ( mand @ ( mbox @ ( in @ W @ V ) ) @ ( mand @ ( mbox @ ( mnot @ ( mbox @ ( qmltpeq @ Z @ X1 ) ) ) ) @ ( mand @ ( mbox @ ( fellow @ Z ) ) @ ( mand @ ( mbox @ ( man @ Z ) ) @ ( mand @ ( mbox @ ( young @ Z ) ) @ ( mand @ ( mbox @ ( fellow @ X1 ) ) @ ( mand @ ( mbox @ ( man @ X1 ) ) @ ( mand @ ( mbox @ ( young @ X1 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ Z @ X3 ) ) @ ( mand @ ( mbox @ ( in @ X3 @ U ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X1 @ X4 ) ) @ ( mbox @ ( in @ X4 @ U ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          @ ( mexists_di
            @ ^ [X5: $i] :
                ( mexists_di
                @ ^ [X6: $i] :
                    ( mexists_di
                    @ ^ [X7: $i] :
                        ( mexists_di
                        @ ^ [X8: $i] :
                            ( mexists_di
                            @ ^ [X9: $i] :
                                ( mexists_di
                                @ ^ [X10: $i] :
                                    ( mexists_di
                                    @ ^ [X11: $i] :
                                        ( mexists_di
                                        @ ^ [X12: $i] :
                                            ( mexists_di
                                            @ ^ [X14: $i] :
                                                ( mexists_di
                                                @ ^ [X15: $i] : ( mand @ ( mbox @ ( seat @ X5 ) ) @ ( mand @ ( mbox @ ( furniture @ X5 ) ) @ ( mand @ ( mbox @ ( front @ X5 ) ) @ ( mand @ ( mbox @ ( seat @ X6 ) ) @ ( mand @ ( mbox @ ( furniture @ X6 ) ) @ ( mand @ ( mbox @ ( front @ X6 ) ) @ ( mand @ ( mbox @ ( hollywood @ X7 ) ) @ ( mand @ ( mbox @ ( city @ X7 ) ) @ ( mand @ ( mbox @ ( event @ X8 ) ) @ ( mand @ ( mbox @ ( street @ X9 ) ) @ ( mand @ ( mbox @ ( way @ X9 ) ) @ ( mand @ ( mbox @ ( lonely @ X9 ) ) @ ( mand @ ( mbox @ ( chevy @ X10 ) ) @ ( mand @ ( mbox @ ( car @ X10 ) ) @ ( mand @ ( mbox @ ( white @ X10 ) ) @ ( mand @ ( mbox @ ( dirty @ X10 ) ) @ ( mand @ ( mbox @ ( old @ X10 ) ) @ ( mand @ ( mbox @ ( barrel @ X8 @ X10 ) ) @ ( mand @ ( mbox @ ( down @ X8 @ X9 ) ) @ ( mand @ ( mbox @ ( in @ X8 @ X7 ) ) @ ( mand @ ( mbox @ ( mnot @ ( mbox @ ( qmltpeq @ X11 @ X12 ) ) ) ) @ ( mand @ ( mbox @ ( fellow @ X11 ) ) @ ( mand @ ( mbox @ ( man @ X11 ) ) @ ( mand @ ( mbox @ ( young @ X11 ) ) @ ( mand @ ( mbox @ ( fellow @ X12 ) ) @ ( mand @ ( mbox @ ( man @ X12 ) ) @ ( mand @ ( mbox @ ( young @ X12 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X11 @ X14 ) ) @ ( mand @ ( mbox @ ( in @ X14 @ X5 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X12 @ X15 ) ) @ ( mbox @ ( in @ X15 @ X6 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
      @ ( mbox
        @ ( mimplies
          @ ( mexists_di
            @ ^ [X16: $i] :
                ( mexists_di
                @ ^ [X17: $i] :
                    ( mexists_di
                    @ ^ [X18: $i] :
                        ( mexists_di
                        @ ^ [X19: $i] :
                            ( mexists_di
                            @ ^ [X20: $i] :
                                ( mexists_di
                                @ ^ [X21: $i] :
                                    ( mexists_di
                                    @ ^ [X22: $i] :
                                        ( mexists_di
                                        @ ^ [X23: $i] :
                                            ( mexists_di
                                            @ ^ [X25: $i] :
                                                ( mexists_di
                                                @ ^ [X26: $i] : ( mand @ ( mbox @ ( seat @ X16 ) ) @ ( mand @ ( mbox @ ( furniture @ X16 ) ) @ ( mand @ ( mbox @ ( front @ X16 ) ) @ ( mand @ ( mbox @ ( seat @ X17 ) ) @ ( mand @ ( mbox @ ( furniture @ X17 ) ) @ ( mand @ ( mbox @ ( front @ X17 ) ) @ ( mand @ ( mbox @ ( hollywood @ X18 ) ) @ ( mand @ ( mbox @ ( city @ X18 ) ) @ ( mand @ ( mbox @ ( event @ X19 ) ) @ ( mand @ ( mbox @ ( street @ X20 ) ) @ ( mand @ ( mbox @ ( way @ X20 ) ) @ ( mand @ ( mbox @ ( lonely @ X20 ) ) @ ( mand @ ( mbox @ ( chevy @ X21 ) ) @ ( mand @ ( mbox @ ( car @ X21 ) ) @ ( mand @ ( mbox @ ( white @ X21 ) ) @ ( mand @ ( mbox @ ( dirty @ X21 ) ) @ ( mand @ ( mbox @ ( old @ X21 ) ) @ ( mand @ ( mbox @ ( barrel @ X19 @ X21 ) ) @ ( mand @ ( mbox @ ( down @ X19 @ X20 ) ) @ ( mand @ ( mbox @ ( in @ X19 @ X18 ) ) @ ( mand @ ( mbox @ ( mnot @ ( mbox @ ( qmltpeq @ X22 @ X23 ) ) ) ) @ ( mand @ ( mbox @ ( fellow @ X22 ) ) @ ( mand @ ( mbox @ ( man @ X22 ) ) @ ( mand @ ( mbox @ ( young @ X22 ) ) @ ( mand @ ( mbox @ ( fellow @ X23 ) ) @ ( mand @ ( mbox @ ( man @ X23 ) ) @ ( mand @ ( mbox @ ( young @ X23 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X22 @ X25 ) ) @ ( mand @ ( mbox @ ( in @ X25 @ X16 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X23 @ X26 ) ) @ ( mbox @ ( in @ X26 @ X17 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
          @ ( mexists_di
            @ ^ [X27: $i] :
                ( mexists_di
                @ ^ [X28: $i] :
                    ( mexists_di
                    @ ^ [X29: $i] :
                        ( mexists_di
                        @ ^ [X30: $i] :
                            ( mexists_di
                            @ ^ [X31: $i] :
                                ( mexists_di
                                @ ^ [X32: $i] :
                                    ( mexists_di
                                    @ ^ [X33: $i] :
                                        ( mexists_di
                                        @ ^ [X35: $i] :
                                            ( mexists_di
                                            @ ^ [X36: $i] : ( mand @ ( mbox @ ( seat @ X27 ) ) @ ( mand @ ( mbox @ ( furniture @ X27 ) ) @ ( mand @ ( mbox @ ( front @ X27 ) ) @ ( mand @ ( mbox @ ( hollywood @ X28 ) ) @ ( mand @ ( mbox @ ( city @ X28 ) ) @ ( mand @ ( mbox @ ( event @ X29 ) ) @ ( mand @ ( mbox @ ( chevy @ X30 ) ) @ ( mand @ ( mbox @ ( car @ X30 ) ) @ ( mand @ ( mbox @ ( white @ X30 ) ) @ ( mand @ ( mbox @ ( dirty @ X30 ) ) @ ( mand @ ( mbox @ ( old @ X30 ) ) @ ( mand @ ( mbox @ ( street @ X31 ) ) @ ( mand @ ( mbox @ ( way @ X31 ) ) @ ( mand @ ( mbox @ ( lonely @ X31 ) ) @ ( mand @ ( mbox @ ( barrel @ X29 @ X30 ) ) @ ( mand @ ( mbox @ ( down @ X29 @ X31 ) ) @ ( mand @ ( mbox @ ( in @ X29 @ X28 ) ) @ ( mand @ ( mbox @ ( mnot @ ( mbox @ ( qmltpeq @ X32 @ X33 ) ) ) ) @ ( mand @ ( mbox @ ( fellow @ X32 ) ) @ ( mand @ ( mbox @ ( man @ X32 ) ) @ ( mand @ ( mbox @ ( young @ X32 ) ) @ ( mand @ ( mbox @ ( fellow @ X33 ) ) @ ( mand @ ( mbox @ ( man @ X33 ) ) @ ( mand @ ( mbox @ ( young @ X33 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X32 @ X35 ) ) @ ( mand @ ( mbox @ ( in @ X35 @ X27 ) ) @ ( mand @ ( mbox @ ( qmltpeq @ X33 @ X36 ) ) @ ( mbox @ ( in @ X36 @ X27 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------