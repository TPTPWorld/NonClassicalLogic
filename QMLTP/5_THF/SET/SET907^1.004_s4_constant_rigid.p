%------------------------------------------------------------------------------
% File     : NTF001^1 : TPTP v8.1.0. Released v8.1.0.
% Domain   : TBA
% Problem  : TBA
% Version  : TBA
% English  : TBA

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : SET907+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   55 (  11 unt;  19 typ;  10 def)
%            Number of atoms       :  186 (  10 equ;   0 cnn)
%            Maximal formula atoms :    9 (   5 avg)
%            Number of connectives :  301 (   1   ~;   1   |;   3   &; 292   @)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   8 avg)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   72 (  72   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (  18 usr;   1 con; 0-3 aty)
%            Number of variables   :   87 (  79   ^   6   !;   2   ?;  87   :)
% SPC      : TH0_THM_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $constant,
%            $modalities == $modal_system_S4].
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

thf(mrel_transitive,axiom,
    ! [W: mworld,V: mworld,U: mworld] :
      ( ( ( mrel @ W @ V )
        & ( mrel @ V @ U ) )
     => ( mrel @ W @ U ) ) ).

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

thf(in_decl,type,
    in: $i > $i > mworld > $o ).

thf(subset_decl,type,
    subset: $i > $i > mworld > $o ).

thf(empty_decl,type,
    empty: $i > mworld > $o ).

thf(unordered_pair_decl,type,
    unordered_pair: $i > $i > $i ).

thf(set_union2_decl,type,
    set_union2: $i > $i > $i ).

thf(reflexivity,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [X: $i] : ( qmltpeq @ X @ X ) ) ) ).

thf(symmetry,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [X: $i] :
          ( mforall_di
          @ ^ [Y: $i] : ( mimplies @ ( qmltpeq @ X @ Y ) @ ( qmltpeq @ Y @ X ) ) ) ) ) ).

thf(transitivity,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [X: $i] :
          ( mforall_di
          @ ^ [Y: $i] :
              ( mforall_di
              @ ^ [Z: $i] : ( mimplies @ ( mand @ ( qmltpeq @ X @ Y ) @ ( qmltpeq @ Y @ Z ) ) @ ( qmltpeq @ X @ Z ) ) ) ) ) ) ).

thf(set_union2_substitution_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( set_union2 @ A @ C ) @ ( set_union2 @ B @ C ) ) ) ) ) ) ) ).

thf(set_union2_substitution_2,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( set_union2 @ C @ A ) @ ( set_union2 @ C @ B ) ) ) ) ) ) ) ).

thf(unordered_pair_substitution_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( unordered_pair @ A @ C ) @ ( unordered_pair @ B @ C ) ) ) ) ) ) ) ).

thf(unordered_pair_substitution_2,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( qmltpeq @ A @ B ) @ ( qmltpeq @ ( unordered_pair @ C @ A ) @ ( unordered_pair @ C @ B ) ) ) ) ) ) ) ).

thf(empty_substitution_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( empty @ A ) ) @ ( empty @ B ) ) ) ) ) ).

thf(in_substitution_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( in @ A @ C ) ) @ ( in @ B @ C ) ) ) ) ) ) ).

thf(in_substitution_2,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( in @ C @ A ) ) @ ( in @ C @ B ) ) ) ) ) ) ).

thf(subset_substitution_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subset @ A @ C ) ) @ ( subset @ B @ C ) ) ) ) ) ) ).

thf(subset_substitution_2,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( mand @ ( qmltpeq @ A @ B ) @ ( subset @ C @ A ) ) @ ( subset @ C @ B ) ) ) ) ) ) ).

thf(antisymmetry_r2_hidden,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( mimplies @ ( in @ A @ B ) @ ( mnot @ ( in @ B @ A ) ) ) ) ) ) ).

thf(commutativity_k2_tarski,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( qmltpeq @ ( unordered_pair @ A @ B ) @ ( unordered_pair @ B @ A ) ) ) ) ) ).

thf(commutativity_k2_xboole_0,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( qmltpeq @ ( set_union2 @ A @ B ) @ ( set_union2 @ B @ A ) ) ) ) ) ).

thf(fc2_xboole_0,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( mimplies @ ( mnot @ ( empty @ A ) ) @ ( mnot @ ( empty @ ( set_union2 @ A @ B ) ) ) ) ) ) ) ).

thf(fc3_xboole_0,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( mimplies @ ( mnot @ ( empty @ A ) ) @ ( mnot @ ( empty @ ( set_union2 @ B @ A ) ) ) ) ) ) ) ).

thf(idempotence_k2_xboole_0,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( qmltpeq @ ( set_union2 @ A @ A ) @ A ) ) ) ) ).

thf(rc1_xboole_0,axiom,
    ( mlocal
    @ ( mexists_di
      @ ^ [A: $i] : ( empty @ A ) ) ) ).

thf(rc2_xboole_0,axiom,
    ( mlocal
    @ ( mexists_di
      @ ^ [A: $i] : ( mnot @ ( empty @ A ) ) ) ) ).

thf(reflexivity_r1_tarski,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( subset @ A @ A ) ) ) ) ).

thf(t12_xboole_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] : ( mimplies @ ( subset @ A @ B ) @ ( qmltpeq @ ( set_union2 @ A @ B ) @ B ) ) ) ) ) ).

thf(t38_zfmisc_1,axiom,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mequiv @ ( subset @ ( unordered_pair @ A @ B ) @ C ) @ ( mand @ ( in @ A @ C ) @ ( in @ B @ C ) ) ) ) ) ) ) ).

thf(t48_zfmisc_1,conjecture,
    ( mlocal
    @ ( mforall_di
      @ ^ [A: $i] :
          ( mforall_di
          @ ^ [B: $i] :
              ( mforall_di
              @ ^ [C: $i] : ( mimplies @ ( mand @ ( in @ A @ B ) @ ( in @ C @ B ) ) @ ( qmltpeq @ ( set_union2 @ ( unordered_pair @ A @ C ) @ B ) @ B ) ) ) ) ) ) ).

%------------------------------------------------------------------------------