%------------------------------------------------------------------------------
% File     : SYM304_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : PSAT - CNF - K=4 C=20 V=4 D=2.7
% Version  : Especial.
% English  :

% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposi
%          : [HS00]  Hustadt & Schmidt (2000), Issues of Decidability for D
%          : [HS00]  Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by T
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM304+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   26 (   1 unt;   4 typ;   0 def)
%            Number of atoms       :  246 (   0 equ)
%            Maximal formula atoms :    7 (  11 avg)
%            Number of connectives :  174 (  32   ~;  60   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  82 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   82 (  82 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    8 (   4 usr;   6 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_v_f_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $global,
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
    | v4
    | ~ v3
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat2,axiom-local,
    ( v1
    | ( {$box} @ (~ v4) )
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat3,axiom-local,
    ( v2
    | v4
    | ( {$box} @ (v1) )
    | ( {$box}
      @ ({$box} @ (v2)) ) ) ).

tff(persat4,axiom-local,
    ( v2
    | ( {$box} @ (v4) )
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat5,axiom-local,
    ( v3
    | v4
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat6,axiom-local,
    ( v3
    | v4
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat7,axiom-local,
    ( v3
    | ~ v1
    | ( {$box}
      @ ({$box} @ (~ v2)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat8,axiom-local,
    ( v3
    | ~ v2
    | ( {$box} @ (v1) )
    | ( {$box}
      @ ({$box} @ (v2)) ) ) ).

tff(persat9,axiom-local,
    ( v3
    | ~ v2
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) ) ) ).

tff(persat10,axiom-local,
    ( v3
    | ~ v4
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v1)) ) ) ).

tff(persat11,axiom-local,
    ( v3
    | ( {$box} @ (~ v3) )
    | ( {$box} @ (~ v4) )
    | ( {$box}
      @ ({$box} @ (v3)) ) ) ).

tff(persat12,axiom-local,
    ( v3
    | ( {$box}
      @ ({$box} @ (v3)) )
    | ( {$box}
      @ ({$box} @ (~ v2)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat13,axiom-local,
    ( v4
    | ~ v2
    | ( {$box} @ (~ v1) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat14,axiom-local,
    ( v4
    | ( {$box} @ (v2) )
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v1)) ) ) ).

tff(persat15,axiom-local,
    ( v4
    | ( {$box} @ (v4) )
    | ( {$box}
      @ ({$box} @ (v2)) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(persat16,axiom-local,
    ( v4
    | ( {$box} @ (~ v1) )
    | ( {$box} @ (~ v3) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat17,axiom-local,
    ( ~ v1
    | ~ v2
    | ( {$box}
      @ ({$box} @ (~ v1)) )
    | ( {$box}
      @ ({$box} @ (~ v4)) ) ) ).

tff(persat18,axiom-local,
    ( ~ v3
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (v4)) )
    | ( {$box}
      @ ({$box} @ (~ v3)) ) ) ).

tff(persat19,axiom-local,
    ( ~ v3
    | ( {$box} @ (~ v2) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v2)) ) ) ).

tff(persat20,axiom-local,
    ( ~ v4
    | ( {$box} @ (v2) )
    | ( {$box}
      @ ({$box} @ (v1)) )
    | ( {$box}
      @ ({$box} @ (v4)) ) ) ).

tff(deontic1,axiom-local,
    {$dia} @ ($true) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
