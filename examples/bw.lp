time(1..lasttime).
location(B) :- block(B).
location(table).

{ move(B,L,T) : block(B) , location(L) } = 1 :- time(T).

on(B,L,T)   :- move(B,L,T).
non(B,L1,T) :- on(B,L,T), L<L1, location(L1).
on(B,L,T+1) :- on(B,L,T), not non(B,L,T+1), time(T). 
