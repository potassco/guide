#preference(p1,subset){                                                                                             
  a(X) : gr(X)                                                                                                    
}.
#preference(p3,less(cardinality)){                                                                                             
  b(X) : gr(X)                                                                                                    
}.
#preference(p5,lexico){
  2 :: name(p1);
  1 :: name(p3)
}.
#optimize(p5).
