#script (python)

import clingo
N = clingo.Number

def gcd(a, b):
  if a.number == 0:
    return b
  else:
    na = a.number
    nb = b.number
    nc = N(nb % na)
    return gcd(N(nc), a)



#end.
