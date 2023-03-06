%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Planning
% Problem  : Abductive planning: Bomb-in-the-toilet with detector
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Sto98] Stone (1998), Abductive Planning with Sensing
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM004+1 [QMLTP]
%          : APM004_1.033_d_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :    2 (   5 avg)
%            Number of connectives :   12 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   6 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    6 (   6 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (;   3   !;   4   ?;   7   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(h_decl,type,
    h: $i > $o ).

tff(bomb_decl,type,
    bomb: $i > $o ).

tff(defused_decl,type,
    defused: $i > $o ).

tff(ax1,axiom-local,
    ( {$box}
    @ (? [B: $i] : bomb(B)) ) ).

tff(ax2,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (! [X: $i] :
           ( ( bomb(X)
             & h(A) )
          => ( {$box} @ (bomb(X)) ) )) ) ).

tff(ax3,axiom-local,
    ( {$box}
    @ (! [X: $i] :
       ? [D: $i] :
         ( {$box}
         @ (( ( bomb(X)
              & h(D) )
           => defused(X) )) )) ) ).

tff(con,conjecture,
    ( {$box}
    @ (! [X: $i] :
       ? [D: $i] :
         ( ( bomb(X)
           & h(D) )
        => defused(X) )) ) ).

%------------------------------------------------------------------------------
