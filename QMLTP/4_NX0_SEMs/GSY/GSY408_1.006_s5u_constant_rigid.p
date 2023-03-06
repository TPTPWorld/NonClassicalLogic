%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY408+1 [QMLTP]
%          : GSY408_1.006_s5u_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   17 (   0 equ)
%            Maximal formula atoms :    2 (  17 avg)
%            Number of connectives :   10 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   7 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    7 (   7 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   1   !;   1   ?;   2   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5U ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(kalish244,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (~ ? [X: $i] : ( {$box} @ (f(X)) )) )
      => ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (f(Y)) )
                => ( {$box} @ (g(Y)) ) )) )) ) )) ) ).

%------------------------------------------------------------------------------
