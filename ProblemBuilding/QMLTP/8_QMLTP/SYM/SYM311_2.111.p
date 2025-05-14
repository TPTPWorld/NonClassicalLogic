%------------------------------------------------------------------------------
% File     : SYM311_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : PSAT - CNF - K=4 C=30 V=8 D=1.4
% Version  : Especial.
% English  :

% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposi
%          : [HS00]  Hustadt & Schmidt (2000), Issues of Decidability for D
%          : [HS00]  Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by T
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM311+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   40 (   1 unt;   8 typ;   0 def)
%            Number of atoms       :  256 (   0 equ)
%            Maximal formula atoms :    7 (   8 avg)
%            Number of connectives :  223 (  66   ~;  90   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  67 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   67 (  67 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   12 (   8 usr;  10 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_c_r_l,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_D ] ).

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
    | v7
    | ~ v5
    | ( {$box} @ (~ v2) ) ) ).

tff(persat2,axiom-local,
    ( v1
    | v8
    | ~ v4
    | ( {$box} @ (~ v2) ) ) ).

tff(persat3,axiom-local,
    ( v1
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat4,axiom-local,
    ( v2
    | ~ v4
    | ~ v7
    | ( {$box} @ (~ v2) ) ) ).

tff(persat5,axiom-local,
    ( v2
    | ~ v8
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v8) ) ) ).

tff(persat6,axiom-local,
    ( v3
    | ~ v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat7,axiom-local,
    ( v3
    | ~ v4
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v5) ) ) ).

tff(persat8,axiom-local,
    ( v4
    | v6
    | ( {$box} @ (v1) )
    | ( {$box} @ (v4) ) ) ).

tff(persat9,axiom-local,
    ( v4
    | v8
    | ( {$box} @ (~ v3) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat10,axiom-local,
    ( v4
    | ~ v5
    | ( {$box} @ (~ v6) )
    | ( {$box} @ (~ v8) ) ) ).

tff(persat11,axiom-local,
    ( v4
    | ~ v6
    | ~ v8
    | ( {$box} @ (v5) ) ) ).

tff(persat12,axiom-local,
    ( v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v4) ) ) ).

tff(persat13,axiom-local,
    ( v4
    | ( {$box} @ (v6) )
    | ( {$box} @ (v7) )
    | ( {$box} @ (~ v8) ) ) ).

tff(persat14,axiom-local,
    ( v5
    | ~ v6
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v8) ) ) ).

tff(persat15,axiom-local,
    ( v6
    | v7
    | ~ v3
    | ( {$box} @ (~ v6) ) ) ).

tff(persat16,axiom-local,
    ( v6
    | ~ v4
    | ( {$box} @ (~ v4) )
    | ( {$box} @ (~ v6) ) ) ).

tff(persat17,axiom-local,
    ( v6
    | ~ v7
    | ( {$box} @ (v4) )
    | ( {$box} @ (v6) ) ) ).

tff(persat18,axiom-local,
    ( v7
    | v8
    | ~ v3
    | ( {$box} @ (~ v5) ) ) ).

tff(persat19,axiom-local,
    ( ~ v1
    | ~ v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (v8) ) ) ).

tff(persat20,axiom-local,
    ( ~ v1
    | ~ v5
    | ( {$box} @ (v5) )
    | ( {$box} @ (~ v5) ) ) ).

tff(persat21,axiom-local,
    ( ~ v1
    | ( {$box} @ (v2) )
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v7) ) ) ).

tff(persat22,axiom-local,
    ( ~ v2
    | ~ v6
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v6) ) ) ).

tff(persat23,axiom-local,
    ( ~ v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v5) ) ) ).

tff(persat24,axiom-local,
    ( ~ v3
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v2) )
    | ( {$box} @ (~ v3) ) ) ).

tff(persat25,axiom-local,
    ( ~ v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (v3) )
    | ( {$box} @ (~ v7) ) ) ).

tff(persat26,axiom-local,
    ( ~ v4
    | ( {$box} @ (v1) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v5) ) ) ).

tff(persat27,axiom-local,
    ( ~ v5
    | ( {$box} @ (v5) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v5) ) ) ).

tff(persat28,axiom-local,
    ( ~ v7
    | ( {$box} @ (v3) )
    | ( {$box} @ (v4) )
    | ( {$box} @ (v8) ) ) ).

tff(persat29,axiom-local,
    ( ~ v8
    | ( {$box} @ (v2) )
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v8) ) ) ).

tff(persat30,axiom-local,
    ( ~ v8
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v7) ) ) ).

tff(deontic1,axiom-local,
    {$dia} @ ($true) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
