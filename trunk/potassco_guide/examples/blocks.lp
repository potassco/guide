#base.
% Define
location(table).
location(X) :- block(X).
holds(F,0) :- init(F).
%
#cumulative t.
% Generate
1 { move(X,Y,t) : block(X) : location(Y) : X != Y } 1.
% Test
:- move(X,Y,t),
   1 { holds(on(A,X),t-1),
       holds(on(B,Y),t-1) : B != X : Y != table }.
% Define
holds(on(X,Y),t) :- move(X,Y,t).
holds(on(X,Z),t) :- holds(on(X,Z),t-1),
                    { move(X,Y,t) : Y != Z } 0.
%
#volatile t.
% Test
:- goal(F), not holds(F,t).
%
#base.
% Display
#hide.
#show move/3.
