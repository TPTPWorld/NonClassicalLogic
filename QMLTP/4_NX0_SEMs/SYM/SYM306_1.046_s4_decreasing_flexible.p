%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM306+1 [QMLTP]
%          : SYM306_1.046_s4_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   1 unt;   8 typ;   0 def)
%            Number of atoms       :  242 (   0 equ)
%            Maximal formula atoms :    7 (  11 avg)
%            Number of connectives :  180 (  40   ~;  60   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  80 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   80 (  80 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   12 (   8 usr;  10 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(v6_decl,type,
    v6: $o ).

tff(v7_decl,type,
    v7: $o ).

tff(v8_decl,type,
    v8: $o ).

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

tff(persat1,axiom-local,
    ( v2
    | v5
    | ( {$box}
      @ ({$box} @ (v8)) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat2,axiom-local,
    ( v2
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat3,axiom-local,
    ( v3
    | ~ v1
    | ~ v2
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat4,axiom-local,
    ( v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat5,axiom-local,
    ( v4
    | ( {$box} @ (v1) )
    | ( {$box}
      @ ({$box} @ (v8)) )
    | ( {$box}
      @ ({$box} @ (~ v6)) ) ) ).

tff(persat6,axiom-local,
    ( v4
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (~ v2)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat7,axiom-local,
    ( v6
    | v7
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat8,axiom-local,
    ( v6
    | ~ v1
    | ( {$box} @ (~ v4) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat9,axiom-local,
    ( v6
    | ~ v8
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat10,axiom-local,
    ( v7
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v6)) ) ) ).

tff(persat11,axiom-local,
    ( v8
    | ~ v6
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(persat12,axiom-local,
    ( v8
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat13,axiom-local,
    ( ~ v1
    | ~ v7
    | ( {$box} @ (v6) )
    | ( {$box}
      @ ({$box} @ (v2)) ) ) ).

tff(persat14,axiom-local,
    ( ~ v1
    | ( {$box} @ (v3) )
    | ( {$box}
      @ ({$box} @ (v6)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat15,axiom-local,
    ( ~ v2
    | ~ v8
    | ( {$box}
      @ ({$box} @ (~ v3)) )
    | ( {$box}
      @ ({$box} @ (~ v5)) ) ) ).

tff(persat16,axiom-local,
    ( ~ v3
    | ~ v6
    | ~ v7
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat17,axiom-local,
    ( ~ v4
    | ~ v6
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (v8)) ) ) ).

tff(persat18,axiom-local,
    ( ~ v4
    | ( {$box} @ (v7) )
    | ( {$box}
      @ ({$box} @ (v5)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat19,axiom-local,
    ( ~ v5
    | ~ v7
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat20,axiom-local,
    ( ~ v5
    | ( {$box} @ (~ v7) )
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (~ v7)) ) ) ).

tff(deontic1,axiom-local,
    {$dia} @ ($true) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
