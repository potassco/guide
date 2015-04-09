#program preference(pareto).
better(P) :- preference(P,pareto), 
             better(Q),    preference(P,_,_,name(Q),_),
             bettereq(R) : preference(P,_,_,name(R),_).

bettereq(P) :- preference(P,pareto), 
	           bettereq(Q) : preference(P,_,_,name(Q),_).

eq(P) :- preference(P,pareto), 
	     eq(Q) : preference(P,_,_,name(Q),_).

worseeq(P) :- preference(P,pareto), 
	          worseeq(Q) : preference(P,_,_,name(Q),_).

worse(P) :- preference(P,pareto), 
	        worse(Q),    preference(P,_,_,name(Q),_),
            worseeq(R) : preference(P,_,_,name(R),_).

unc(P) :- preference(P,pareto); 
          not bettereq(P); not worseeq(P).

_error(M) :- M = @cat("pareto: In preference element ",N," of preference statement ",P,", only naming atoms are allowed."), 
             preference(P,pareto), 
             preference(P,(N,_),_,for(X),_).

_error(M) :- M = @cat("pareto: In preference element ",N," of preference statement ",P,", weight '",W,"' appearing in '",W,"::",X,"' is not allowed."),
             preference(P,pareto), 
             preference(P,(N,_),_,X,W), W != ().

_error(M) :- M = @cat("pareto: In preference element ",N," of preference statement ",P,", element '",X,"' is not allowed."),
             preference(P,pareto), 
             preference(P,(N,_),R,for(X),_), R != 1.

