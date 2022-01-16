%------------------------------------------------------------------------------
% File     : LOG001_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Normal modal logics
% Name     : Common elements for normal modal logics
% Version  : Especial.
% English  : 

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    : 

% Syntax   : TBA

% Comments : 
%------------------------------------------------------------------------------
%----Syntax extensions (additionally to classical connectives)
tff(box_type,type,'[.]' : $o > $o ).

tff(dia_type,type,'<.>' : $o > $o ).

%----Semantics of modal logics
tff(diamond,definition,
    ( <.>(P)
   == ~ [.](~ P) ) ).

% tff(propositional_tautologies,definition,P that are classical tautologies).

tff(modus_ponens,definition,
    ( $modus_ponens
   == ( [ P, P => Q]
    --> [Q] ) ) ).

%----If P is a theorem then [.](P) is a theorem too.
%----Here --> is global consequence.
tff(modal_necessitation,definition,
    ( $modal_necessitation
   == ( [P]
    --> [[.](P)] ) ) ).

%----Normal modal axiom schemes
tff(modal_axiom_K,definition,
    ( $modal_axiom_K
   == ( [.](A => B)
     => ( [.](A)
       => [.](B) ) ) ) ).

tff(modal_axiom_T,definition,
    ( $modal_axiom_T
   == ( [.](A)
     => A ) ) ).

tff(modal_axiom_B,definition,
    ( $modal_axiom_B
   == ( A
     => [.](<.>(A)) ) ) ).

tff(modal_axiom_D,definition,
    ( $modal_axiom_D
   == ( [.](A)
     => <.>(A) ) ) ).

tff(modal_axiom_4,definition,
    ( $modal_axiom_4
   == ( [.](A)
     => [.]([.](A)) ) ) ).

tff(modal_axiom_5,definition,
    ( $modal_axiom_5 
   == ( <.>(A)
     => [.](<.>(A)) ) ) ).

tff(modal_axiom_boxM,definition,
    ( $modal_axiom_boxM
   == [.]
        ( [.](A)
       => A ) ) ).

tff(modal_axiom_C,definition,
    ( $modal_axiom_C
   == ( <.>([.](A))
     => [.](<.>(A)) ) ) ).
      
tff(modal_axiom_C4,definition,
    ( $modal_axiom_C4
   == ( [.]([.](A))
     => [.](A) ) ) ).

tff(modal_axiom_CD,definition,
    ( $modal_axiom_CD
   == ( <.>(A)
     => [.](A) ) ) ).

tff(modal_axiom_G,definition,
    ( $modal_axiom_G
   == ( <.>([.](A))
     => [.](<.>(A)) ) ) ).

tff(modal_axiom_GL,definition,
    ( $modal_axiom_GL
   == ( [.](
          ( [.](A)
         => A ) )
     => [.](A) ) ) ).

tff(modal_axiom_Grz,definition,
    ( $modal_axiom_Grz
   == ( [.]
          ( [.]
              ( A
             => [.](A) )
         => A )
     => A ) ) ).

tff(modal_axiom_H,definition,
    ( $modal_axiom_H
   == ( [.]
          ( [.](A)
         => B )
      | [.]
          ( [.](B)
         => A ) ) ) ).

%------------------------------------------------------------------------------
