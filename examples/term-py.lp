#script (python)

from gringo import Fun

def g(c, f):
  n = c.name()
  r = Fun(n, f)
  return r


#end.
