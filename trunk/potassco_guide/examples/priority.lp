_heuristic(b,sign,1).
_heuristic(a,true,10).
{a,b}.
:- a, b.
{c}.
_heuristic(c,sign,1,10 ).
_heuristic(c,sign,-1,20) :- not b.
