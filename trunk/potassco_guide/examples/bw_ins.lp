#const lasttime=3.
block(a). block(b). block(c).
on(b,table,0).
on(c,a,0).
on(a,table,0).

:- not on(a,b,lasttime).
:- not on(b,c,lasttime).
:- not on(c,table,lasttime).
