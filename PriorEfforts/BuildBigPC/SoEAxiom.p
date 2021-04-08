%------------------------------------------------------------------------------
include('PCHilbert.sys').
% include('PCLuka.sys').
% include('PCPrincipia.sys').
include('OperatorDefns.ax').
%------------------------------------------------------------------------------
fof(equiv_necessarily,axiom,(
    ! [X,Y] : 
      ( is_a_theorem(equiv(X,Y))
     => is_a_theorem(equiv(necessarily(X),necessarily(Y))) ) )).

%----Easy from PCHilbert
fof(equiv_refl,lemma,(
    ! [X] : is_a_theorem(equiv(X,X)) )).

%----Easy from PCHilbert
fof(equiv_not,lemma,(
    ! [X,Y] : 
      ( is_a_theorem(equiv(X,Y))
     => is_a_theorem(equiv(not(X),not(Y))) ) )).

% fof(equiv_and_1,lemma,(
%     ! [X1,X2,Y] : 
%       ( is_a_theorem(equiv(X1,X2))
%      => is_a_theorem(equiv(and(X1,Y),and(X2,Y))) ) )).
% 
% fof(equiv_and_2,lemma,(
%     ! [X1,X2,Y] : 
%       ( is_a_theorem(equiv(X1,X2))
%      => is_a_theorem(equiv(and(Y,X1),and(Y,X2))) ) )).

%----Can be proved with equiv_and_1 and equiv_and_2 as lemmas with PCHilbert
%----But including PCLuka and PCPrincipia loses the proof - distraction
%----Cannot be proved from PCHilbert
fof(equiv_and,lemma,(
    ! [X1,X2,Y1,Y2] : 
      ( ( is_a_theorem(equiv(X1,X2))
        & is_a_theorem(equiv(Y1,Y2)) )
     => is_a_theorem(equiv(and(X1,Y1),and(X2,Y2))) ) )).

%----Easy from PCHilbert
fof(equiv_subs,lemma,(
    ! [X,Y] : 
      ( ( is_a_theorem(X)
        & is_a_theorem(equiv(X,Y)) )
     => is_a_theorem(Y) ) )).

%----This captures the result Florian refers to in his ESCoR paper in 
%----Section 3, which is (as I read) based on [Por80][Tho68][Lew18].
fof(make_subs_of_equiv,axiom,
    ( ( ! [X] : is_a_theorem(equiv(X,X))
      & ! [X,Y] : 
          ( is_a_theorem(equiv(X,Y))
         => is_a_theorem(equiv(not(X),not(Y))) )
      & ! [X1,X2,Y1,Y2] : 
          ( ( is_a_theorem(equiv(X1,X2))
            & is_a_theorem(equiv(Y1,Y2)) )
         => is_a_theorem(equiv(and(X1,Y1),and(X2,Y2))) )
      & ! [X,Y] : 
          ( ( is_a_theorem(X)
            & is_a_theorem(equiv(X,Y)) )
         => is_a_theorem(Y) )
      & ! [X,Y] : 
          ( is_a_theorem(equiv(X,Y))
         => is_a_theorem(equiv(necessarily(X),necessarily(Y))) ) )
   => ! [X,Y] : 
        ( is_a_theorem(equiv(X,Y))
       => X = Y ) )).

fof(subs_of_equiv,conjecture,(
    ! [X,Y] : 
      ( is_a_theorem(equiv(X,Y))
     => X = Y ) )).
%------------------------------------------------------------------------------
