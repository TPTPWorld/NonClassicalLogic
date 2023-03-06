%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM331+1 [QMLTP]
%          : SYM331_1.005_s5_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   60 (   1 unt;   8 typ;   0 def)
%            Number of atoms       :  626 (   0 equ)
%            Maximal formula atoms :    7 (  12 avg)
%            Number of connectives :  455 (  93   ~; 150   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         ( 212 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :  212 ( 212 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   12 (   8 usr;  10 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5 ] ).

tff(v1_decl,type,
    v1: $o ).

tff(v2_decl,type,
    v2: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(v5_decl,type,
    v5: $o ).

tff(v6_decl,type,
    v6: $o ).

tff(v7_decl,type,
    v7: $o ).

tff(v8_decl,type,
    v8: $o ).

tff(persat1,axiom-local,
    ( v1
    | v2
    | ( {$box} @ (v3) )
    | ( {$box}
      @ ({$box} @ (~ v1)) ) ) ).

tff(persat2,axiom-local,
    ( v1
    | ~ v2
    | ( {$box}
      @ ({$box} @ (v3)) )
    | ( {$box}
      @ ({$box} @ (v6)) ) ) ).

tff(persat3,axiom-local,
    ( v1
    | ~ v3
    | ( {$box} @ (v1) )
    | ( {$box}
      @ ({$box} @ (v6)) ) ) ).

tff(persat4,axiom-local,
    ( v1
    | ~ v3
    | ( {$box} @ (~ v3) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat5,axiom-local,
    ( v1
    | ~ v3
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat6,axiom-local,
    ( v2
    | v8
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v7)) ) ) ).

tff(persat7,axiom-local,
    ( v2
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v3)) ) ) ).

tff(persat8,axiom-local,
    ( v2
    | ( {$box} @ (v3) )
    | ( {$box}
      @ ({$box} @ (v8)) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat9,axiom-local,
    ( v2
    | ( {$box} @ (v6) )
    | ( {$box} @ (~ v5) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat10,axiom-local,
    ( v3
    | v8
    | ( {$box} @ (v5) )
    | ( {$box}
      @ ({$box} @ (v5)) ) ) ).

tff(persat11,axiom-local,
    ( v3
    | ~ v2
    | ( {$box} @ (~ v3) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat12,axiom-local,
    ( v3
    | ~ v5
    | ( {$box} @ (~ v3) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat13,axiom-local,
    ( v3
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (~ v5)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat14,axiom-local,
    ( v3
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v3)) ) ) ).

tff(persat15,axiom-local,
    ( v3
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (v5)) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat16,axiom-local,
    ( v3
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (~ v1)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat17,axiom-local,
    ( v4
    | ( {$box} @ (v5) )
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat18,axiom-local,
    ( v4
    | ( {$box} @ (v6) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat19,axiom-local,
    ( v5
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v7)) )
    | ( {$box}
      @ ({$box} @ (~ v1)) ) ) ).

tff(persat20,axiom-local,
    ( v5
    | ~ v7
    | ( {$box}
      @ ({$box} @ (v7)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat21,axiom-local,
    ( v5
    | ( {$box} @ (v7) )
    | ( {$box} @ (~ v5) )
    | ( {$box}
      @ ({$box} @ (~ v6)) ) ) ).

tff(persat22,axiom-local,
    ( v6
    | ~ v2
    | ( {$box} @ (v8) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat23,axiom-local,
    ( v6
    | ~ v7
    | ( {$box} @ (v3) )
    | ( {$box}
      @ ({$box} @ (v3)) ) ) ).

tff(persat24,axiom-local,
    ( v6
    | ( {$box} @ (v1) )
    | ( {$box}
      @ ({$box} @ (v8)) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat25,axiom-local,
    ( v6
    | ( {$box} @ (v4) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (~ v6)) ) ) ).

tff(persat26,axiom-local,
    ( v6
    | ( {$box} @ (~ v8) )
    | ( {$box}
      @ ({$box} @ (v7)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat27,axiom-local,
    ( v6
    | ( {$box} @ (~ v8) )
    | ( {$box}
      @ ({$box} @ (~ v5)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat28,axiom-local,
    ( v7
    | ~ v3
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v2)) ) ) ).

tff(persat29,axiom-local,
    ( v7
    | ~ v4
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat30,axiom-local,
    ( v7
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat31,axiom-local,
    ( v7
    | ( {$box} @ (v4) )
    | ( {$box}
      @ ({$box} @ (~ v1)) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat32,axiom-local,
    ( v7
    | ( {$box} @ (v5) )
    | ( {$box} @ (v6) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat33,axiom-local,
    ( v7
    | ( {$box} @ (~ v6) )
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat34,axiom-local,
    ( v7
    | ( {$box}
      @ ({$box} @ (v3)) )
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (~ v1)) ) ) ).

tff(persat35,axiom-local,
    ( v8
    | ~ v2
    | ( {$box}
      @ ({$box} @ (v7)) )
    | ( {$box}
      @ ({$box} @ (~ v6)) ) ) ).

tff(persat36,axiom-local,
    ( v8
    | ( {$box} @ (v4) )
    | ( {$box} @ (v7) )
    | ( {$box}
      @ ({$box} @ (v6)) ) ) ).

tff(persat37,axiom-local,
    ( v8
    | ( {$box} @ (v8) )
    | ( {$box} @ (~ v7) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat38,axiom-local,
    ( v8
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (v7)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat39,axiom-local,
    ( v8
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (~ v1)) ) ) ).

tff(persat40,axiom-local,
    ( ~ v1
    | ~ v4
    | ~ v6
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat41,axiom-local,
    ( ~ v1
    | ~ v7
    | ( {$box}
      @ ({$box} @ (~ v7)) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat42,axiom-local,
    ( ~ v2
    | ~ v4
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat43,axiom-local,
    ( ~ v2
    | ( {$box} @ (v6) )
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat44,axiom-local,
    ( ~ v2
    | ( {$box} @ (v6) )
    | ( {$box}
      @ ({$box} @ (~ v5)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat45,axiom-local,
    ( ~ v2
    | ( {$box} @ (~ v3) )
    | ( {$box} @ (~ v6) )
    | ( {$box}
      @ ({$box} @ (v7)) ) ) ).

tff(persat46,axiom-local,
    ( ~ v3
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v8)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat47,axiom-local,
    ( ~ v3
    | ( {$box} @ (~ v3) )
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat48,axiom-local,
    ( ~ v5
    | ~ v8
    | ( {$box}
      @ ({$box} @ (~ v6)) )
    | ( {$box}
      @ ({$box} @ (~ v8)) ) ) ).

tff(persat49,axiom-local,
    ( ~ v5
    | ( {$box}
      @ ({$box} @ (v3)) )
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat50,axiom-local,
    ( ~ v6
    | ( {$box} @ (v7) )
    | ( {$box}
      @ ({$box} @ (v5)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(deontic1,axiom-local,
    {$dia} @ ($true) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
