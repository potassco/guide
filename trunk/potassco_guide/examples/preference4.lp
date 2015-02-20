#preference(p1,subset){                                                                                             
  a(X) : gr(X)                                                                                                    
}.
#preference(p3,less(cardinality)){                                                                                             
  b(X) : gr(X)                                                                                                    
}.
#preference(p4,pareto){
  name(p1);
  name(p3)
}.
#optimize(p4).
