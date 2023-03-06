%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Generation of abstract instructions: enter a number in a box
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Sto00] Stone (2000), Towards a Computational Account of Knowl
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM003+1 [QMLTP]
%          : APM003_1.025_k_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   12 (   0 unt;   8 typ;   0 def)
%            Number of atoms       :   29 (   0 equ)
%            Maximal formula atoms :    2 (   7 avg)
%            Number of connectives :   17 (   0   ~;   0   |;   6   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   12 (   6   >;   6   *;   0   +;   0  <<)
%            Number of predicates  :    7 (   6 usr;   0 prp; 1-3 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :   12 (;   5   !;   7   ?;  12   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(u_decl,type,
    u: $i ).

tff(one_decl,type,
    one: $i ).

tff(number_decl,type,
    number: ( $i * $i ) > $o ).

tff(string_decl,type,
    string: $i > $o ).

tff(in_decl,type,
    in: ( $i * $i * $i ) > $o ).

tff(do_decl,type,
    do: ( $i * $i * $i ) > $o ).

tff(entry_box_decl,type,
    entry_box: $i > $o ).

tff(userid_decl,type,
    userid: ( $i * $i ) > $o ).

tff(ax1,axiom-local,
    ( {$box}
    @ (? [I: $i] :
         ( {$box}
         @ (( userid(u,I)
            & string(I) )) )) ) ).

tff(ax2,axiom-local,
    ? [B: $i] :
      ( {$box}
      @ (( entry_box(B)
         & number(B,one) )) ) ).

tff(ax3,axiom-local,
    ( {$box}
    @ (! [S: $i,I: $i,B: $i] :
         ( ( string(I)
           & entry_box(B) )
        => ? [A: $i] :
             ( {$box}
             @ (! [S2: $i] :
                  ( do(S,A,S2)
                 => in(I,B,S2) )) ) )) ) ).

tff(con,conjecture,
    ( {$box}
    @ (? [I: $i,B: $i,A: $i,S: $i] :
         ( ( {$box}
           @ (( userid(u,I)
              & entry_box(B)
              & number(B,one) )) )
         & ( {$box}
           @ (! [S2: $i] :
                ( do(S,A,S2)
               => in(I,B,S2) )) ) )) ) ).

%------------------------------------------------------------------------------
