%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET009+1 [QMLTP]
%          : SET009_3.028_s4_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   1 unt;   3 typ;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    6 (   1   ~;   0   |;   1   &)
%                                         (   2 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   3   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   10 (;  10   !;   0   ?;  10   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_S4 ] ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(difference_defn,axiom-local,
    ! [B: $i,C: $i,D: $i] :
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) ) ).

tff(subset_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( subset(B,C)
    <=> ! [D: $i] :
          ( member(D,B)
         => member(D,C) ) ) ).

tff(reflexivity_of_subset,axiom-local,
    ! [B: $i] : subset(B,B) ).

tff(prove_subset_difference,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( subset(B,C)
     => subset(difference(D,C),difference(D,B)) ) ).

%------------------------------------------------------------------------------
