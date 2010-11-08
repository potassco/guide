p(1,2).  p(2,3).
q(X,Z) :- p(X,Y;;Y,Z).
r(X,Z) :- p(X,Y;Y,Z).
