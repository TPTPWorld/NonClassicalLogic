%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY356+1 [QMLTP]
%          : GSY356_1.045_d_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   38 (   0 equ)
%            Maximal formula atoms :    2 (  38 avg)
%            Number of connectives :   22 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  15 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   15 (  15 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :    4 (;   4   !;   0   ?;   4   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_D ] ).

tff(a_decl,type,
    a: $i ).

tff(b_decl,type,
    b: $i ).

tff(big_q_decl,type,
    big_q: ( $i * $i ) > $o ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(x2107,conjecture,
    ( {$box}
    @ (( ( ( {$box} @ (big_r(a,b)) )
         & ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_r(X,Y)) )
                       => ( ( {$box} @ (big_r(Y,X)) )
                          & ( {$box} @ (big_q(X,Y)) ) ) )) )) )) )
         & ( {$box}
           @ (! [U: $i] :
                ( {$box}
                @ (! [V: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_q(U,V)) )
                       => ( {$box} @ (big_q(U,U)) ) )) )) )) ) )
      => ( ( {$box} @ (big_q(a,a)) )
         & ( {$box} @ (big_q(b,b)) ) ) )) ) ).

%------------------------------------------------------------------------------
