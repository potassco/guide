% Default
#const n = 3.
% Generate
{ color(X,1..n) } = 1 :- node(X).
% Test
:- edge(X,Y), color(X,C), color(Y,C).
