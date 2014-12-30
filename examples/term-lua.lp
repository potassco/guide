#script (lua)

Fun = gringo.Fun

function g(c, f)
  r = Fun(c:name(), f:args())
  return r
end

#end.
