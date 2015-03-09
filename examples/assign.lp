num(1).  num(2).  num(3).  num(4).  num(5).
squares(XX,YY) :-
        XX = X*X, Y*Y = YY, Y'-1 = Y,
        Y'*Y' = XX+YY, num(X), num(Y), X < Y.
