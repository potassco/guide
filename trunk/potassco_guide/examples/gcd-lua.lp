#script (lua)

function gcd(a, b)
  if a == 0 then
    return b
  else 
    return gcd(b % a, a)
  end
end

#end.
