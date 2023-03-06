%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY377+1 [QMLTP]
%          : GSY377_1.014_t_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   88 (   0 equ)
%            Maximal formula atoms :    4 (  88 avg)
%            Number of connectives :   51 (   0   ~;   0   |;   5   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (  36 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   36 (  36 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   14 (;  10   !;   4   ?;  14   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_M ] ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2128,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (big_p(X)) )
                    => ( {$box}
                       @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) ) )) )
                & ( {$box}
                  @ (( ( {$box}
                       @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) )
                    => ( {$box} @ (big_p(X)) ) )) ) )) )
        => ( ( {$box}
             @ (( ? [X: $i] : ( {$box} @ (big_p(X)) )
               => ( {$box}
                  @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) ) )) )
           & ( {$box}
             @ (( ( {$box}
                  @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) )
               => ? [X: $i] : ( {$box} @ (big_p(X)) ) )) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box}
             @ (( ? [X: $i] : ( {$box} @ (big_p(X)) )
               => ( {$box}
                  @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) ) )) )
           & ( {$box}
             @ (( ( {$box}
                  @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) )
               => ? [X: $i] : ( {$box} @ (big_p(X)) ) )) ) )
        => ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (big_p(X)) )
                    => ( {$box}
                       @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) ) )) )
                & ( {$box}
                  @ (( ( {$box}
                       @ (! [Y: $i] : ( {$box} @ (big_p(Y)) )) )
                    => ( {$box} @ (big_p(X)) ) )) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
