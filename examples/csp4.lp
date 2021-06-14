machine(1).      machine(2).
task(a). duration(a,1,3). duration(a,2,4).
task(b). duration(b,1,1). duration(b,2,6).
task(c). duration(c,1,5). duration(c,2,5).

% jobs start at zero and must finish before a given bound
&dom { 0..B } = (J,M) :- duration(J,M,T), B=bound-T.

% a job has to be finished on a machine before starting on the next one.
&sum{ (J,M)+T } <= (J,M+1) :- duration(J,M,T), machine(M+1).

% the processing times of two jobs must not overlap on a machine
&disjoint { (J,M)@T : duration(J,M,T) } :- machine(M).
