#heuristic b. [ 1,sign]
#heuristic a. [10,true]
{a;b}.
:- a, b.
{c}.
#heuristic c.         [ 1@10,sign]
#heuristic c : not b. [-1@20,sign]
