%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic Calculi
% Problem  : Peter Andrews Problem THM147
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP LCL414+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GLC414+1 [QMLTP]
%          : GLC414_1.027_d_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   47 (   0 equ)
%            Maximal formula atoms :    2 (  47 avg)
%            Number of connectives :   30 (   4   ~;   2   |;   4   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  20 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of FOOLs       :   20 (  20 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   3   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-2 aty)
%            Number of variables   :   10 (;   9   !;   1   ?;  10   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(a_truth_decl,type,
    a_truth: $i > $o ).

tff(not_decl,type,
    not: $i > $i ).

tff(implies_decl,type,
    implies: ( $i * $i ) > $i ).

tff(thm147,conjecture,
    ( {$box}
    @ (~ ( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( ( {$box}
                       @ (~ ( {$box} @ (a_truth(implies(P,Q))) )) )
                     | ( {$box}
                       @ (~ ( {$box} @ (a_truth(P)) )) )
                     | ( {$box} @ (a_truth(Q)) ) )) )) )
         & ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (a_truth(implies(P,implies(Q,P)))) )) )) )
         & ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (a_truth(implies(implies(P,implies(Q,R)),implies(implies(P,Q),implies(P,R))))) )) )) )) )
         & ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (a_truth(implies(implies(not(P),not(Q)),implies(Q,P)))) )) )) )
         & ? [A: $i] :
             ( {$box}
             @ (~ ( {$box} @ (a_truth(implies(A,A))) )) ) )) ) ).

%------------------------------------------------------------------------------
