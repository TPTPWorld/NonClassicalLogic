%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Processes
% Problem  : Printer example
% Version  : [QMLTP] axioms : Reduced.
% English  : If the user is believed to want a document to be printed on a
%            printer, then he is also assumed to believe that this is possible.
%            Users want any implication of their immediate goals if they know
%            the implication relation. The user wants to print the document
%            userdoc. The user believes that all documents are printed on
%            printer lw. Then the user wants the document userdoc to be
%            printed on printer lw.

% Refs     : [KP95]  Kobsa & Pohl (1995), The User Modeling Shell System BG
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML010+1 [QMLTP]
%          : MML010_1.024_s5u_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   12 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :   58 (   0 equ)
%            Maximal formula atoms :    6 (   9 avg)
%            Number of connectives :   30 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  22 {}@;  22 {#};   0 {.})
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   22 (  22 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   4   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   2 usr;   5 con; 0-0 aty)
%            Number of variables   :    7 (;   7   !;   0   ?;   7   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5U ] ).

tff(userdoc_decl,type,
    userdoc: $i ).

tff(lw_decl,type,
    lw: $i ).

tff(printed_decl,type,
    printed: $i > $o ).

tff(printableon_decl,type,
    printableon: ( $i * $i ) > $o ).

tff(printedable_decl,type,
    printedable: ( $i * $i ) > $o ).

tff(printedon_decl,type,
    printedon: ( $i * $i ) > $o ).

tff(aciom_1,axiom-local,
    ! [D: $i,P: $i] :
      ( ( {$box(#bs)}
        @ ({$box(#wu)} @ (printedon(D,P))) )
     => ( {$box(#bs)}
        @ ({$box(#bu)} @ (printableon(D,P))) ) ) ).

tff(axiom_2_1,axiom-local,
    ! [D: $i,P: $i] :
      ( ( ( {$box(#bs)}
          @ ({$box(#wu)} @ (printed(D))) )
        & ( {$box(#bs)}
          @ (( {$box(#bu)}
             @ (( printed(D)
               => printedon(D,P) )) )) ) )
     => ( {$box(#bs)}
        @ ({$box(#wu)} @ (printedon(D,P))) ) ) ).

tff(axiom_2_2,axiom-local,
    ! [D: $i,P: $i] :
      ( ( ( {$box(#bs)}
          @ ({$box(#wu)} @ (printedon(D,P))) )
        & ( {$box(#bs)}
          @ (( {$box(#bu)}
             @ (( printedon(D,P)
               => printedable(D,P) )) )) ) )
     => ( {$box(#bs)}
        @ ({$box(#wu)} @ (printedable(D,P))) ) ) ).

tff(axiom_3,axiom-local,
    ( {$box(#bs)}
    @ ({$box(#wu)} @ (printed(userdoc))) ) ).

tff(axiom_4,axiom-local,
    ( {$box(#bs)}
    @ (( {$box(#bu)}
       @ (! [D: $i] :
            ( printed(D)
           => printedon(D,lw) )) )) ) ).

tff(con,conjecture,
    ( {$box(#bs)}
    @ ({$box(#wu)} @ (printedon(userdoc,lw))) ) ).

%------------------------------------------------------------------------------
