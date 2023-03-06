%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE045+1 [QMLTP]
%          : GSE045_1.014_t_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   37 (   0 equ)
%            Maximal formula atoms :    2 (  18 avg)
%            Number of connectives :   23 (   3   ~;   0   |;   3   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  15 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   15 (  15 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_M ] ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel41_1,axiom-local,
    ( {$box}
    @ (! [Z: $i] :
       ? [Y: $i] :
         ( {$box}
         @ (! [X: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (element(X,Y)) )
                  => ( ( {$box} @ (element(X,Z)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (element(X,X)) )) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (element(X,Z)) )
                     & ( {$box}
                       @ (~ ( {$box} @ (element(X,X)) )) ) )
                  => ( {$box} @ (element(X,Y)) ) )) ) )) )) ) ).

tff(pel41,conjecture,
    ( {$box}
    @ (~ ? [Z: $i] :
           ( {$box}
           @ (! [X: $i] : ( {$box} @ (element(X,Z)) )) )) ) ).

%------------------------------------------------------------------------------
