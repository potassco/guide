fly(tweety)     :- bird(tweety), not neg_fly(tweety).
fly(tux)        :- bird(tux),    not neg_fly(tux).
neg_fly(tweety) :- bird(tweety), not     fly(tweety).
neg_fly(tux)    :- bird(tux),    not     fly(tux).
neg_fly(tweety) :- penguin(tweety).
neg_fly(tux)    :- penguin(tux).
