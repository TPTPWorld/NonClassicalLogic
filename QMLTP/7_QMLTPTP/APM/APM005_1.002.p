%------------------------------------------------------------------------------
% File     : APM005_1.002 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Planning
% Problem  : Abductive planning: Safe problem
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Sto98] Stone (1998), Abductive Planning with Sensing
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM005+1 [QMLTP]
%          : APM005_1.002_t_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   13 (   0 unt;   7 typ;   0 def)
%            Number of atoms       :   41 (   0 equ)
%            Maximal formula atoms :    2 (   6 avg)
%            Number of connectives :   26 (   3   ~;   1   |;   7   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   4   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    7 (;   3   !;   4   ?;   7   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(d_decl,type,
    d: $i ).

tff(n_decl,type,
    n: $i ).

tff(o_decl,type,
    o: $i ).

tff(happens_decl,type,
    happens: $i > $o ).

tff(closed_decl,type,
    closed: $i > $o ).

tff(combo_decl,type,
    combo: ( $i * $i ) > $o ).

tff(open_decl,type,
    open: $i > $o ).

tff(ax1,axiom-local,
    ( {$box}
    @ (! [S: $i,V: $i] :
       ? [O: $i] :
         ( ( {$box}
           @ (( ( closed(S)
                & combo(S,V)
                & happens(O) )
             => ( {$box} @ (open(S)) ) )) )
         & ( {$box}
           @ (( ( closed(S)
                & ~ combo(S,V)
                & happens(o) )
             => ( {$box} @ (closed(S)) ) )) ) )) ) ).

tff(ax2,axiom-local,
    {$box} @ (closed(d)) ).

tff(ax3,axiom-local,
    ( {$box}
    @ (( combo(d,n)
       | ~ combo(d,n) )) ) ).

tff(ax4,axiom-local,
    ( {$box}
    @ (! [S: $i] :
         ~ ( open(S)
           & closed(S) )) ) ).

tff(ax5,axiom-local,
    ? [V: $i] : ( {$box} @ (combo(d,V)) ) ).

tff(con,conjecture,
    ( {$box}
    @ (? [V: $i,O: $i] :
         ( ( {$box}
           @ (( combo(d,V)
              & happens(O) )) )
        => ( {$box} @ (open(d)) ) )) ) ).

%------------------------------------------------------------------------------
