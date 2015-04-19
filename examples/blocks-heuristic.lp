time(1..lasttime).
location(table).
location(X) :- block(X).
holds(F,0) :- init(F).

% Generate
{ move(X,Y,T) : block(X), location(Y), X != Y } = 1  
                                            :- time(T).
% Test
:- move(X,Y,T), holds(on(A,X),T-1).
:- move(X,Y,T), holds(on(B,Y),T-1), B != X, Y != table.
% Define
moved(X,T) :- move(X,Y,T).
holds(on(X,Y),T) :- move(X,Y,T).
holds(on(X,Z),T) :- holds(on(X,Z),T-1), not moved(X,T).
                    
% Test
:- goal(F), not holds(F,lasttime).

% Display
#show move/3.
