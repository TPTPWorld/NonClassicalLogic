%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY398+1 [QMLTP]
%          : GSY398_1.023_s5_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   36 (   0 equ)
%            Maximal formula atoms :    4 (  36 avg)
%            Number of connectives :   21 (   0   ~;   0   |;   5   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  14 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   14 (  14 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   4   !;   0   ?;   4   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(p_decl,type,
    p: $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(kalish215,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( ( {$box} @ (p) )
                & ( {$box} @ (f(X)) ) )) )
        => ( ( {$box} @ (p) )
           & ( {$box}
             @ (! [Y: $i] : ( {$box} @ (f(Y)) )) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box} @ (p) )
           & ( {$box}
             @ (! [Y: $i] : ( {$box} @ (f(Y)) )) ) )
        => ( {$box}
           @ (! [X: $i] :
                ( ( {$box} @ (p) )
                & ( {$box} @ (f(X)) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
