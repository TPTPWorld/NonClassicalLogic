%--------------------------------------------------------------------------
% File     : SYM055+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : 
% Version  : Especial.
% English  : 

% Refs     : [FM98] M. Fitting, R. L. Mendelsohn. First-Order Modal Logic. 
%            Kluwer, 1998.
% Source   : [FM98]
% Names    : 

% Status   :      varying      cumulative   constant   
%             K   Theorem      Unsolved     Theorem       v1.1
%             D   Non-Theorem  Non-Theorem  Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         0.50          v1.1
%             D   0.75         0.83         0.33          v1.1
%             T   0.25         0.50         0.33          v1.1
%             S4  0.25         0.50         0.33          v1.1
%             S5  0.25         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : 
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,(
    ! [X] : qmltpeq(X,X)   )).

qmf(symmetry,axiom,(
    ! [X,Y] : 
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) )   )).

qmf(transitivity,axiom,(
    ! [X,Y,Z] : 
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) )   )).
     
qmf(p_substitution_1,axiom,(
    ! [A,B] : 
      ( ( qmltpeq(A,B)
        & p(A) )
     => p(B) )   )).

qmf(con,conjecture,
((! [X] : (#box : (? [Y] : (qmltpeq(X,Y) & (? [X] : p(X)))))) => ((#dia : (? [X] : (p(X)))) => (? [X] : (#dia : (p(X))))))).
