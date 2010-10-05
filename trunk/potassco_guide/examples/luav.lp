#begin_lua
function f(x)
  if     Val.type(x) == Val.NUM  then 
    return Val.new(Val.FUNC, { "num", x })
  elseif Val.type(x) == Val.ID   then
    return Val.new(Val.FUNC, { "str", x })
  elseif Val.type(x) == Val.FUNC then
    local f = Val.new(Val.FUNC, x:name(), x:args())
    return Val.new(Val.FUNC, { "fun", f })
  elseif Val.type(x) == Val.INF  then
    return Val.new(Val.FUNC, { "inf", Val.new(Val.INF) })
  elseif Val.type(x) == Val.SUP  then
    return Val.new(Val.FUNC, { "sup", Val.new(Val.SUP) })
  end
end

function g(a,b)
  return Val.cmp(a, b)
end

function h(x)
  return '"' .. tostring(x) .. '"'
end
#end_lua.

p(1). p(a). p(#supremum).
p(f(d(x),1)). p(#infimum).

type(X,Y)  :- (X,Y) := @f(Z), p(Z).
leq(X,Y)   :- p(X), p(Y), @g(X,Y) <= 0.
str(@h(X)) :- p(X).

