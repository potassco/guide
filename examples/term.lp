p(f, (1,2)).
p(g, (a,b)).
g(X,Y,@g(X,Y)) :- p(X,Y).
