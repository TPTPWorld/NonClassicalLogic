%------------------------------------------------------------------------------
% File     : MML016_1.044 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Ticket example
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [FH+98] Farinas del Cerro et al. (1998), Belief Reconstruction
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML016+1 [QMLTP]
%          : MML016_1.044_t_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   16 (   0 unt;   8 typ;   0 def)
%            Number of atoms       :   33 (   0 equ)
%            Maximal formula atoms :    2 (   4 avg)
%            Number of connectives :   21 (   4   ~;   0   |;   7   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   8 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    7 (   5 usr;   7 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_M ] ).

tff(seventy_decl,type,
    seventy: $i ).

tff(ninetyfive_decl,type,
    ninetyfive: $i ).

tff(second_decl,type,
    second: $i ).

tff(paris_decl,type,
    paris: $i ).

tff(first_decl,type,
    first: $i ).

tff(price_decl,type,
    price: $i > $o ).

tff(dest_decl,type,
    dest: $i > $o ).

tff(class_decl,type,
    class: $i > $o ).

tff(axiom_1,axiom-local,
    ( {$box(#b_s)}
    @ (( ( dest(paris)
         & class(first) )
      => price(ninetyfive) )) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#b_s)}
    @ (( ( dest(paris)
         & class(second) )
      => price(seventy) )) ) ).

tff(axiom_3_s,axiom-local,
    ( {$box(#b_s)}
    @ (~ ( class(first)
         & class(second) )) ) ).

tff(axiom_3_u,axiom-local,
    ( {$box(#b_u)}
    @ (~ ( class(first)
         & class(second) )) ) ).

tff(axiom_4_s,axiom-local,
    ( {$box(#b_s)}
    @ (~ ( price(seventy)
         & price(ninetyfive) )) ) ).

tff(axiom_4_u,axiom-local,
    ( {$box(#b_u)}
    @ (~ ( price(seventy)
         & price(ninetyfive) )) ) ).

tff(axiom_5,axiom-local,
    ( {$box(#b_s)}
    @ (( dest(paris)
       & class(second) )) ) ).

tff(con,conjecture,
    {$box(#b_s)} @ (price(seventy)) ).

%------------------------------------------------------------------------------
