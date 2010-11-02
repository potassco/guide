left       (7).
right             (2).
plus       (L  +   R ) :- left(L), right(R).
minus      (L  -   R ) :- left(L), right(R).
uminus     (     - R ) :-          right(R).
times      (L  *   R ) :- left(L), right(R).
divide1    (L  /   R ) :- left(L), right(R).
divide2    (L #div R ) :- left(L), right(R).
divide3    (#div(L,R)) :- left(L), right(R).
modulo1    (L  \   R ) :- left(L), right(R).
modulo2    (L #mod R ) :- left(L), right(R).
modulo3    (#mod(L,R)) :- left(L), right(R).
absolute1  (    |- R|) :-          right(R).
absolute2  (#abs(- R)) :-          right(R).
power1     (L  **  R ) :- left(L), right(R).
power2     (L #pow R ) :- left(L), right(R).
power2     (#pow(L,R)) :- left(L), right(R).
bitand     (L  &   R ) :- left(L), right(R).
bitor      (L  ?   R ) :- left(L), right(R).
bitxor     (L  ^   R ) :- left(L), right(R).
bitneg     (     ~ R ) :-          right(R).
