sym(f(a,1,2)). sym(f(a,1,3)). sym(f(b,d)).
sym((a,1,2)).  sym((a,1,3)).  sym((b,d)).

unifyf(X) :- f(a,X,X+1) := F, sym(F).
unifyt(X) :-  (a,X,X+1) := T, sym(T).
