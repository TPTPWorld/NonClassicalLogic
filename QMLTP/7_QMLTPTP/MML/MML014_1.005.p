%------------------------------------------------------------------------------
% File     : MML014_1.005 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Schema instantiation example
% Version  : [QMLTP] axioms.
% English  : Alice intends Bob to believe that portland is a big city.

% Refs     : [BS96]  Bretier & Sadek (1996), Rational Agent as the Kernel o
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML014+1 [QMLTP]
%          : MML014_1.005_s5_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   39 (   0 equ)
%            Maximal formula atoms :    2 (   7 avg)
%            Number of connectives :   22 (   3   ~;   0   |;   2   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  15 {}@;  15 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   15 (  15 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    5 (   1 usr;   5 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5 ] ).

tff(portland_decl,type,
    portland: $i ).

tff(bigcity_decl,type,
    bigcity: $i > $o ).

tff(axiom_1_alice,axiom-local,
    ( {$box(#b_alice)}
    @ (( ( bigcity(portland)
         & ( {$box(#b_alice)}
           @ ({$box(#b_bob)} @ (~ bigcity(portland))) ) )
      => ( {$box(#i_alice)}
         @ ({$box(#b_bob)} @ (bigcity(portland))) ) )) ) ).

tff(axiom_1_bob,axiom-local,
    ( {$box(#b_bob)}
    @ (( ( bigcity(portland)
         & ( {$box(#b_bob)}
           @ ({$box(#b_alice)} @ (~ bigcity(portland))) ) )
      => ( {$box(#i_bob)}
         @ ({$box(#b_alice)} @ (bigcity(portland))) ) )) ) ).

tff(axiom_2,axiom-local,
    {$box(#b_alice)} @ (bigcity(portland)) ).

tff(axiom_3,axiom-local,
    ( {$box(#b_alice)}
    @ ({$box(#b_bob)} @ (~ bigcity(portland))) ) ).

tff(con,conjecture,
    ( {$box(#i_alice)}
    @ ({$box(#b_bob)} @ (bigcity(portland))) ) ).

%------------------------------------------------------------------------------
