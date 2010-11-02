sym(f(a,1,2)).  sym(f(a,2,4)).  sym(f(a,b)).
sym( (a,1,2)).  sym( (a,2,4)).  sym( (a,b)).
unify1(X) :- f(a,X,X+1) := F, sym(F).
unify2(X) :-  (a,X,X+1) := T, sym(T).
