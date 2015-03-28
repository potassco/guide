#script (lua)

cmp = gringo.cmp

function max(a, b)
  if cmp(a, b) > 0 then
    return a
  else
    return b
  end
end

#end.
