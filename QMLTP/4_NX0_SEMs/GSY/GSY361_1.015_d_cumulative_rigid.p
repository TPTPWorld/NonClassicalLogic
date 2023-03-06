%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY361+1 [QMLTP]
%          : GSY361_1.015_d_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   36 (   0 equ)
%            Maximal formula atoms :    2 (  36 avg)
%            Number of connectives :   22 (   2   ~;   0   |;   2   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  15 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   15 (  15 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (;   4   !;   3   ?;   7   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(big_s_decl,type,
    big_s: $i > $o ).

tff(big_q_decl,type,
    big_q: ( $i * $i ) > $o ).

tff(big_p_decl,type,
    big_p: ( $i * $i ) > $o ).

tff(x2112,conjecture,
    ( {$box}
    @ (( ( ? [V: $i] :
             ( {$box}
             @ (! [X: $i] : ( {$box} @ (big_p(X,V)) )) )
         & ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_s(X)) )
                  => ? [Y: $i] : ( {$box} @ (big_q(Y,X)) ) )) )) )
         & ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_p(X,Y)) )
                       => ( {$box}
                          @ (~ ( {$box} @ (big_q(X,Y)) )) ) )) )) )) ) )
      => ? [U: $i] :
           ( {$box}
           @ (~ ( {$box} @ (big_s(U)) )) ) )) ) ).

%------------------------------------------------------------------------------
