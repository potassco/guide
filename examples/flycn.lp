 fly(X) :- bird(X), not -fly(X).
-fly(X) :- bird(X), not  fly(X).
-fly(X) :- penguin(X).
