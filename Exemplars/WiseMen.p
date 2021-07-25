%------------------------------------------------------------------------------
% File     : PUZ999~1 : TPTP v8.0.0. Released v8.0.0.
% Domain   : Puzzles
% Problem  : Wise men
% Version  : Especial.
% English  : Once upon a time, a king wanted to find the wisest out of his
%            three wisest men. He arranged them in a circle and told them that
%            he would put a white or a black spot on their foreheads and that
%            one of the three spots would certainly be white. The three wise
%            men could see and hear each other but, of course, they could not
%            see their faces reflected anywhere. The king, then, asked to each
%            of them to find out the colour of his own spot. After a while, the
%            wisest correctly answered that his spot was white.

% Refs     : 
% Source   : 
% Names    : ex5_multimodal_wisemen.p

% Status   : Theorem
% Rating   : ? v8.0.0
% Syntax   : TBA
% SPC      : THN_THM_NEQ

% Comments :
%------------------------------------------------------------------------------
tff(simple_s5,logic,(
    $modal =
        [ $constants = $rigid,
          $quantification = $varying,
          $consequence = $local,
          $modalities = $modal_system_S5 ] )).

%----Type for the wise men
thf(agent_type,type,wiseman: $tType).

%----Three wise men
thf(man_a_type,type,a: wiseman).

thf(man_b_type,type,b: wiseman).

thf(man_c_type,type,c: wiseman).

thf(fool_type,type,fool: wiseman).

%---Property of a wiseman's hat: white_spot
thf(white_spot_type,type,white_spot: wiseman > $o).

%----At least one wiseman has a white spot
thf(at_least_one_white_spot,axiom,(
    [#fool] @ ((white_spot @ a) | (white_spot @ b) | (white_spot @ c)))).

%----Could we rather say for all wisemen? E.g.,
thf(at_least_one_white_spot_all,axiom,(
    ! [X: wisemen] : ( [#X] @ 
      ((white_spot @ a) | (white_spot @ b) | (white_spot @ c))) )).
%----This would apply everywhere below too. It might have difference
%----consequences. Such simplifications exploiting the high expressivity of our 
%----language setup are tempting and often more intuitive; but as long as such 
%----ad hoc formulations are (i) not automated and (ii) not fully sanity 
%----checked (or semantically verified) one has to be careful with claims that 
%----they obviously realize the intended meaning. The modified examples 
%----illustrate syntax aspects, they are not yet claimed to be verified 
%----encodings of the wise men puzzle.

%----If one agent has a white spot all other agents can see this
thf(b_knows_a,axiom,(
    [#fool] @ ((white_spot @ a) => ([#b] @ (white_spot @ a))))).

thf(c_knows_a,axiom,
    ([#fool] @ ((white_spot @ a) => ([#c] @ (white_spot @ a))))).

thf(a_knows_a,axiom,
    ([#fool] @ ((white_spot @ b) => ([#a] @ (white_spot @ b))))).

thf(c_knows_b,axiom,
    ([#fool] @ ((white_spot @ b) => ([#c] @ (white_spot @ b))))).

thf(a_knows_c,axiom,
    ([#fool] @ ((white_spot @ c) => ([#a] @ (white_spot @ c))))).

thf(b_knows_c,axiom,
    ([#fool] @ ((white_spot @ c) => ([#b] @ (white_spot @ c))))).

%----Could we rather say ...
thf(others_know,axiom,(
    ! [X: wisemen] : ( [#X] @ 
      ! [Has: wisemen, Knows: wisemen] :
        ( ( (white_spot @ Has)
          & Has != Knows )
       => ( [#Knows] @ (white_spot @ Has) ) ) ) )).

%----Black spots are visible
thf(b_knows_not_a,axiom,
    ([#fool] @ ((~(white_spot @ a)) => ([#b] @ (~(white_spot @ a)))))).

thf(c_knows_not_a,axiom,
    ([#fool] @ ((~(white_spot @ a)) => ([#c] @ (~(white_spot @ a)))))).

thf(a_knows_not_b,axiom,
    ([#fool] @ ((~(white_spot @ b)) => ([#a] @ (~(white_spot @ b)))))).

thf(c_knows_not_b,axiom,
    ([#fool] @ ((~(white_spot @ b)) => ([#c] @ (~(white_spot @ b)))))).

thf(a_knows_not_c,axiom,
    ([#fool] @ ((~(white_spot @ c)) => ([#a] @ (~(white_spot @ c)))))).

thf(b_knows_not_c,axiom,
    ([#fool] @ ((~(white_spot @ c)) => ([#b] @ (~(white_spot @ c)))))).

%----Could we rather say ...
thf(others_know_not,axiom,(
    ! [X: wisemen] : ( [#X] @ 
      ! [HasNot: wisemen, Knows: wisemen] :
        ( ( ~ (white_spot @ HasNot)
          & HasNot != Knows )
       => ( [#Knows] @ ~ (white_spot @ HasNot) ) ) ) )).

%----a and b don't know their situation
thf(a_not_know,axiom,(
    [#fool] @ (~([#a] @ (white_spot @ a))))).

thf(b_not_know,axiom,(
    [#fool] @ (~([#b] @ (white_spot @ b))))).

%----Prove c knows white spot
thf(c_knows,conjecture,(
    [#c] @ (white_spot @ c))).

%------------------------------------------------------------------------------
