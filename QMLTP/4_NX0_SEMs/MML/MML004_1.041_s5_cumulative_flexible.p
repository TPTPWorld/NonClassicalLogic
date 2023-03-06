%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : Yale shooting problem
% Version  : [QMLTP] axioms : Reduced.
% English  : After any sequence of actions ("always") ended by "load" the
%            gun is loaded. After any sequence of actions, if the gun is
%            loaded then after a shoot the turkey is not alive. Then, after
%            the actions load and shoot the turkey is not alive.

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML004+1 [QMLTP]
%          : MML004_1.041_s5_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   13 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   64 (   0 equ)
%            Maximal formula atoms :    4 (   5 avg)
%            Number of connectives :   41 (  10   ~;   0   |;   0   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (  22 {}@;  22 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   22 (  22 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   2 prp; 0-1 aty)
%            Number of functors    :    3 (   0 usr;   3 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S5 ] ).

tff(alive_decl,type,
    alive: $o ).

tff(loaded_decl,type,
    loaded: $o ).

tff(i_always_load_1,axiom-local,
    ( ( {$box(#always)} @ (loaded) )
   => ( {$box(#load)} @ (loaded) ) ) ).

tff(i_always_load_2,axiom-local,
    ( ( {$box(#always)} @ (~ loaded) )
   => ( {$box(#load)} @ (~ loaded) ) ) ).

tff(i_always_alive_1,axiom-local,
    ( ( {$box(#always)} @ (alive) )
   => ( {$box(#load)} @ (alive) ) ) ).

tff(i_always_alive_2,axiom-local,
    ( ( {$box(#always)} @ (~ alive) )
   => ( {$box(#load)} @ (~ alive) ) ) ).

tff(i_always_load_1_0,axiom-local,
    ( ( {$box(#always)} @ (loaded) )
   => ( {$box(#shoot)} @ (loaded) ) ) ).

tff(i_always_load_2_0,axiom-local,
    ( ( {$box(#always)} @ (~ loaded) )
   => ( {$box(#shoot)} @ (~ loaded) ) ) ).

tff(i_always_alive_1_0,axiom-local,
    ( ( {$box(#always)} @ (alive) )
   => ( {$box(#shoot)} @ (alive) ) ) ).

tff(i_always_alive_2_0,axiom-local,
    ( ( {$box(#always)} @ (~ alive) )
   => ( {$box(#shoot)} @ (~ alive) ) ) ).

tff(axiom_1,axiom-local,
    ( {$box(#always)}
    @ ({$box(#load)} @ (loaded)) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#always)}
    @ (( loaded
      => ( {$box(#shoot)} @ (~ alive) ) )) ) ).

tff(conj,conjecture,
    ( {$box(#load)}
    @ ({$box(#shoot)} @ (~ alive)) ) ).

%------------------------------------------------------------------------------
