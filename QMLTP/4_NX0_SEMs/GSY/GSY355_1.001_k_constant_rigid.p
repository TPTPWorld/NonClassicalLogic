%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY355+1 [QMLTP]
%          : GSY355_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   32 (   0 equ)
%            Maximal formula atoms :    2 (  32 avg)
%            Number of connectives :   19 (   1   ~;   1   |;   1   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  13 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   13 (  13 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_r_decl,type,
    big_r: $i > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2106,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_r(X)) )
                  => ( {$box} @ (big_p(X)) ) )) )) )
         & ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ( {$box}
                     @ (~ ( {$box} @ (big_q(X)) )) )
                  => ( {$box} @ (big_r(X)) ) )) )) ) )
      => ( {$box}
         @ (! [X: $i] :
              ( ( {$box} @ (big_p(X)) )
              | ( {$box} @ (big_q(X)) ) )) ) )) ) ).

%------------------------------------------------------------------------------
