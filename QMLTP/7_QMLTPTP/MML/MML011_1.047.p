%------------------------------------------------------------------------------
% File     : MML011_1.047 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Processes
% Problem  : Phone user and company (requirement 1)
% Version  : [QMLTP] axioms.
% English  : Phone user U and phone company C have following relationship:
%            + U does not pay a call before he has dialled it.
%            + Both U nd C are able to prove when U is being charged.
%            + U is able to prove that C can prove that U has made a call,
%            + C is able to prove that U can prove that U has paid his call,
%            + U is able to prove that C cannot prove that U has made a call,
%            + C is able to prove that U cannot prove that he has paid his
%              call, whenever these facts are true.
%            Then the following requirement is true: From U's point of view,
%            C should charge U only if he has made a call that is not yet paid.

% Refs     : [HA97]  Huima & Aura (1997), Using Multimodal Logic to Express
% Source   : [QMLTP]
% Names    : MML011+1 [QMLTP]
%          : MML011_1.047_s5_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   10 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   45 (   0 equ)
%            Maximal formula atoms :    5 (   6 avg)
%            Number of connectives :   33 (   8   ~;   0   |;   3   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (  13 {}@;  13 {#};   0 {.})
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   13 (  13 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    2 (   0 usr;   2 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(charge_decl,type,
    charge: $o ).

tff(called_decl,type,
    called: $o ).

tff(paid_decl,type,
    paid: $o ).

tff(aciom_paid_charge,axiom-local,
    ( paid
   => called ) ).

tff(axiom_charge_u,axiom-local,
    ( charge
   => ( ( {$box(#u)} @ (charge) )
      & ( {$box(#c)} @ (charge) ) ) ) ).

tff(axiom_1,axiom-local,
    ( {$box(#u)}
    @ (( called
      => ( {$box(#c)} @ (called) ) )) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#c)}
    @ (( paid
      => ( {$box(#u)} @ (paid) ) )) ) ).

tff(axiom_3,axiom-local,
    ( ~ ( {$box(#c)} @ (called) )
   => ( {$box(#u)}
      @ (~ ( {$box(#c)} @ (called) )) ) ) ).

tff(axiom_4,axiom-local,
    ( ~ ( {$box(#u)} @ (paid) )
   => ( {$box(#c)}
      @ (~ ( {$box(#u)} @ (paid) )) ) ) ).

tff(requirement_1,conjecture,
    ( ~ ( charge
       => ( called
          & ~ paid ) )
   => ( {$box(#u)}
      @ (~ ( charge
          => ( called
             & ~ paid ) )) ) ) ).

%------------------------------------------------------------------------------
