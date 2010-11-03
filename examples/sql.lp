#begin_lua
  local n    = 0
  local env  = luasql.sqlite3()
  local conn = env:connect("test.sqlite3")
  conn:execute("CREATE TABLE IF NOT EXISTS test (x, y)")
  conn:execute("CREATE UNIQUE INDEX IF NOT EXISTS \
                test_index ON test (x, y)")

  function query()
    local cur = conn:execute("SELECT * FROM test")
    local res = {}
    while true do
      local row = {}
      row = cur:fetch(row, "n")
      if row == nil then break end
      res[#res + 1] = Val.new(Val.FUNC, {tonumber(row[1]), tonumber(row[2])} )
    end
    cur:close()
    return res
  end

  function insert(name)
    Assignment.begin(name, 2)
    while Assignment.next() do
      if Assignment.isTrue() then
        local x = Assignment.args()[1]
        local y = Assignment.args()[2]
        local res = conn:execute("INSERT INTO test \
                                  VALUES(" .. x .. "," .. y .. ")")
        if res ~= nil then n = n + 1 end
      end
    end
  end

  function onBeginStep() insert("p") end
  function onModel()     insert("q") end
  function onEndStep()   print("inserted " .. n .. " values") end

#end_lua.

p(1,1).
p(X+1,Y) :- (X,Y) := @query().
#odd { q(X,Y+1) : p(X,Y) }.

