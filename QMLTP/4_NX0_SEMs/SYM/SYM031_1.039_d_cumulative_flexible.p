%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM031+1 [QMLTP]
%          : SYM031_1.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    6 (  12 avg)
%            Number of connectives :    7 (   0   ~;   2   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   0   !;   2   ?;   2   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (? [X: $i] :
           ( {$dia}
           @ (( f(X)
              | g(X) )) )) )
   => ? [X: $i] :
        ( ( {$dia} @ (f(X)) )
        | ( {$dia} @ (g(X)) ) ) ) ).

%------------------------------------------------------------------------------
