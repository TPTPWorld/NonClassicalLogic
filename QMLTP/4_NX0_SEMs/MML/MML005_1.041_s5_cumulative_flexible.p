%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : The fox and the raven
% Version  : [QMLTP] axioms.
% English  : The fox believes that if he praises the raven, then the raven is
%            charmed, and the fox believes that in any moment, if the raven
%            is charmed then it is possible that the raven sings and so it
%            drops cheese. Then the fox believes that after praising the 
%            raven may sing and so it drops the cheese.

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML005+1 [QMLTP]
%          : MML005_1.041_s5_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   15 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   84 (   0 equ)
%            Maximal formula atoms :    4 (   7 avg)
%            Number of connectives :   49 (   8   ~;   0   |;   0   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (  32 {}@;  32 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   32 (  32 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    6 (   2 usr;   6 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S5 ] ).

tff(raven_decl,type,
    raven: $i ).

tff(cheese_decl,type,
    cheese: $i ).

tff(dropped_decl,type,
    dropped: $i > $o ).

tff(charmed_decl,type,
    charmed: $i > $o ).

tff(i_always_praise_1_1,axiom-local,
    ( ( {$box(#always)} @ (dropped(cheese)) )
   => ( {$box(#praise)}
      @ ({$box(#always)} @ (dropped(cheese))) ) ) ).

tff(i_always_praise_2_2,axiom-local,
    ( ( {$box(#always)} @ (~ dropped(cheese)) )
   => ( {$box(#praise)}
      @ ({$box(#always)} @ (~ dropped(cheese))) ) ) ).

tff(i_always_praise_1_3,axiom-local,
    ( ( {$box(#always)} @ (charmed(raven)) )
   => ( {$box(#praise)}
      @ ({$box(#always)} @ (charmed(raven))) ) ) ).

tff(i_always_praise_2_4,axiom-local,
    ( ( {$box(#always)} @ (~ charmed(cheese)) )
   => ( {$box(#praise)}
      @ ({$box(#always)} @ (~ charmed(raven))) ) ) ).

tff(i_always_praise_1_5,axiom-local,
    ( ( {$box(#always)} @ (dropped(cheese)) )
   => ( {$box(#sing)}
      @ ({$box(#always)} @ (dropped(cheese))) ) ) ).

tff(i_always_praise_2_6,axiom-local,
    ( ( {$box(#always)} @ (~ dropped(cheese)) )
   => ( {$box(#sing)}
      @ ({$box(#always)} @ (~ dropped(cheese))) ) ) ).

tff(i_always_praise_1_7,axiom-local,
    ( ( {$box(#always)} @ (charmed(raven)) )
   => ( {$box(#sing)}
      @ ({$box(#always)} @ (charmed(raven))) ) ) ).

tff(i_always_praise_2_8,axiom-local,
    ( ( {$box(#always)} @ (~ charmed(cheese)) )
   => ( {$box(#sing)}
      @ ({$box(#always)} @ (~ charmed(raven))) ) ) ).

tff(axiom_1,axiom-local,
    ( {$box(#fox)}
    @ ({$box(#praise)} @ (charmed(raven))) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#fox)}
    @ (( {$box(#always)}
       @ (( charmed(raven)
         => ( {$box(#sing)} @ (dropped(cheese)) ) )) )) ) ).

tff(conj,conjecture,
    ( {$box(#fox)}
    @ (( {$box(#praise)}
       @ ({$box(#sing)} @ (dropped(cheese))) )) ) ).

%------------------------------------------------------------------------------
