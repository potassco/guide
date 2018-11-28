% select a cycle#(\label{prg:fs:perm:begin}#)
1 { cycle(T,U) : task(U), U != T } 1 :- task(T).
1 { cycle(T,U) : task(T), U != T } 1 :- task(U).

% make sure the cycle is connected
reach(M) :- M = #min { T : task(T) }.
reach(U) :- reach(T), cycle(T,U).
:- task(T), not reach(T).

% select a start point
1 { start(T) : task(T) } 1.

% obtain an order
perm(T,U) :- cycle(T,U), not start(U).%%#(\label{prg:fs:perm:end}#)

% place tasks sequentially on machines#(\label{prg:fs:diff:begin}#)
seq((T,M),(T,M+1),D) :- task(T), duration(T,M,D), machine(M+1).%%#(\label{prg:fs:permutation:seq:machine}#)
seq((T1,M),(T2,M),D) :- perm(T1,T2), duration(T1,M,D).%%#(\label{prg:fs:permutation:seq:task}#)

&diff { T1-T2 } <= -D  :- seq(T1,T2,D).%%#(\label{prg:fs:permutation:seq}#)
&diff { 0-(T,M) } <= 0 :- duration(T,M,D).%%#(\label{prg:fs:diff:end}\label{prg:fs:null}#)

#show perm/2.
