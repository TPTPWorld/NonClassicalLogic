thf(pigs_might_fly_type,type,(
    pigs_might_fly: $o )).

%----We can have polymorphic indexing
thf(boxP_type,type,(
    boxP: !>[T: $tType] : ( T > $o > $o ) )).

%----Which makes this OK
thf(agent_type,type,(
    agent: $tType )).

thf(bond_agent,type,(
    bond: agent )).

thf(archer_agent,type,(
    archer: agent )).

thf(archer_says_no_flying_pigs,axiom,(
    ~ ( boxP @ agent @ archer @ pigs_might_fly ) )).

%----And also specific indexing, e.g., integers
thf(boxI_type,type,(
    boxI: $int > $o > $o )).

thf(boxI_boxP,axiom,
    ( boxI = ( boxP @ $int ) )).

%----Which makes this OK
thf(no_flying_pigs,axiom,(
    ! [T: $tType,A: T] : ~ ( boxP @ T @ A @ pigs_might_fly ) )).

thf(int_agent_27_says_no_flying_pigs,conjecture,(
    ~ ( boxI @ 27 @ pigs_might_fly ) )).
