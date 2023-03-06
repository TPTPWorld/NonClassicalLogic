%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM063+1 [QMLTP]
%          : SYM063_1.009_d_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :   10 (  22 avg)
%            Number of connectives :   13 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   6   !;   0   ?;   6   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(a_decl,type,
    a: $i > $o ).

tff(con,conjecture,
    ( ( ( {$box}
        @ (! [Y: $i] :
             ( ! [X: $i] : ( {$box} @ (a(X)) )
            => ( {$box} @ (a(Y)) ) )) )
     => ! [Y: $i] :
          ( ( {$box}
            @ (! [X: $i] : ( {$box} @ (a(X)) )) )
         => ( {$box} @ (a(Y)) ) ) )
   => ( ! [X: $i] : ( {$box} @ (a(X)) )
     => ( {$box}
        @ (! [X: $i] : a(X)) ) ) ) ).

%------------------------------------------------------------------------------
