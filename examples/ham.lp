% Generate
{ cycle(X,Y) : edge(X,Y) } = 1 :- node(X).
{ cycle(X,Y) : edge(X,Y) } = 1 :- node(Y).
% Define
reached(Y) :- cycle(1,Y).
reached(Y) :- cycle(X,Y), reached(X).
% Test
:- node(Y), not reached(Y).
% Display
#show cycle/2.
