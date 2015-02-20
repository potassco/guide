1 $<= $queen(1..n) $<= n.

#disjoint { X : $queen(X)      : X=1..n }.
#disjoint { X : $queen(X) $+ X : X=1..n }.
#disjoint { X : $queen(X) $- X : X=1..n }.
