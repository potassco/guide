left     (7).
right         (2).
plus    ( L +  R ) :- left(L), right(R).
minus   ( L -  R ) :- left(L), right(R).
uminus  (   -  R ) :-          right(R).
times   ( L *  R ) :- left(L), right(R).
divide  ( L /  R ) :- left(L), right(R).
modulo  ( L \  R ) :- left(L), right(R).
absolute(|  -  R|) :-          right(R).
power   ( L ** R ) :- left(L), right(R).
bitand  ( L &  R ) :- left(L), right(R).
bitor   ( L ?  R ) :- left(L), right(R).
bitxor  ( L ^  R ) :- left(L), right(R).
bitneg  (   ~  R ) :-          right(R).
