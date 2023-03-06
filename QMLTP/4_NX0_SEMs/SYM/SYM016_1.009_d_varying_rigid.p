%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM016+1 [QMLTP]
%          : SYM016_1.009_d_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   13 (   0 equ)
%            Maximal formula atoms :    6 (  13 avg)
%            Number of connectives :   10 (   2   ~;   2   |;   0   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    1 (;   1   !;   0   ?;   1   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(p_decl,type,
    p: $o ).

tff(a_decl,type,
    a: $i ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ! [X: $i] :
        ( ( {$dia} @ (f(X)) )
        | ( {$dia} @ (~ f(X)) ) )
   => ( {$box}
      @ (( ( {$box} @ (f(a)) )
       <=> ( p
           | ~ p ) )) ) ) ).

%------------------------------------------------------------------------------
