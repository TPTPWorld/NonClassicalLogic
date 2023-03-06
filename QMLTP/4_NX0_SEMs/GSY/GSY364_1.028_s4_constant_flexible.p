%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY364+1 [QMLTP]
%          : GSY364_1.028_s4_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    6 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   45 (   0 equ)
%            Maximal formula atoms :    2 (  45 avg)
%            Number of connectives :   27 (   1   ~;   1   |;   4   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  18 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :   18 (  18 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   5   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :    8 (;   5   !;   3   ?;   8   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_S4 ] ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_p_decl,type,
    big_p: ( $i * $i ) > $o ).

tff(big_m_decl,type,
    big_m: $i > $o ).

tff(f_decl,type,
    f: ( $i * $i ) > $i ).

tff(g_decl,type,
    g: $i > $i ).

tff(x2115,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ? [Y: $i] : ( {$box} @ (big_p(X,Y)) )
                  => ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (big_p(Z,Z)) )) ) )) )) )
         & ( {$box}
           @ (! [U: $i] :
              ? [V: $i] :
                ( ( {$box} @ (big_p(U,V)) )
                | ( ( {$box} @ (big_m(U)) )
                  & ( {$box} @ (big_q(f(U,V))) ) ) )) )
         & ( {$box}
           @ (! [W: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_q(W)) )
                  => ( {$box}
                     @ (~ ( {$box} @ (big_m(g(W))) )) ) )) )) ) )
      => ( {$box}
         @ (! [U: $i] :
            ? [V: $i] :
              ( ( {$box} @ (big_p(g(U),V)) )
              & ( {$box} @ (big_p(U,U)) ) )) ) )) ) ).

%------------------------------------------------------------------------------
