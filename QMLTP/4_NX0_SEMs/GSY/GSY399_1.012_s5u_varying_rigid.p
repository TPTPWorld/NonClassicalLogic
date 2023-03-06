%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY399+1 [QMLTP]
%          : GSY399_1.012_s5u_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   40 (   0 equ)
%            Maximal formula atoms :    2 (  40 avg)
%            Number of connectives :   23 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S5U ] ).

tff(p_decl,type,
    p: $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(kalish223,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (f(X)) )
                  => ( {$box} @ (p) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (p) )
                  => ( {$box} @ (f(X)) ) )) ) )) )
      => ( ( {$box}
           @ (( ( {$box}
                @ (! [Y: $i] : ( {$box} @ (f(Y)) )) )
             => ( {$box} @ (p) ) )) )
         & ( {$box}
           @ (( ( {$box} @ (p) )
             => ( {$box}
                @ (! [Y: $i] : ( {$box} @ (f(Y)) )) ) )) ) ) )) ) ).

%------------------------------------------------------------------------------
