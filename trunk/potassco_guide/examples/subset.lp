#program preference(subset).
better(P) :- preference(P,subset),
  not holds(X),      holds'(X), preference(P,_,_,for(X),_),
  not holds(Y) : not holds'(Y), preference(P,_,_,for(Y),_).
