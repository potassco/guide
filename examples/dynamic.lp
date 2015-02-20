_heuristic(a,sign,1).
_heuristic(b,sign,1).
_heuristic(a,level,10).
{a,b}.
:- a, b.
{c}.
_heuristic(c,sign,1)  :- b.
_heuristic(c,sign,-1) :- not b.
