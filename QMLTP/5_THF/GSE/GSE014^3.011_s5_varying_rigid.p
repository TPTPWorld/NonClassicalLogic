%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : GSE014+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   46 (  12 unt;  18 typ;  10 def)
%            Number of atoms       :  279 (  10 equ;   0 cnn)
%            Maximal formula atoms :   44 (   9 avg)
%            Number of connectives :  396 (   1   ~;   1   |;   4   &; 385   @)
%                                         (   1 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   23 (  10 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   70 (  70   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   18 (  17 usr;   1 con; 0-3 aty)
%            Number of variables   :   74 (  64   ^   7   !;   3   ?;  74   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $varying,
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

thf(qmltpeq_decl,type,
    qmltpeq: $i > $i > mworld > $o ).

thf(member_decl,type,
    member: $i > $i > mworld > $o ).

thf(subset_decl,type,
    subset: $i > $i > mworld > $o ).

thf(union_decl,type,
    union: $i > $i > $i ).

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

thf(union_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( qmltpeq @ ( union @ A @ C ) @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(union_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( qmltpeq @ ( union @ C @ A ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(member_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( member @ A @ C ) ) ) @ ( mbox @ ( member @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

thf(member_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( member @ C @ A ) ) ) @ ( mbox @ ( member @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

thf(subset_substitution_1,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( subset @ A @ C ) ) ) @ ( mbox @ ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ) ).

thf(subset_substitution_2,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [A: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [B: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [C: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( qmltpeq @ A @ B ) ) @ ( mbox @ ( subset @ C @ A ) ) ) @ ( mbox @ ( subset @ C @ B ) ) ) ) ) ) ) ) ) ) ) ).

thf(union_defn,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [C: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [D: $i] : ( mand @ ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ ( union @ B @ C ) ) ) @ ( mor @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) ) ) @ ( mbox @ ( mimplies @ ( mor @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) @ ( mbox @ ( member @ D @ ( union @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(subset_defn,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [C: $i] :
                  ( mand
                  @ ( mbox
                    @ ( mimplies @ ( mbox @ ( subset @ B @ C ) )
                      @ ( mbox
                        @ ( mforall_di
                          @ ^ [D: $i] : ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) ) ) ) ) )
                  @ ( mbox
                    @ ( mimplies
                      @ ( mbox
                        @ ( mforall_di
                          @ ^ [D: $i] : ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) ) ) )
                      @ ( mbox @ ( subset @ B @ C ) ) ) ) ) ) ) ) ) ) ).

thf(commutativity_of_union,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [C: $i] : ( mbox @ ( qmltpeq @ ( union @ B @ C ) @ ( union @ C @ B ) ) ) ) ) ) ) ) ).

thf(reflexivity_of_subset,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] : ( mbox @ ( subset @ B @ B ) ) ) ) ) ).

thf(equal_member_defn,axiom,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [C: $i] :
                  ( mand
                  @ ( mbox
                    @ ( mimplies @ ( mbox @ ( qmltpeq @ B @ C ) )
                      @ ( mbox
                        @ ( mforall_di
                          @ ^ [D: $i] : ( mand @ ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) ) @ ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ C ) ) @ ( mbox @ ( member @ D @ B ) ) ) ) ) ) ) ) )
                  @ ( mbox
                    @ ( mimplies
                      @ ( mbox
                        @ ( mforall_di
                          @ ^ [D: $i] : ( mand @ ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ B ) ) @ ( mbox @ ( member @ D @ C ) ) ) ) @ ( mbox @ ( mimplies @ ( mbox @ ( member @ D @ C ) ) @ ( mbox @ ( member @ D @ B ) ) ) ) ) ) )
                      @ ( mbox @ ( qmltpeq @ B @ C ) ) ) ) ) ) ) ) ) ) ).

thf(prove_union_subset,conjecture,
    ( mlocal
    @ ( mbox
      @ ( mforall_di
        @ ^ [B: $i] :
            ( mbox
            @ ( mforall_di
              @ ^ [C: $i] :
                  ( mbox
                  @ ( mforall_di
                    @ ^ [D: $i] : ( mbox @ ( mimplies @ ( mand @ ( mbox @ ( subset @ B @ C ) ) @ ( mbox @ ( subset @ D @ C ) ) ) @ ( mbox @ ( subset @ ( union @ B @ D ) @ C ) ) ) ) ) ) ) ) ) ) ) ).

%------------------------------------------------------------------------------