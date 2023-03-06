%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM019+1 [QMLTP]
%          : SYM019_1.022_s4_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    9 (  12 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(h_decl,type,
    h: $i > $o ).

tff(con,conjecture,
    ( ( ! [X: $i] :
          ( f(X)
         => ( {$box} @ (g(X)) ) )
      & ! [X: $i] :
          ( g(X)
         => ( {$box} @ (h(X)) ) ) )
   => ! [X: $i] :
        ( f(X)
       => ( {$box} @ (h(X)) ) ) ) ).

%------------------------------------------------------------------------------
