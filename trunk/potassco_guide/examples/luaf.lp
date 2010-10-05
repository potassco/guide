#begin_lua

function gcd(a, b)
  if a == 0 then return b
  else return gcd(b % a, a)
  end
end

function rng(a, b)
  r = {}
  for x = a, b do
    table.insert(r, x)
  end
  return r
end

#end_lua.

p(15,25).
gcd(X,Y,@gcd(X,Y)) :- p(X,Y).
rng(X,Y,@rng(X,Y)) :- p(X,Y).
