%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM178+1 [QMLTP]
%          : SYM178_1.003_d_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   19 (   0 equ)
%            Maximal formula atoms :    6 (  19 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   7 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    7 (   7 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   1 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(p_decl,type,
    p: $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (( p
             => ( {$box} @ (p) ) )) )
        => ( {$box} @ (p) ) )) )
   => ( ( {$dia}
        @ ({$box} @ (p)) )
     => ( {$box} @ (p) ) ) ) ).

%------------------------------------------------------------------------------
