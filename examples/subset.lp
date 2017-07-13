#program preference(subset).
better(S) :- preference(S,subset),
  not holds(A),      holds'(A), preference(S,_,_,for(A),_),
  not holds(B) : not holds'(B), preference(S,_,_,for(B),_).

bettereq(S) :- preference(S,subset),
  not holds(B) : not holds'(B), preference(S,_,_,for(B),_).

eq(P) :- preference(P,subset), bettereq(P), worseeq(P).

worseeq(S) :- preference(S,subset),
  not holds'(B) : not holds(B), preference(S,_,_,for(B),_).

worse(S) :- preference(S,subset),
  not holds'(A),      holds(A), preference(S,_,_,for(A),_),
  not holds'(B) : not holds(B), preference(S,_,_,for(B),_).

unc(P) :- preference(P,subset), not bettereq(P), not worseeq(P).

error(("preference:",P,
       ": error: preference specification error, type '",
       "subset",
       "' does not allow naming atoms.")) :- 
  preference(P,subset), preference(P,_,_,name(_),_).

error(("preference:",P,
       ": error: preference specification error, type '",
       "subset",
       "' does not allow weights.")) :- 
  preference(P,subset), preference(P,_,_,_,W), W != ().

error(("preference:",P,
       ": error: preference specification error, type '",
       "subset",
       "' does not allow using >>.")) :- 
  preference(P,subset), preference(P,_,R,_,_), R > 1.

error(("preference:",P,
       ": error: preference specification error, type '",
       "subset",
       "' does not allow sets.")) :- 
  preference(P,subset), 
  preference(P,E,S,X,_), preference(P,E,S,Y,_), X > Y.

error(("preference:",P,
       ": error: preference specification error, type '",
       "subset",
       "' does not allow using '||'.")) :-
  preference(P,subset), preference(P,_,0,_,_).

