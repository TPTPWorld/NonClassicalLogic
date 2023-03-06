%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY413+1 [QMLTP]
%          : GSY413_1.026_t_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   39 (   0 equ)
%            Maximal formula atoms :    2 (  39 avg)
%            Number of connectives :   25 (   3   ~;   0   |;   3   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(f_decl,type,
    f: ( $i * $i ) > $o ).

tff(kalish256,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [Z: $i] :
            ? [Y: $i] :
              ( {$box}
              @ (! [X: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (f(X,Y)) )
                       => ( ( {$box} @ (f(X,Z)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (f(X,X)) )) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (f(X,Z)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (f(X,X)) )) ) )
                       => ( {$box} @ (f(X,Y)) ) )) ) )) )) )
      => ( {$box}
         @ (~ ? [V: $i] :
                ( {$box}
                @ (! [U: $i] : ( {$box} @ (f(U,V)) )) )) ) )) ) ).

%------------------------------------------------------------------------------
