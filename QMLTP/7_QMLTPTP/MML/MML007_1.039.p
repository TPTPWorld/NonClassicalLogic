%------------------------------------------------------------------------------
% File     : MML007_1.039 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : Russian card problem (very simple variant)
% Version  : [QMLTP] axioms.
% English  : Anne, Bill and Cath draw 0, 1, and 2. Anne knows that Bill knows
%            that Cath knows her own card, etc. Anne has card 0. Then Bill
%            knows that Anne does not consider it possible that Bill considers
%            it possible that Cath knows that Anne does not have card 0.

% Refs     : [vDK06] van Ditmarsch & Kooi (2006), The Secret of My Success
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML007+1 [QMLTP]
%          : MML007_1.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   19 (   1 unt;  10 typ;   0 def)
%            Number of atoms       :  101 (   0 equ)
%            Maximal formula atoms :    2 (  11 avg)
%            Number of connectives :   55 (   2   ~;  14   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (  39 {}@;  39 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   39 (  39 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   12 (  10 usr;  10 prp; 0-1 aty)
%            Number of functors    :    3 (   0 usr;   3 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(c0_decl,type,
    c0: $o ).

tff(c1_decl,type,
    c1: $o ).

tff(b0_decl,type,
    b0: $o ).

tff(c2_decl,type,
    c2: $o ).

tff(b1_decl,type,
    b1: $o ).

tff(a0_decl,type,
    a0: $o ).

tff(b2_decl,type,
    b2: $o ).

tff(a1_decl,type,
    a1: $o ).

tff(a2_decl,type,
    a2: $o ).

tff(cb_decl,type,
    cb: $o ).

tff(axiom_knows_a_b_c,axiom-local,
    ( {$box(#a)}
    @ (( {$box(#b)}
       @ (( ( {$box(#c)} @ (c0) )
          | ( {$box(#c)} @ (c1) )
          | ( {$box(#c)} @ (c2) ) )) )) ) ).

tff(axiom_knows_b_a_c,axiom-local,
    ( {$box(#b)}
    @ (( {$box(#a)}
       @ (( ( {$box(#c)} @ (c0) )
          | ( {$box(#c)} @ (c1) )
          | ( {$box(#c)} @ (c2) ) )) )) ) ).

tff(axiom_knows_a_b_c_0,axiom-local,
    ( {$box(#a)}
    @ (( {$box(#b)}
       @ (( ( {$box(#c)} @ (c0) )
          | ( {$box(#c)} @ (c1) )
          | ( {$box(#c)} @ (c2) ) )) )) ) ).

tff(axiom_knows_a_c_b,axiom-local,
    ( {$box(#a)}
    @ (( {$box(#c)}
       @ (( ( {$box(#b)} @ (b0) )
          | ( {$box(#b)} @ (b1) )
          | ( {$box(#b)} @ (b2) ) )) )) ) ).

tff(axiom_knows_c_a_b,axiom-local,
    ( {$box(#c)}
    @ (( {$box(#a)}
       @ (( ( {$box(#b)} @ (cb) )
          | ( {$box(#b)} @ (b1) )
          | ( {$box(#b)} @ (b2) ) )) )) ) ).

tff(axiom_knows_c_b_a,axiom-local,
    ( {$box(#c)}
    @ (( {$box(#b)}
       @ (( ( {$box(#a)} @ (a0) )
          | ( {$box(#a)} @ (a1) )
          | ( {$box(#a)} @ (a2) ) )) )) ) ).

tff(axiom_knows_b_c_a,axiom-local,
    ( {$box(#b)}
    @ (( {$box(#c)}
       @ (( ( {$box(#a)} @ (a0) )
          | ( {$box(#a)} @ (a1) )
          | ( {$box(#a)} @ (a2) ) )) )) ) ).

tff(axiom_a0,axiom-local,
    a0 ).

tff(con,conjecture,
    ( {$box(#b)}
    @ (~ ( {$dia(#a)}
         @ (( {$dia(#b)}
            @ ({$box(#c)} @ (~ a0)) )) )) ) ).

%------------------------------------------------------------------------------
