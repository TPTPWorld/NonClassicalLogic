%------------------------------------------------------------------------------
% File     : MML015_1.006 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Schema instantiation example
% Version  : [QMLTP] axioms.
% English  : Alice intends Bob to believe that Portland is a big city.

% Refs     : [BS96]  Bretier & Sadek (1996), Rational Agent as the Kernel o
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML015+1 [QMLTP]
%          : MML015_1.006_s5u_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   52 (   0 equ)
%            Maximal formula atoms :    4 (   8 avg)
%            Number of connectives :   33 (   6   ~;   1   |;   1   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  19 {}@;  19 {#};   0 {.})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   19 (  19 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    6 (   1 usr;   6 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5U ] ).

tff(portland_decl,type,
    portland: $i ).

tff(bigcity_decl,type,
    bigcity: $i > $o ).

tff(beautycity_decl,type,
    beautycity: $i > $o ).

tff(axiom_1_a,axiom-local,
    ( ( {$box(#b_alice)} @ (bigcity(portland)) )
   => ~ ( {$box(#i_alice)} @ (bigcity(portland)) ) ) ).

tff(axiom_1_b,axiom-local,
    ( ( {$box(#b_bob)} @ (bigcity(portland)) )
   => ~ ( {$box(#i_bob)} @ (bigcity(portland)) ) ) ).

tff(axiom_1_c,axiom-local,
    ( ( {$box(#b_alice)} @ (beautycity(portland)) )
   => ~ ( {$box(#i_alice)} @ (beautycity(portland)) ) ) ).

tff(axiom_1_d,axiom-local,
    ( ( {$box(#b_bob)} @ (beautycity(portland)) )
   => ~ ( {$box(#i_bob)} @ (beautycity(portland)) ) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#b_alice)}
    @ (( ( {$box(#b_bob)}
         @ ({$box(#b_alice)} @ (bigcity(portland))) )
       | ( {$box(#b_bob)}
         @ ({$box(#b_alice)} @ (beautycity(portland))) ) )) ) ).

tff(con,conjecture,
    ( {$box(#b_alice)}
    @ (( ( {$box(#b_bob)}
         @ (( ( {$box(#alice)} @ (bigcity(portland)) )
           => ~ ( {$box(#i_alice)} @ (bigcity(portland)) ) )) )
       & ( ( {$box(#alice)} @ (beautycity(portland)) )
        => ~ ( {$box(#i_alice)} @ (beautycity(portland)) ) ) )) ) ).

%------------------------------------------------------------------------------
