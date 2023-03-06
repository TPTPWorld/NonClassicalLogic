%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY375+1 [QMLTP]
%          : GSY375_1.012_s5u_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   80 (   0 equ)
%            Maximal formula atoms :    4 (  80 avg)
%            Number of connectives :   47 (   0   ~;   0   |;   5   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (  32 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   32 (  32 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   14 (;   6   !;   8   ?;  14   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S5U ] ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2126,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (big_p(X)) )
                    => ? [Y: $i] : ( {$box} @ (big_p(Y)) ) )) )
                & ( {$box}
                  @ (( ? [Y: $i] : ( {$box} @ (big_p(Y)) )
                    => ( {$box} @ (big_p(X)) ) )) ) )) )
        => ( ( {$box}
             @ (( ( {$box}
                  @ (! [X: $i] : ( {$box} @ (big_p(X)) )) )
               => ? [Y: $i] : ( {$box} @ (big_p(Y)) ) )) )
           & ( {$box}
             @ (( ? [Y: $i] : ( {$box} @ (big_p(Y)) )
               => ( {$box}
                  @ (! [X: $i] : ( {$box} @ (big_p(X)) )) ) )) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box}
             @ (( ( {$box}
                  @ (! [X: $i] : ( {$box} @ (big_p(X)) )) )
               => ? [Y: $i] : ( {$box} @ (big_p(Y)) ) )) )
           & ( {$box}
             @ (( ? [Y: $i] : ( {$box} @ (big_p(Y)) )
               => ( {$box}
                  @ (! [X: $i] : ( {$box} @ (big_p(X)) )) ) )) ) )
        => ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (big_p(X)) )
                    => ? [Y: $i] : ( {$box} @ (big_p(Y)) ) )) )
                & ( {$box}
                  @ (( ? [Y: $i] : ( {$box} @ (big_p(Y)) )
                    => ( {$box} @ (big_p(X)) ) )) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
