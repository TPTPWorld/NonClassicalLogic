%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET062+1 [QMLTP]
%          : SET062_1.003_s4_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   3 unt;   4 typ;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    5 (   2   ~;   0   |;   0   &)
%                                         (   2 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    8 (;   8   !;   0   ?;   8   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(empty_set_defn,axiom-local,
    ! [B: $i] : ~ member(B,empty_set) ).

tff(subset_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( subset(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
         => member(D,C) ) ) ).

tff(reflexivity_of_subset,axiom-local,
    ! [B: $i] : subset(B,B) ).

tff(empty_defn,axiom-local,
    ! [B: $i] :
      ( empty(B)
    <=> ! [C: $i] : ~ member(C,B) ) ).

tff(prove_empty_set_subset,conjecture,
    ! [B: $i] : subset(empty_set,B) ).

%------------------------------------------------------------------------------
