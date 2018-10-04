#preference(p7,cp){
  a(X) >> not a(X)             : dom(X);
  b(X) >> not b(X) ||     a(X) : dom(X);
  not b(X) >> b(X) || not a(X) : dom(X)
}.
#optimize(p7).
