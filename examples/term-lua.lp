#script (lua)

clingo = require("clingo")
F = clingo.Function

function g(c, f)
  n = c.name
  r = F(n, f.arguments)
  return r
end

#end.
