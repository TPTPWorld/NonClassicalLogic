%------------------------------------------------------------------------------
include('S1-0-EQS.sys').
%------------------------------------------------------------------------------
%fof(modus_ponens,conjecture,
%    ! [X,Y] : 
%      ( ( is_a_theorem(X)
%        & is_a_theorem(implies(X,Y)) )
%     => is_a_theorem(Y) )  ).

fof(necessary_a_gives_a,conjecture,
    ! [X] :
      ( is_a_theorem(necessarily(X))
     => is_a_theorem(X) )  ).

% fof(eq_eqs,conjecture,
%     ! [X,Y] :
%       ( is_a_theorem(strict_equiv(X,Y))
%      => is_a_theorem(equiv(X,Y)) )  ).
%------------------------------------------------------------------------------
