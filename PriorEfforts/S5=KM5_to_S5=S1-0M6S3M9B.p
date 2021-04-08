%------------------------------------------------------------------------------
include('S5=KM5.sys').
include('ModalAxiomDefns.ax',
    [axiom_s1_1,axiom_s1_2,axiom_s1_3,axiom_s1_4,axiom_s1_5,
     axiom_m6,axiom_s3,axiom_m9,axiom_B]).
include('ModalRuleDefns.ax',
    [adjunction,modus_ponens_strict_implies,substitution_strict_equiv]).
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

%----E---0.82dev070 says Theorem - CPU = 0.0 on Walkabout
fof(axiom_m6,conjecture,axiom_m6).

%----E---0.82dev070 says Timeout - CPU = 601.0 on Walkabout
fof(axiom_s3,conjecture,axiom_s3).

%----E---0.82dev070 says Theorem - CPU = 6.0 on Walkabout
fof(axiom_m9,conjecture,axiom_m9).

%----E---0.82dev070 says Theorem - CPU = 6.0 on Walkabout
fof(axiom_B,conjecture,axiom_B).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(adjunction,conjecture,adjunction).

%----E---0.82dev070 says Theorem - CPU = 0.0
%----Otter---3.3 says Theorem - CPU = 0.0
%----SPASS---2.0 says Theorem - CPU = 0.0
fof(modus_ponens_strict_implies,conjecture,modus_ponens_strict_implies).

%----E---0.82dev070 says Timeout - CPU = 601.0 on Walkabout
%----Otter---3.3 says Timeout - CPU = 120.0
%----SPASS---2.0 says Timeout - CPU = 600.0
fof(substitution_strict_equiv,conjecture,substitution_strict_equiv).

%------------------------------------------------------------------------------
