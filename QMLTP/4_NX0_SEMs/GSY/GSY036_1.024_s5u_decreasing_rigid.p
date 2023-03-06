%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Andrews Challenge Problem
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN036+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY036+1 [QMLTP]
%          : GSY036_1.024_s5u_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :  324 (   0 equ)
%            Maximal formula atoms :    4 ( 324 avg)
%            Number of connectives :  193 (   0   ~;   0   |;  21   &)
%                                         (   0 <=>;  42  =>;   0  <=;   0 <~>)
%                                         ( 130 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :  130 ( 130 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   48 (;  24   !;  24   ?;  48   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5U ] ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(pel34,conjecture,
    ( ( {$box}
      @ (( ( ( {$box}
             @ (( ? [X: $i] :
                    ( {$box}
                    @ (! [Y: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_p(X)) )
                             => ( {$box} @ (big_p(Y)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_p(Y)) )
                             => ( {$box} @ (big_p(X)) ) )) ) )) )
               => ( ( {$box}
                    @ (( ? [U: $i] : ( {$box} @ (big_q(U)) )
                      => ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) )
                      => ? [U: $i] : ( {$box} @ (big_q(U)) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ? [U: $i] : ( {$box} @ (big_q(U)) )
                      => ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) )
                      => ? [U: $i] : ( {$box} @ (big_q(U)) ) )) ) )
               => ? [X: $i] :
                    ( {$box}
                    @ (! [Y: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_p(X)) )
                             => ( {$box} @ (big_p(Y)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_p(Y)) )
                             => ( {$box} @ (big_p(X)) ) )) ) )) ) )) ) )
        => ( ( {$box}
             @ (( ? [X1: $i] :
                    ( {$box}
                    @ (! [Y1: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_q(X1)) )
                             => ( {$box} @ (big_q(Y1)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_q(Y1)) )
                             => ( {$box} @ (big_q(X1)) ) )) ) )) )
               => ( ( {$box}
                    @ (( ? [U1: $i] : ( {$box} @ (big_p(U1)) )
                      => ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) )
                      => ? [U1: $i] : ( {$box} @ (big_p(U1)) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ? [U1: $i] : ( {$box} @ (big_p(U1)) )
                      => ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) )
                      => ? [U1: $i] : ( {$box} @ (big_p(U1)) ) )) ) )
               => ? [X1: $i] :
                    ( {$box}
                    @ (! [Y1: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_q(X1)) )
                             => ( {$box} @ (big_q(Y1)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_q(Y1)) )
                             => ( {$box} @ (big_q(X1)) ) )) ) )) ) )) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box}
             @ (( ? [X1: $i] :
                    ( {$box}
                    @ (! [Y1: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_q(X1)) )
                             => ( {$box} @ (big_q(Y1)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_q(Y1)) )
                             => ( {$box} @ (big_q(X1)) ) )) ) )) )
               => ( ( {$box}
                    @ (( ? [U1: $i] : ( {$box} @ (big_p(U1)) )
                      => ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) )
                      => ? [U1: $i] : ( {$box} @ (big_p(U1)) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ? [U1: $i] : ( {$box} @ (big_p(U1)) )
                      => ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W1: $i] : ( {$box} @ (big_p(W1)) )) )
                      => ? [U1: $i] : ( {$box} @ (big_p(U1)) ) )) ) )
               => ? [X1: $i] :
                    ( {$box}
                    @ (! [Y1: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_q(X1)) )
                             => ( {$box} @ (big_q(Y1)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_q(Y1)) )
                             => ( {$box} @ (big_q(X1)) ) )) ) )) ) )) ) )
        => ( ( {$box}
             @ (( ? [X: $i] :
                    ( {$box}
                    @ (! [Y: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_p(X)) )
                             => ( {$box} @ (big_p(Y)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_p(Y)) )
                             => ( {$box} @ (big_p(X)) ) )) ) )) )
               => ( ( {$box}
                    @ (( ? [U: $i] : ( {$box} @ (big_q(U)) )
                      => ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) )
                      => ? [U: $i] : ( {$box} @ (big_q(U)) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ? [U: $i] : ( {$box} @ (big_q(U)) )
                      => ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) ) )) )
                  & ( {$box}
                    @ (( ( {$box}
                         @ (! [W: $i] : ( {$box} @ (big_q(W)) )) )
                      => ? [U: $i] : ( {$box} @ (big_q(U)) ) )) ) )
               => ? [X: $i] :
                    ( {$box}
                    @ (! [Y: $i] :
                         ( ( {$box}
                           @ (( ( {$box} @ (big_p(X)) )
                             => ( {$box} @ (big_p(Y)) ) )) )
                         & ( {$box}
                           @ (( ( {$box} @ (big_p(Y)) )
                             => ( {$box} @ (big_p(X)) ) )) ) )) ) )) ) ) )) ) ) ).

%------------------------------------------------------------------------------
