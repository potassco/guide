#base.
p(5).
#cumulative k.
1 { p(k,1..P) : p(P) } 1.
:- p(X,P), p(Y,P), X <= Y, p(X+Y,P).
:- not p(k,X) : X = 1..k, k <= P, p(P).
