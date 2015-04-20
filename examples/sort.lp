set(1..4).
next(X,Z) :- set(X), #false : X < Y, set(Y), Y < Z; set(Z), X < Z.
