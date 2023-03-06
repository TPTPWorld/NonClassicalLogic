%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SET574+1 [QMLTP]
%          : SET574_1.003_k_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    8 (   0 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   2   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   2 usr;   0 prp; 2-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    8 (;   7   !;   1   ?;   8   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(intersect_decl,type,
    intersect: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(intersect_defn,axiom-local,
    ! [B: $i,C: $i] :
      ( intersect(B,C)
    <=> ? [D: $i] :
          ( member(D,B)
          & member(D,C) ) ) ).

tff(symmetry_of_intersect,axiom-local,
    ! [B: $i,C: $i] :
      ( intersect(B,C)
     => intersect(C,B) ) ).

tff(prove_th13,conjecture,
    ! [B: $i,C: $i,D: $i] :
      ( ( member(B,C)
        & member(B,D) )
     => intersect(C,D) ) ).

%------------------------------------------------------------------------------
