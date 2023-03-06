%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE043+1 [QMLTP]
%          : GSE043_1.010_s4_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    2 (  24 avg)
%            Number of connectives :   16 (   3   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   1   !;   1   ?;   2   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel39,conjecture,
    ( {$box}
    @ (~ ? [X: $i] :
           ( {$box}
           @ (! [Y: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (element(Y,X)) )
                    => ( {$box}
                       @ (~ ( {$box} @ (element(Y,Y)) )) ) )) )
                & ( {$box}
                  @ (( ( {$box}
                       @ (~ ( {$box} @ (element(Y,Y)) )) )
                    => ( {$box} @ (element(Y,X)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
