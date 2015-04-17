course( 1,1,5; 1,2,5               ).
course( 2,1,4; 2,2,4               ).
course( 3,1,6;        3,3,6        ).
course( 4,1,3;        4,3,3; 4,4,3 ).
course( 5,1,4;               5,4,4 ).
course(        6,2,2; 6,3,2        ).
course(        7,2,4; 7,3,4; 7,4,4 ).
course(               8,3,5; 8,4,5 ).


3 { enroll(C) : course(C,S,H) } 6.

:-   #count { C,S :     enroll(C), course(C,S,H) } 10.
:- 2 #count { C,2 : not enroll(C), course(C,2,H) }.
:- 6 #count { C,3 :     enroll(C), course(C,3,H);
              C,4 :     enroll(C), course(C,4,H) }.

hours(C,H) :- course(C,S,H).
max_hours(20).

:- not M-2 #sum { H,C : enroll(C), hours(C,H) } M, max_hours(M).
:-   #min { H,C : enroll(C), hours(C,H) } 2.
:- 6 #max { H,C : enroll(C), hours(C,H) }.

courses(N) :- N = #count { C : enroll(C) }.
hours(N) :- N = #sum { H,C : enroll(C), hours(C,H) }.


#show enroll/1.
#show courses/1.
#show hours/1.
