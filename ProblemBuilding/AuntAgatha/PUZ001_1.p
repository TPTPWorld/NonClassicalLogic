%------------------------------------------------------------------------------
tff(person_type,type,person: $tType).
tff(agatha_decl,type,agatha: person).
tff(butler_decl,type,butler: person).
tff(charles_decl,type,charles: person).
tff(lives_decl,type,lives: person > $o).
tff(killed_decl,type,killed: (person * person) > $o).
tff(hates_decl,type,hates: (person * person) > $o).
tff(richer_decl,type,richer: (person * person) > $o).

tff(pel55_1,axiom,
    ? [X: person] :
      ( lives(X)
      & killed(X,agatha) ) ).

tff(pel55_2_1,axiom,
    lives(agatha) ).

tff(pel55_2_2,axiom,
    lives(butler) ).

tff(pel55_2_3,axiom,
    lives(charles) ).

tff(pel55_3,axiom,
    ! [X: person] :
      ( lives(X)
     => ( X = agatha
        | X = butler
        | X = charles ) ) ).

tff(pel55_11a,axiom,
    agatha != butler ).

tff(pel55_11b,axiom,
    butler != charles ).

tff(pel55_11c,axiom,
    charles != agatha ).

tff(pel55_4,axiom,
    ! [X: person,Y: person] :
      ( killed(X,Y)
     => hates(X,Y) ) ).

tff(pel55_5,axiom,
    ! [X: person,Y: person] :
      ( killed(X,Y)
     => ~ richer(X,Y) ) ).

tff(pel55_6,axiom,
    ! [X: person] :
      ( hates(agatha,X)
     => ~ hates(charles,X) ) ).

tff(pel55_7,axiom,
    ! [X: person] :
      ( X != butler
     => hates(agatha,X) ) ).

tff(pel55_8,axiom,
    ! [X: person] :
      ( ~ richer(X,agatha)
     => hates(butler,X) ) ).

tff(pel55_9,axiom,
    ! [X: person] :
      ( hates(agatha,X)
     => hates(butler,X) ) ).

tff(pel55_10,axiom,
    ! [X: person] :
    ? [Y: person] : ~ hates(X,Y) ).

%----Provable
% tff(pel55,conjecture,
%     killed(agatha,agatha) ).

%----Provable
% tff(pel55,conjecture,
%     ~ killed(butler,agatha) ).

%----Provable
% tff(pel55,conjecture,
%     ~ killed(charles,agatha) ).

%----Provable
% tff(pel55,conjecture,
%     ! [X: person] :
%       ( ( lives(X)
%         & killed(X,agatha) )
%      => X = agatha ) ).

%----Not provable, because the killer could be someone who doesn't live in the mansion
%----Hahaha, allows for multiple people to have killed Agatha
% tff(pel55,conjecture,
%     ! [X: person] :
%       ( killed(X,agatha)
%      => X = agatha ) ).

tff(one_killer,axiom,
    ! [X: person] :
      ( killed(X,agatha)
     => ! [Y: person] :
          ( killed(Y,agatha)
         => X = Y ) ) ).

%----Provable with the one killer axiom
tff(pel55,conjecture,
    ! [X: person] :
      ( killed(X,agatha)
     => lives(X) ) ).

%----Provable with the one killer axiom
% tff(pel55,conjecture,
%     ! [X: person] :
%       ( killed(X,agatha)
%      => X = agatha ) ).

%------------------------------------------------------------------------------
