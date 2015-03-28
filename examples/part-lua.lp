#script (lua)

add = table.insert

function main(prg)
  p = {}
  add(p, {"base",{}})
  add(p, {"a",{1,3}})
  prg:ground(p)
  prg:solve()
end

#end.
