    fly(X) :- bird(X), not neg_fly(X).
neg_fly(X) :- bird(X), not     fly(X).
neg_fly(X) :- penguin(X).
