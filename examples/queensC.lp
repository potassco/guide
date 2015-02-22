1 $<= $queen(1..n) $<= n.

$queen(X) $!= $queen(Y) :- X=1..n, Y=1..n, X<Y.
X $+ $queen(Y) $!= Y $+ $queen(X) :- X=1..n, Y=1..n, X<Y.
X $+ $queen(X) $!= Y $+ $queen(Y) :- X=1..n, Y=1..n, X<Y.
