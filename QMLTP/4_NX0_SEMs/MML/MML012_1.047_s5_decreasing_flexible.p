tff(s5_decreasing_flexible,logic, ( $modal ==
    [$constants == $flexible,
     $quantification == $decreasing,
     $modalities == $modal_system_S5
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:49:40 CEST 2022 using command 'downgrade(tff)'.
tff(charge_decl, type, charge: $o).
tff(called_decl, type, called: $o).
tff(paid_decl, type, paid: $o).
tff(aciom_paid_charge, axiom-local, (paid => called)).
tff(axiom_charge_u, axiom-local, (charge => ({$box(#u)}(charge) & {$box(#c)}(charge)))).
tff(axiom_1, axiom-local, {$box(#u)}((called => {$box(#c)}(called)))).
tff(axiom_2, axiom-local, {$box(#c)}((paid => {$box(#u)}(paid)))).
tff(axiom_3, axiom-local, (~ ({$box(#c)}(called)) => {$box(#u)}(~ ({$box(#c)}(called))))).
tff(axiom_4, axiom-local, (~ ({$box(#u)}(paid)) => {$box(#c)}(~ ({$box(#u)}(paid))))).
tff(requirement_1, conjecture, (~ (((called & ~ (paid)) => charge)) => {$box(#c)}(~ (((called & ~ (paid)) => charge))))).
