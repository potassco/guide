#program preference(less(cardinality)).
better(P) :- preference(P,less(cardinality)), 
  1 #sum { -1,X : holds(X),  preference(P,_,_,for(X),_); 
            1,X : holds'(X), preference(P,_,_,for(X),_)}.

bettereq(P) :- preference(P,less(cardinality)), 
  0 #sum { -1,X : holds(X),  preference(P,_,_,for(X),_); 
            1,X : holds'(X), preference(P,_,_,for(X),_)}.

eq(P) :- preference(P,less(cardinality)), 
  0 #sum { -1,X : holds(X),  preference(P,_,_,for(X),_); 
            1,X : holds'(X), preference(P,_,_,for(X),_)}0. 

worseeq(P) :- preference(P,less(cardinality)), 
  #sum { -1,X : holds(X),  preference(P,_,_,for(X),_); 
          1,X : holds'(X), preference(P,_,_,for(X),_)}0.

worse(P) :- preference(P,less(cardinality)), 
  #sum { -1,X : holds(X),  preference(P,_,_,for(X),_); 
          1,X : holds'(X), preference(P,_,_,for(X),_)}-1.

_error(M) :- M = @cat("less(cardinality): In preference element ",N," of preference statement ",P,", naming atom 'name(",X,")' is not allowed."), 
             preference(P,less(cardinality)), 
             preference(P,(N,_),_,name(X),_).

_error(M) :- M = @cat("less(cardinality): In preference element ",N," of preference statement ",P,", weight '",W,"' appearing in weighted boolean formula '",W,"::",X,"' is not allowed."),
             preference(P,less(cardinality)), 
             preference(P,(N,_),_,X,W), W != ().

_error(M) :- M = @cat("less(cardinality): In preference element ",N," of preference statement ",P,", element '",X,"' is not allowed."),
             preference(P,less(cardinality)), 
             preference(P,(N,_),R,for(X),_), R != 1.


