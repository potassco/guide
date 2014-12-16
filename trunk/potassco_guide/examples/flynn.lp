    flies(X) :- bird(X), not not flies(X).
not flies(X) :- penguin(X).
