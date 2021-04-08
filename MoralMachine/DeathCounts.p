include('SelfDriving.ax').
include('GeoffsMorality1.ax').
include('Scenario_01.ax').

tff(choose_decision,question,(
    ? [D:decision] :take_decision(D) )).

% tff(should_swerve,conjecture,
%     take_decision(swerve)).

% tff(should_go_straight,conjecture,
%     take_decision(straight)).
