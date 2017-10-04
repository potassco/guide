#script (python)

import clingo
F = clingo.Function

def g(c, f):
  n = c.name
  r = F(n, f.arguments)
  return r


#end.
