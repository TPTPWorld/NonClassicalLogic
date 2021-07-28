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
% Names    : ex5_multimodal_wiseman.p

% Status   : Theorem
% Rating   : ? v8.0.0
% Syntax   : TBA
% SPC      : TFN_THM_NEQ

% Comments : TFF, long connectives
%------------------------------------------------------------------------------
tff(simple_s5,logic,(
    $modal =
        [ $constants = $rigid,
          $quantification = $varying,
          $consequence = $local,
          $modalities = $modal_system_S5 ] )).

%----Type for the wise men
tff(agent_type,type,wiseman: $tType).

%----Three wise men
tff(man_a_type,type,a: wiseman).

tff(man_b_type,type,b: wiseman).

tff(man_c_type,type,c: wiseman).

tff(fool_type,type,fool: wiseman).

%---Property of a wiseman's hat: white_spot
tff(white_spot_type,type,white_spot: wiseman > $o).

%----At least one wiseman has a white spot
tff(at_least_one_white_spot,axiom,(
    {$knows:#fool}((white_spot(a)) | (white_spot(b)) | (white_spot(c))) )).

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
%----Simplifications exploiting the high expressivity of our language are
%----tempting and often more intuitive; but as long as such ad hoc formulations
%----are (i) not automated and (ii) not fully sanity checked (or semantically
%----verified) one has to be careful with claims that they realize the intended
%----meaning. The modified examples illustrate syntax aspects, they are not yet
%----claimed to be verified encodings of the wise men puzzle.

%----If one agent has a white spot all other agents can see this
tff(b_knows_a,axiom,(
    {$knows:#fool}(
      ( white_spot(a)
     => {$knows:#b}(white_spot(a)) ) ) )).

tff(c_knows_a,axiom,(
    {$knows:#fool}(
      ( white_spot(a)
     => {$knows:#c}(white_spot(a)) ) ) )).

tff(a_knows_a,axiom,(
    {$knows:#fool}(
      ( white_spot(b) 
     => {$knows:#a}(white_spot(b)) ) ) )).

tff(c_knows_b,axiom,(
    {$knows:#fool}(
      ( white_spot(b) 
     => {$knows:#c}(white_spot(b)) ) ) )).

tff(a_knows_c,axiom,(
    {$knows:#fool}(
      ( white_spot(c) 
     => {$knows:#a}(white_spot(c)) ) ) )).

tff(b_knows_c,axiom,(
    {$knows:#fool}(
      ( white_spot(c) 
     => {$knows:#b}(white_spot(c)) ) ) )).

%----Could we rather say ...
tff(others_know,axiom,(
    ! [X: wiseman] : 
      {$knows:#X}(
        ! [Has: wiseman, Knows: wiseman] :
          ( ( white_spot(Has)
            & Has != Knows )
         => {$knows:#Knows}(white_spot(Has) ) ) ) )).

%----Black spots are visible
tff(b_knows_not_a,axiom,(
    {$knows:#fool}(
      ( ~ white_spot(a) 
     => {$knows:#b}(~ white_spot(a)) ) ) )).

tff(c_knows_not_a,axiom,(
    {$knows:#fool}( 
      ( ~ white_spot(a) 
     => {$knows:#c}(~ white_spot(a)) ) ) )).

tff(a_knows_not_b,axiom,(
    {$knows:#fool}( 
      ( ~ white_spot(b) 
     => {$knows:#a}(~ white_spot(b)) ) ) )).

tff(c_knows_not_b,axiom,(
    {$knows:#fool}( 
      ( ~ white_spot(b) 
     => {$knows:#c}(~ white_spot(b)) ) ) )).

tff(a_knows_not_c,axiom,(
    {$knows:#fool}( 
      ( ~ white_spot(c) 
     => {$knows:#a}(~ white_spot(c)) ) ) )).

tff(b_knows_not_c,axiom,(
    {$knows:#fool}( 
      ( ~ white_spot(c) 
     => {$knows:#b}(~ white_spot(c)) ) ) )).

%----Could we rather say ...
tff(others_know_not,axiom,(
    ! [X: wiseman] : 
      {$knows:#X}(
        ! [HasNot: wiseman,Knows: wiseman] :
          ( ~ white_spot(HasNot)
            & HasNot != Knows )
         => {$knows:#Knows}(~ white_spot(HasNot)) ) )).

%----a and b don't know their situation
tff(a_not_know,axiom,(
    {$knows:#fool}(~ {$knows:#a}(white_spot(a))) )).

tff(b_not_know,axiom,(
    {$knows:#fool}(~ {$knows:#b}(white_spot(b))) )).

%----Prove c knows white spot
tff(c_knows,conjecture,(
    {$knows:#c}(white_spot(c)) )).

%------------------------------------------------------------------------------
