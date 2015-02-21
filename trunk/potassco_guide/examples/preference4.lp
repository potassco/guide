#preference(p1,subset){                                                                                             
  a(X) : dom(X)                                                                                                    
}.
#preference(p3,less(cardinality)){                                                                                             
  b(X) : dom(X)                                                                                                    
}.
#preference(p4,pareto){
  name(p1);
  name(p3)
}.
#optimize(p4).
