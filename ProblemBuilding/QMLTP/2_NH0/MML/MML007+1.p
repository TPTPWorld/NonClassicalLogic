%------------------------------------------------------------------------------
% File     : PUZ999^1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : Russian Card problem (very simple variant)
% Version  : Especial.
% English  : Anne, Bill and Cath draw rock, paper, scissors. Each person knows
%            that each other person knows that the last person knows which
%            they have. Anne has rock. Therefore Bill knows that it is not that
%            case that Anne thinks it's possible that Bill thinks it's possible
%            that Cath knows that Anne does not have rock,

% Refs     : [vDK06] van Ditmarsch & Kooi (2006), The Secret of My Success
%          : [GS22]  Gleissner & Steen (2022), Email to Geoff
% Source   : [GS22]
% Names    : MML007+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : 
% SPC      :
 
% Comments :
%------------------------------------------------------------------------------
thf(semantics,logic,
    ( $modal
   == [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S5 ] ) ).

thf(anne_has_rock_decl,type,anne_has_rock : $o).
thf(anne_has_paper_decl,type,anne_has_paper : $o).
thf(anne_has_scissors_decl,type,anne_has_scissors : $o).
thf(cath_has_rock_decl,type,cath_has_rock : $o).
thf(cath_has_paper_decl,type,cath_has_paper : $o).
thf(cath_has_scissors_decl,type,cath_has_scissors : $o).
thf(bill_has_rock_decl,type,bill_has_rock : $o).
thf(bill_has_paper_decl,type,bill_has_paper : $o).
thf(bill_has_scissors_decl,type,bill_has_scissors : $o).

%----Anne knows that Bill knows that Cath knows which she has.
thf(axiom_knows_a_b_c,axiom-local,
    {$box(#anne)} @ 
    ( {$box(#bill)} @ 
      ( ({$box(#cath)} @ cath_has_rock)
      | ({$box(#cath)} @ cath_has_paper)
      | ({$box(#cath)} @ cath_has_scissors) ) ) ).

%----Bill knows that Anne knows that Cath knows which she has.
thf(axiom_knows_b_a_c,axiom-local,
    {$box(#bill)} @ 
    ( {$box(#anne)} @ 
      ( ({$box(#cath)} @ cath_has_rock)
      | ({$box(#cath)} @ cath_has_paper)
      | ({$box(#cath)} @ cath_has_scissors) ) ) ).

%----Anne knows that Cath knows that Bill knows which he has.
thf(axiom_knows_a_c_b,axiom-local,
    {$box(#anne)} @ 
    ( {$box(#cath)} @ 
      ( ({$box(#bill)} @ bill_has_rock)
      | ({$box(#bill)} @ bill_has_paper)
      | ({$box(#bill)} @ bill_has_scissors) ) ) ).

%----Cath knows that Anne knows that Bill knows which he has.
thf(axiom_knows_c_a_b,axiom-local,
    {$box(#cath)} @ 
    ( {$box(#anne)} @ 
      ( ({$box(#bill)} @ bill_has_rock)
      | ({$box(#bill)} @ bill_has_paper)
      | ({$box(#bill)} @ bill_has_scissors) ) ) ).

%----Cath knows that Bill knows that Anne knows which she has.
thf(axiom_knows_c_b_a,axiom-local,
    {$box(#cath)} @ 
    ( {$box(#bill)} @ 
      ( ({$box(#anne)} @ anne_has_rock)
      | ({$box(#anne)} @ anne_has_paper)
      | ({$box(#anne)} @ anne_has_scissors) ) ) ).

%----Bill knows that Cath knows that Anne knows which she has.
thf(axiom_knows_b_c_a,axiom-local,
    {$box(#bill)} @ 
    ( {$box(#cath)} @ 
      ( ({$box(#anne)} @ anne_has_rock)
      | ({$box(#anne)} @ anne_has_paper)
      | ({$box(#anne)} @ anne_has_scissors) ) ) ).

%----Anne has rock.
thf(anne_has_rock,axiom-local,
    anne_has_rock ).

%----Prove that Bill knows that it is not that case that Anne thinks it's 
%----possible that Bill thinks it's possible that Cath knows that Anne does 
%----not have rock.
thf(who_knows,conjecture,
    {$box(#bill)} @ 
    ( ~ ( {$dia(#anne)} @ 
          ( {$dia(#bill)} @ 
            ( {$box(#cath)} @ 
              ( ~ anne_has_rock ) ) ) ) ) ).

%------------------------------------------------------------------------------
