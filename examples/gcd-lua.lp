#script (lua)

clingo = require("clingo")
N = clingo.Number

function gcd(a, b)
  if a.number == 0 then
    return b
  else
    na = a.number
    nb = b.number
    nc = nb % na
    return gcd(N(nc), a)
  end
end

#end.
