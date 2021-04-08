%------------------------------------------------------------------------------
include('S5=KM5.sys').
include('ModalAxiomDefns.ax',
    [axiom_s1_1,axiom_s1_2,axiom_s1_3,axiom_s1_4,axiom_s1_5,axiom_m10]).
include('ModalRuleDefns.ax',
    [adjunction,modus_ponens_strict_implies,substitution_strict_equiv]).
include('OperatorDefns.ax').
%------------------------------------------------------------------------------
fof(system_S1_0_op_possibly,axiom,op_possibly).

fof(system_S1_0_op_necessarily,axiom,op_necessarily).

fof(system_S1_0_op_or,axiom,op_or).

fof(system_S1_0_op_implies,axiom,op_implies_and).

fof(system_S1_0_op_strict_implies,axiom,op_strict_implies).

fof(system_S1_0_op_strict_equiv,axiom,op_strict_equiv).
%------------------------------------------------------------------------------
%----E---0.82dev070 says Timeout - CPU = 1200.0
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(axiom_s1_1,conjecture,axiom_s1_1).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(axiom_s1_2,conjecture,axiom_s1_2).

%----E---0.82dev070 says Timeout - CPU = 1200.0
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Theorem - CPU = 130.0
fof(axiom_s1_3,conjecture,axiom_s1_3).

%----E---0.82dev070 says Timeout - CPU = 1200.0
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Timeout - CPU = 600.0
fof(axiom_s1_4,conjecture,axiom_s1_4).

%----E---0.82dev070 says Timeout - CPU = 1201.0
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Timeout - CPU = 600.0
fof(axiom_s1_5,conjecture,axiom_s1_5).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(axiom_m10,conjecture,axiom_m10).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(adjunction,conjecture,adjunction).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(modus_ponens_strict_implies,conjecture,modus_ponens_strict_implies).

%----E---0.82dev070 says GaveUp - CPU = 0.0
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Timeout - CPU = 600.0
fof(substitution_strict_equiv,conjecture,substitution_strict_equiv).
%------------------------------------------------------------------------------
