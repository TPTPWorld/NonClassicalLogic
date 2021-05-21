include('Background.ax').
include('AnjousMorality_04.ax').
include('Scenario_01a.ax').

%----Take decision to go straight
%tff(should_go_straight,conjecture,
%    take_decision(straight)).

%----Take decision to swerve
%tff(should_swerve,conjecture,
%    take_decision(swerve)).

%----Take some decision
tff(choose_decision,conjecture,(
    ? [D:decision] : take_decision(D) )).
