    fly(X) :- bird(X), not not fly(X).
not fly(X) :- penguin(X).
