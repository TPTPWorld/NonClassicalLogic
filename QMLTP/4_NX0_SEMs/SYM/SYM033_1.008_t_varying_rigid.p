%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM033+1 [QMLTP]
%          : SYM033_1.008_t_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   13 (   0 equ)
%            Maximal formula atoms :    5 (  13 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   3 usr;   2 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_M ] ).

tff(a_decl,type,
    a: $o ).

tff(b_decl,type,
    b: $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( a
      & ( {$box}
        @ (! [X: $i] :
             ( {$box}
             @ (( a
               => f(X) )) )) ) )
   => ( {$box}
      @ (! [X: $i] :
           ( {$dia}
           @ (( b
              & f(X) )) )) ) ) ).

%------------------------------------------------------------------------------
