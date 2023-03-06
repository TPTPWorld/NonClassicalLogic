%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY415+1 [QMLTP]
%          : GSY415_1.046_s4_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :  115 (   0 equ)
%            Maximal formula atoms :    4 (  23 avg)
%            Number of connectives :   64 (   0   ~;   0   |;   9   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (  46 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   46 (  46 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   18 (;  14   !;   4   ?;  18   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(reflexivity,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(X,X)) )) ) ).

tff(symmetry,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(X,Y)) )
                => ( {$box} @ (qmltpeq(Y,X)) ) )) )) )) ) ).

tff(transitivity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(X,Y)) )
                        & ( {$box} @ (qmltpeq(Y,Z)) ) )
                     => ( {$box} @ (qmltpeq(X,Z)) ) )) )) )) )) ) ).

tff(f_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (f(A)) ) )
                => ( {$box} @ (f(B)) ) )) )) )) ) ).

tff(kalish317,conjecture,
    ( ( {$box}
      @ (( ( ? [X: $i] : ( {$box} @ (f(X)) )
           & ( {$box}
             @ (! [Y: $i] :
                  ( {$box}
                  @ (! [Z: $i] :
                       ( {$box}
                       @ (( ( ( {$box} @ (f(Y)) )
                            & ( {$box} @ (f(Z)) ) )
                         => ( {$box} @ (qmltpeq(Y,Z)) ) )) )) )) ) )
        => ? [U: $i] :
             ( ( {$box} @ (f(U)) )
             & ( {$box}
               @ (! [V: $i] :
                    ( {$box}
                    @ (( ( {$box} @ (f(V)) )
                      => ( {$box} @ (qmltpeq(U,V)) ) )) )) ) ) )) )
    & ( {$box}
      @ (( ? [U: $i] :
             ( ( {$box} @ (f(U)) )
             & ( {$box}
               @ (! [V: $i] :
                    ( {$box}
                    @ (( ( {$box} @ (f(V)) )
                      => ( {$box} @ (qmltpeq(U,V)) ) )) )) ) )
        => ( ? [X: $i] : ( {$box} @ (f(X)) )
           & ( {$box}
             @ (! [Y: $i] :
                  ( {$box}
                  @ (! [Z: $i] :
                       ( {$box}
                       @ (( ( ( {$box} @ (f(Y)) )
                            & ( {$box} @ (f(Z)) ) )
                         => ( {$box} @ (qmltpeq(Y,Z)) ) )) )) )) ) ) )) ) ) ).

%------------------------------------------------------------------------------
