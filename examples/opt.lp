{ hotel(1..5) } = 1.
star(1,5). cost(1,170).
star(2,4). cost(2,140).
star(3,3). cost(3,90).
star(4,3). cost(4,75).  main_street(4).
star(5,2). cost(5,60).
noisy :- hotel(X), main_street(X).
#maximize { Y@1,X : hotel(X), star(X,Y) }.
#minimize { Y/Z@2,X : hotel(X), cost(X,Y), star(X,Z) }.
:~ noisy. [ 1@3 ]
