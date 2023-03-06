%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY400+1 [QMLTP]
%          : GSY400_1.008_t_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   20 (   0 equ)
%            Maximal formula atoms :    4 (  20 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_M ] ).

tff(p_decl,type,
    p: $o ).

tff(kalish227,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] : ( {$box} @ (p) )) )
        => ( {$box} @ (p) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (p) )
        => ( {$box}
           @ (! [X: $i] : ( {$box} @ (p) )) ) )) ) ) ).

%------------------------------------------------------------------------------
