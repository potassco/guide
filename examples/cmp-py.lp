#script (python)

from gringo import cmp

def max(a, b):
    if cmp(a, b) > 0:
        return a
    else:
        return b



#end.
