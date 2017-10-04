#script (lua)

function rng(a, b)
  ret = {}
  na = a.number
  nb = b.number
  for i = na,nb do
    table.insert(ret, i)
  end
  return ret
end

#end.
