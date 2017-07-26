#heuristic a. [ 1, sign]
#heuristic b. [ 1, sign]
#heuristic a. [10,level]
{a;b}.
:- a, b.
{c}.
#heuristic c :     b. [ 1,sign]
#heuristic c : not b. [-1,sign]
