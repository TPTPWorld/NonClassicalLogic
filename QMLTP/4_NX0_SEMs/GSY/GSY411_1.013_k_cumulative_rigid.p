%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY411+1 [QMLTP]
%          : GSY411_1.013_k_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   36 (   0 equ)
%            Maximal formula atoms :    4 (  36 avg)
%            Number of connectives :   23 (   4   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   1   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   12 (;   6   !;   6   ?;  12   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(f_decl,type,
    f: ( $i * $i * $i ) > $o ).

tff(kalish250,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (f(X,Y,Z)) )) )) )) )
        => ( {$box}
           @ (~ ? [U: $i,V: $i,W: $i] :
                  ( {$box}
                  @ (~ ( {$box} @ (f(U,V,W)) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (~ ? [U: $i,V: $i,W: $i] :
                  ( {$box}
                  @ (~ ( {$box} @ (f(U,V,W)) )) )) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (f(X,Y,Z)) )) )) )) ) )) ) ) ).

%------------------------------------------------------------------------------
