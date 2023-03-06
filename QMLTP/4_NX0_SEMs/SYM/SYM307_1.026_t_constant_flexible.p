%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM307+1 [QMLTP]
%          : SYM307_1.026_t_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   36 (   1 unt;   4 typ;   0 def)
%            Number of atoms       :  252 (   0 equ)
%            Maximal formula atoms :    7 (   7 avg)
%            Number of connectives :  230 (  75   ~;  90   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  65 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   65 (  65 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    8 (   4 usr;   6 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(v1_decl,type,
    v1: $o ).

tff(v2_decl,type,
    v2: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(persat1,axiom-local,
    ( v1
    | v2
    | ~ v3
    | ( {$box} @ (v3) ) ) ).

tff(persat2,axiom-local,
    ( v1
    | ~ v3
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat3,axiom-local,
    ( v1
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v2) ) ) ).

tff(persat4,axiom-local,
    ( v2
    | v3
    | ( {$box} @ (~ v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat5,axiom-local,
    ( v2
    | ~ v1
    | ~ v3
    | ( {$box} @ (v4) ) ) ).

tff(persat6,axiom-local,
    ( v2
    | ~ v1
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat7,axiom-local,
    ( v2
    | ~ v1
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat8,axiom-local,
    ( v2
    | ~ v4
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat9,axiom-local,
    ( v3
    | v4
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat10,axiom-local,
    ( v3
    | ~ v1
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v2) ) ) ).

tff(persat11,axiom-local,
    ( v3
    | ~ v1
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat12,axiom-local,
    ( v3
    | ~ v2
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) ) ) ).

tff(persat13,axiom-local,
    ( v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v3) ) ) ).

tff(persat14,axiom-local,
    ( v4
    | ~ v1
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v1) ) ) ).

tff(persat15,axiom-local,
    ( v4
    | ~ v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) ) ) ).

tff(persat16,axiom-local,
    ( v4
    | ~ v3
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat17,axiom-local,
    ( v4
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat18,axiom-local,
    ( ~ v1
    | ~ v2
    | ~ v3
    | ( {$box} @ (~ v1) ) ) ).

tff(persat19,axiom-local,
    ( ~ v1
    | ~ v2
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v2) ) ) ).

tff(persat20,axiom-local,
    ( ~ v1
    | ~ v2
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat21,axiom-local,
    ( ~ v1
    | ~ v4
    | ( {$box} @ (v2) )
    | ( {$box} @ (v3) ) ) ).

tff(persat22,axiom-local,
    ( ~ v1
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v2) ) ) ).

tff(persat23,axiom-local,
    ( ~ v1
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat24,axiom-local,
    ( ~ v2
    | ~ v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) ) ) ).

tff(persat25,axiom-local,
    ( ~ v2
    | ~ v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v3) ) ) ).

tff(persat26,axiom-local,
    ( ~ v2
    | ~ v3
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat27,axiom-local,
    ( ~ v2
    | ~ v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v3) ) ) ).

tff(persat28,axiom-local,
    ( ~ v2
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v3) ) ) ).

tff(persat29,axiom-local,
    ( ~ v2
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v2) ) ) ).

tff(persat30,axiom-local,
    ( ~ v3
    | ~ v4
    | ( {$box} @ (v3) )
    | ( {$box} @ (v4) ) ) ).

tff(deontic1,axiom-local,
    {$dia} @ ($true) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
