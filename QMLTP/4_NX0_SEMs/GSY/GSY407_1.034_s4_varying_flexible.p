%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY407+1 [QMLTP]
%          : GSY407_1.034_s4_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   31 (   0 equ)
%            Maximal formula atoms :    2 (  31 avg)
%            Number of connectives :   18 (   0   ~;   2   |;   1   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   2   !;   1   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(h_decl,type,
    h: $i > $o ).

tff(kalish241,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (( ( {$box} @ (f(X)) )
                => ( ( {$box} @ (g(X)) )
                   | ( {$box} @ (h(X)) ) ) )) )) )
      => ( ( {$box}
           @ (! [Y: $i] :
                ( {$box}
                @ (( ( {$box} @ (f(Y)) )
                  => ( {$box} @ (g(Y)) ) )) )) )
         | ? [Z: $i] :
             ( ( {$box} @ (f(Z)) )
             & ( {$box} @ (h(Z)) ) ) ) )) ) ).

%------------------------------------------------------------------------------
