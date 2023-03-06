%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY393+1 [QMLTP]
%          : GSY393_1.003.009_d_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :  172 (   0 equ)
%            Maximal formula atoms :    4 ( 172 avg)
%            Number of connectives :  105 (   0   ~;   0   |;  13   &)
%                                         (   0 <=>;  26  =>;   0  <=;   0 <~>)
%                                         (  66 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   66 (  66 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(p1_decl,type,
    p1: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(p3_decl,type,
    p3: $o ).

tff(pel12,conjecture,
    ( ( {$box}
      @ (( ( ( {$box}
             @ (( ( ( {$box}
                    @ (( ( {$box} @ (p1) )
                      => ( {$box} @ (p2) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p1) ) )) ) )
               => ( {$box} @ (p3) ) )) )
           & ( {$box}
             @ (( ( {$box} @ (p3) )
               => ( ( {$box}
                    @ (( ( {$box} @ (p1) )
                      => ( {$box} @ (p2) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p1) ) )) ) ) )) ) )
        => ( ( {$box}
             @ (( ( {$box} @ (p1) )
               => ( ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p3) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p3) )
                      => ( {$box} @ (p2) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p3) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p3) )
                      => ( {$box} @ (p2) ) )) ) )
               => ( {$box} @ (p1) ) )) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box}
             @ (( ( {$box} @ (p1) )
               => ( ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p3) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p3) )
                      => ( {$box} @ (p2) ) )) ) ) )) )
           & ( {$box}
             @ (( ( ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p3) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p3) )
                      => ( {$box} @ (p2) ) )) ) )
               => ( {$box} @ (p1) ) )) ) )
        => ( ( {$box}
             @ (( ( ( {$box}
                    @ (( ( {$box} @ (p1) )
                      => ( {$box} @ (p2) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p1) ) )) ) )
               => ( {$box} @ (p3) ) )) )
           & ( {$box}
             @ (( ( {$box} @ (p3) )
               => ( ( {$box}
                    @ (( ( {$box} @ (p1) )
                      => ( {$box} @ (p2) ) )) )
                  & ( {$box}
                    @ (( ( {$box} @ (p2) )
                      => ( {$box} @ (p1) ) )) ) ) )) ) ) )) ) ) ).

%------------------------------------------------------------------------------
