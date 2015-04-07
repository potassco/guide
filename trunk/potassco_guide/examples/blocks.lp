#include <incmode>.

#program base.
% Define
location(table).
location(X) :- block(X).
holds(F,0) :- init(F).

#program step(t).
% Generate
{ move(X,Y,t) : block(X), location(Y), X != Y } = 1.
% Test
:- move(X,Y,t), holds(on(A,X),t-1).
:- move(X,Y,t), holds(on(B,Y),t-1), B != X, Y != table.
% Define
moved(X,t) :- move(X,Y,t).
holds(on(X,Y),t) :- move(X,Y,t).
holds(on(X,Z),t) :- holds(on(X,Z),t-1), not moved(X,t).
                    
#program check(t).
% Test
:- query(t), goal(F), not holds(F,t).

% Display
#show move/3.
