%------------------------------------------------------------------------------
include('S5=KM5.sys').
include('ModalAxiomDefns.ax',[axiom_B,axiom_4]).
%------------------------------------------------------------------------------
%----E---0.82dev070 says Theorem - CPU = 1.0 on Walkabout
fof(axiom_B,conjecture,
    axiom_B ).

%----E---0.82dev070 says Timeout - CPU = 600.0 on Walkabout
fof(axiom_4,conjecture,
    axiom_4 ).

%------------------------------------------------------------------------------
