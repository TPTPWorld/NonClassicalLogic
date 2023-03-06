%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET576+1 [QMLTP]
%          : SET576_3.032_t_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   10 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    8 (   2   ~;   0   |;   1   &)
%                                         (   2 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   3   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   10 (;   9   !;   1   ?;  10   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_M ] ).

tff(intersect_decl,type,
    intersect: ( $i * $i ) > $o ).

tff(disjoint_decl,type,
    disjoint: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(intersect_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( intersect(B,C)
    <=> ? [D: $i] :
          ( member(D,B)
          & member(D,C) ) ) ).

tff(disjoint_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( disjoint(B,C)
    <=> ~ intersect(B,C) ) ).

tff(symmetry_of_intersect,axiom-local,
    ! [B: $i,C: $i] :
      ( intersect(B,C)
     => intersect(C,B) ) ).

tff(prove_th17,conjecture,
    ! [B: $i,C: $i] :
      ( ! [D: $i] :
          ( member(D,B)
         => ~ member(D,C) )
     => disjoint(B,C) ) ).

%------------------------------------------------------------------------------
