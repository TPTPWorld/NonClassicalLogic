include('Background.ax').
include('AnjousMorality_01.ax').
include('Scenario_02.ax').

%----Take some decision
tff(choose_decision,conjecture,(
    ? [D:decision] : take_decision(D) )).

%----Take decision to swerve
% tff(should_swerve,conjecture,
%     take_decision(swerve)).

%----Take decision to go straight
% tff(should_go_straight,conjecture,
%     take_decision(straight)).
