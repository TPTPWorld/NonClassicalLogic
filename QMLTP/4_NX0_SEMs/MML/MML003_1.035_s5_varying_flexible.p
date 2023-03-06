%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : The muddy forehead puzzle
% Version  : [QMLTP] axioms.
% English  : Three children are playing together outside. After playing they
%            come inside, and their mother says to them, at least one of you
%            has mud on your head. Each child can see the mud on others but
%            cannot see his or her own forehead. She then asks the following
%            question over and over: can you tell for sure whether or not you
%            have mud on your head? Assuming that all of the children are
%            intelligent, honest, and answer simultaneously, what will happen?

% Refs     : [Fit07] Fitting (2007), Modal Proof Theory
%          : [Ben08] Benzmueller (2008), Email to G. Sutcliffe
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML003+1 [QMLTP]
%          : MML003_1.035_s5_varying_flexible.p [QMLTP/4_NX0_SEMs]
%          : Fitting-HB-Knowledge-2b [Ben08]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   24 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :  238 (   0 equ)
%            Maximal formula atoms :   27 (  11 avg)
%            Number of connectives :  182 (  39   ~;  41   |;   8   &)
%                                         (   1 <=>;  18  =>;   0  <=;   0 <~>)
%                                         (  75 {}@;  75 {#};   0 {.})
%            Maximal formula depth :   12 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   75 (  75 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   4 prp; 0-1 aty)
%            Number of functors    :    3 (   0 usr;   3 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(mfb_decl,type,
    mfb: $o ).

tff(mfa_decl,type,
    mfa: $o ).

tff(mfc_decl,type,
    mfc: $o ).

tff(s_decl,type,
    s: $o ).

tff(what_a_knows_about_b,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#a)} @ (mfb) )
       | ( {$box(#a)} @ (~ mfb) ) )) ) ).

tff(what_a_knows_about_c,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#a)} @ (mfc) )
       | ( {$box(#a)} @ (~ mfc) ) )) ) ).

tff(what_b_knows_about_a,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#b)} @ (mfa) )
       | ( {$box(#b)} @ (~ mfa) ) )) ) ).

tff(what_b_knows_about_c,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#b)} @ (mfc) )
       | ( {$box(#b)} @ (~ mfc) ) )) ) ).

tff(what_c_knows_about_a,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(what_c_knows_about_b,axiom-local,
    ( {$box(#a)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(what_a_knows_about_b_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#a)} @ (mfb) )
       | ( {$box(#a)} @ (~ mfb) ) )) ) ).

tff(what_a_knows_about_c_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#a)} @ (mfc) )
       | ( {$box(#a)} @ (~ mfc) ) )) ) ).

tff(what_b_knows_about_a_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#b)} @ (mfa) )
       | ( {$box(#b)} @ (~ mfa) ) )) ) ).

tff(what_b_knows_about_c_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#b)} @ (mfc) )
       | ( {$box(#b)} @ (~ mfc) ) )) ) ).

tff(what_c_knows_about_a_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(what_c_knows_about_b_0,axiom-local,
    ( {$box(#b)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(what_a_knows_about_b_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#a)} @ (mfb) )
       | ( {$box(#a)} @ (~ mfb) ) )) ) ).

tff(what_a_knows_about_c_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#a)} @ (mfc) )
       | ( {$box(#a)} @ (~ mfc) ) )) ) ).

tff(what_b_knows_about_a_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#b)} @ (mfa) )
       | ( {$box(#b)} @ (~ mfa) ) )) ) ).

tff(what_b_knows_about_c_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#b)} @ (mfc) )
       | ( {$box(#b)} @ (~ mfc) ) )) ) ).

tff(what_c_knows_about_a_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(what_c_knows_about_b_1,axiom-local,
    ( {$box(#c)}
    @ (( ( {$box(#c)} @ (mfa) )
       | ( {$box(#c)} @ (~ mfa) ) )) ) ).

tff(someone_knows_its_forhead,axiom-local,
    ( s
  <=> ( ( {$box(#a)}
        @ (( mfa
           | ~ mfa )) )
      | ( {$box(#b)}
        @ (( mfb
           | ~ mfb )) )
      | ( {$box(#c)}
        @ (( mfc
           | ~ mfc )) ) ) ) ).

tff(con,conjecture,
    ( ~ ( ( {$box(#a)}
          @ (~ ( ( {$box(#a)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#a)}
          @ (~ ( ( {$box(#b)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#a)}
          @ (~ ( ( {$box(#c)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#b)}
          @ (~ ( ( {$box(#a)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#b)}
          @ (~ ( ( {$box(#b)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#b)}
          @ (~ ( ( {$box(#c)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#c)}
          @ (~ ( ( {$box(#a)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#c)}
          @ (~ ( ( {$box(#b)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s )
    & ~ ( ( {$box(#c)}
          @ (~ ( ( {$box(#c)}
                 @ (( mfa
                    | mfb
                    | mfc )) )
              => s )) )
       => s ) ) ).

%------------------------------------------------------------------------------
