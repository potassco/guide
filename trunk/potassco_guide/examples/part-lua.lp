#script (lua)

add = table.insert

function main(prg)
  parts = {}
  add(parts, {"base",{}})
  add(parts, {"a",{1,3}})
  prg:ground(parts)
  prg:solve()
end

#end.
