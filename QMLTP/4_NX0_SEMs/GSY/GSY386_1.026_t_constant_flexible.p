%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY386+1 [QMLTP]
%          : GSY386_1.026_t_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   64 (   0 equ)
%            Maximal formula atoms :    2 (  64 avg)
%            Number of connectives :   36 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  27 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   27 (  27 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   3   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   17 (;  11   !;   6   ?;  17   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(big_f_decl,type,
    big_f: ( $i * $i ) > $o ).

tff(big_s_decl,type,
    big_s: ( $i * $i ) > $o ).

tff(big_d_decl,type,
    big_d: ( $i * $i * $i ) > $o ).

tff(x2138,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] :
              ? [Y: $i] : ( {$box} @ (big_f(X,Y)) )) )
         & ? [X: $i] :
             ( {$box}
             @ (! [E: $i] :
                ? [N: $i] :
                  ( {$box}
                  @ (! [W: $i] :
                       ( {$box}
                       @ (( ( {$box} @ (big_s(N,W)) )
                         => ( {$box} @ (big_d(W,X,E)) ) )) )) )) )
         & ( {$box}
           @ (! [E: $i] :
              ? [D: $i] :
                ( {$box}
                @ (! [A: $i] :
                     ( {$box}
                     @ (! [B: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (big_d(A,B,D)) )
                            => ( {$box}
                               @ (! [Y: $i] :
                                    ( {$box}
                                    @ (! [Z: $i] :
                                         ( {$box}
                                         @ (( ( ( {$box} @ (big_f(A,Y)) )
                                              & ( {$box} @ (big_f(B,Z)) ) )
                                           => ( {$box} @ (big_d(Y,Z,E)) ) )) )) )) ) )) )) )) )) ) )
      => ? [Y: $i] :
           ( {$box}
           @ (! [E: $i] :
              ? [M: $i] :
                ( {$box}
                @ (! [W: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_s(M,W)) )
                       => ( {$box}
                          @ (! [Z: $i] :
                               ( {$box}
                               @ (( ( {$box} @ (big_f(W,Z)) )
                                 => ( {$box} @ (big_d(Z,Y,E)) ) )) )) ) )) )) )) ) )) ) ).

%------------------------------------------------------------------------------
