set(1..3).
next(X,Z) :- 
  set(X), #false : X < Y, set(Y), Y < Z; set(Z).
