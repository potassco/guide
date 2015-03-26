#program preference(subset).
better(S) :- preference(S,subset),
  not holds(A),      holds'(A), preference(S,_,_,for(A),_),
  not holds(B) : not holds'(B), preference(S,_,_,for(B),_).

_error(M) :- 
  M = @cat("subset: 'name(",X,")' is not allowed."), 
  preference(S,subset), 
  preference(S,(N,_),_,name(X),_).

_error(M) :- 
  M = @cat("subset: weight '",W,"' is not allowed."),
  preference(S,subset), 
  preference(S,(N,_),_,X,W), W != ().

_error(M) :- 
  M = @cat("subset: element '",X,"' is not allowed."),
  preference(S,subset), 
  preference(S,(N,_),R,for(X),_), R != 1.
