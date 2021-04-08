%------------------------------------------------------------------------------
include('PCHilbert.sys').
include('PCLuka.sys').
include('PCPrincipia.sys').
include('PCRosser.sys').
%------------------------------------------------------------------------------
% fof(eqv_necessarily,axiom,(
%     ! [X,Y] : 
%       ( is_a_theorem(equiv(X,Y))
%      => is_a_theorem(equiv(necessarily(X),necessarily(Y))) ) )).

%----Easy from PCHilbert
%fof(eqv_refl,conjecture,(
%    ! [X] : is_a_theorem(equiv(X,X)) )).

%----Easy from PCHilbert
%fof(eqv_not,conjecture,(
%    ! [X,Y] : 
%      ( is_a_theorem(equiv(X,Y))
%     => is_a_theorem(equiv(not(X),not(Y))) ) )).

fof(eqv_and_1,axiom,(
    ! [X1,X2,Y] : 
      ( is_a_theorem(equiv(X1,X2))
     => is_a_theorem(equiv(and(X1,Y),and(X2,Y))) ) )).

fof(eqv_and_2,axiom,(
    ! [X1,X2,Y] : 
      ( is_a_theorem(equiv(X1,X2))
     => is_a_theorem(equiv(and(Y,X1),and(Y,X2))) ) )).

%----Can be proved with eqv_and_1 and eqv_and_2 as lemmas with PCHilbert
%----Cannot be proved from PCHilbert
fof(eqv_and,conjecture,(
    ! [X1,X2,Y1,Y2] : 
      ( ( is_a_theorem(equiv(X1,X2))
        & is_a_theorem(equiv(Y1,Y2)) )
     => is_a_theorem(equiv(and(X1,Y1),and(X2,Y2))) ) )).

%----Easy from PCHilbert
%fof(eqv_subs,conjecture,(
%    ! [X,Y] : 
%      ( ( is_a_theorem(X)
%        & is_a_theorem(equiv(X,Y)) )
%     => is_a_theorem(Y) ) )).

%------------------------------------------------------------------------------
