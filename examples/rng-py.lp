#script (python)

from clingo import Number

def rng(a, b):
  na = a.number
  nb = b.number + 1

  for x in range(na, nb):
      yield Number(x)


#end.
