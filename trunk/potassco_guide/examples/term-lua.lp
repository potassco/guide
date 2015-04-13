#script (lua)

Fun = gringo.Fun

function g(c, f)
  n = c:name()
  r = Fun(n, f:args())
  return r
end

#end.
