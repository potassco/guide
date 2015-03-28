#script (lua)

function rng(a, b)
  ret = {}
  for i = a,b do
    table.insert(ret, i)
  end
  return ret
end

#end.

