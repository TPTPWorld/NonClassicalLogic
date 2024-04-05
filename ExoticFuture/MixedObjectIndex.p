%------------------------------------------------------------------------------
%----Simplifications exploiting the high expressivity of our language are
%----tempting and often more intuitive; but as long as such ad hoc formulations
%----are (i) not automated and (ii) not fully sanity checked (or semantically
%----verified) one has to be careful with claims that they realize the intended
%----meaning. The modified examples illustrate syntax aspects, they are not yet
%----claimed to be verified encodings of the wise men puzzle.
%------------------------------------------------------------------------------
%----Could we rather say for all wiseman? E.g.,
tff(at_least_one_white_spot_all,axiom,(
    ! [X: wiseman] : 
      {$knows:#X}
        ( white_spot(a) 
        | white_spot(b) 
        | white_spot(c) ) )).
%----This would apply everywhere below too. It might have difference
%----consequences. Maybe it's necessary to say there are only three wise men:
tff(three_wiseman,axiom,(
    ! [X: wiseman] : 
      ( X = a 
      | X = b 
      | X = c ) )).
%----and they are all different:
tff(distinct_wiseman,axiom,(
    ( a != b 
    & a != c 
    & b != c ) )).

%----Could we rather say ...
tff(others_know,axiom,(
    ! [X: wiseman] : 
      {$knows:#X}(
        ! [Has: wiseman, Knows: wiseman] :
          ( ( white_spot(Has)
            & Has != Knows )
         => {$knows:#Knows}(white_spot(Has) ) ) ) )).

%----Could we rather say ...
tff(others_know_not,axiom,(
    ! [X: wiseman] : 
      {$knows:#X}(
        ! [HasNot: wiseman,Knows: wiseman] :
          ( ~ white_spot(HasNot)
            & HasNot != Knows )
         => {$knows:#Knows}(~ white_spot(HasNot)) ) )).

%----Could we rather say for all wiseman? E.g.,
thf(at_least_one_white_spot_all,axiom,(
    ! [X: wiseman] : 
      ( [#X] @ 
        ( (white_spot @ a)
        | (white_spot @ b)
        | (white_spot @ c) ) ) )).
%----This would apply everywhere below too. It might have difference
%----consequences. Maybe it's necessary to say there are only three wise men:
thf(three_wiseman,axiom,(
    ! [X: wiseman] : 
      ( X = a 
      | X = b 
      | X = c) )).
%----and they are all different:
thf(distinct_wiseman,axiom,(
    ( a != b 
    & a != c 
    & b != c ) )).

%----Could we rather say ...
thf(others_know,axiom,(
    ! [X: wiseman] : 
      ( [#X] @
        ! [Has: wiseman,Knows: wiseman] :
          ( ( (white_spot @ Has)
            & Has != Knows )
         => ( [#Knows] @ (white_spot @ Has) ) ) ) )).

%----Could we rather say ...
thf(others_know_not,axiom,(
    ! [X: wiseman] : 
      ( [#X] @
        ! [HasNot: wiseman,Knows: wiseman] :
          ( ( ~ (white_spot @ HasNot)
            & HasNot != Knows )
         => ( [#Knows] @ ~ (white_spot @ HasNot) ) ) ) )).

%------------------------------------------------------------------------------
%----Tobias' idea
$modal ==
    [ $consequence == [...],
         ...
      $index_sets ==
        [ agent = [archer,bond,batman],
          other = [mi,ma,me,mu] ],
         ...
    ]

Sets are finite.
Elements are unique (these are sets)

Geoff wrote ...
Tobias' beer-inspired idea for declaring finite index values as part of
the logic specification seemed nice, bbut now I worry. How can I say things
like "all even indices know", or "all brave agents think it is possible"?
In my world of mixed objects and indices I could have ...

    ! [X: $int]: ($remainder_e(X,2) => {$know:#X}(what_they_know)
    ! [A: agent]: (brave(A) => <#A>(what_is_possible)

%------------------------------------------------------------------------------
%----Other examples that Geoff loves
    tff(some_individual_says_flying_pigs,axiom,(
        ? [X: $i] : {$possible:#X}(pigs_might_fly) )).

    tff(short_some_individual_says_flying_pigs,axiom,(
        ? [X: $i] : <#X>(pigs_might_fly) )).

    tff(all_agents_say_flying_pigs,axiom,(
        ! [A: agent] : {$necessary:#A}(pigs_might_fly) )).

    tff(short_all_agents_say_flying_pigs,axiom,(
        ! [A: agent] : [#A](pigs_might_fly) )).

    tff(all_agents_say_everything,axiom,(
        ! [A: agent,P: $o] : {$necessary:#A}(P) )).

    tff(short_all_agents_say_everything,axiom,(
        ! [A: agent,P: $o] : [#A](P) )).

    thf(some_individual_says_flying_pigs,axiom,(
        ? [X: $i] : {$possible:#X} @ pigs_might_fly )).

    thf(short_some_individual_says_flying_pigs,axiom,(
        ? [X: $i] : <#X> @ pigs_might_fly )).

    thf(all_agents_say_flying_pigs,axiom,(
        ! [A: agent] : {$necessary:#A} @ pigs_might_fly )).

    thf(short_all_agents_say_flying_pigs,axiom,(
        ! [A: agent] : [#A] @ pigs_might_fly )).

    thf(all_agents_say_everything,axiom,(
        ! [A: agent,P: $o] : {$necessary:#A} @ P )).

    thf(short_all_agents_say_everything,axiom,(
        ! [A: agent,P: $o] : [#A] @ P )).

%------------------------------------------------------------------------------
