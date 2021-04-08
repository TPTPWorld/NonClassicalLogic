%------------------------------------------------------------------------------
include('PCHilbert.sys').
%------------------------------------------------------------------------------
fof(eqv_necessarily,axiom,(
    ! [X,Y] : 
      ( is_a_theorem(equiv(X,Y))
     => is_a_theorem(equiv(necessarily(X),necessarily(Y))) ) )).

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

fof(subs_of_eqv,conjecture,(
    ! [X,Y] : 
      ( is_a_theorem(equiv(X,Y))
     => X = Y ) )).
%------------------------------------------------------------------------------
