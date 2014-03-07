-- #JustLuaThings
-- GITHUB PLEASE RECOGNIZE MY LUA ADDICTION
local file, msg
    repeat
      print "enter a file name:"
      local name = io.read()
      if not name then return end   -- no input
      file, msg = io.open(name, "r")
      if not file then print(msg) end
    until file


function newStack ()
      return {""}   -- starts with an empty string
    end
    
    function addString (stack, s)
      table.insert(stack, s)    -- push 's' into the the stack
      for i=table.getn(stack)-1, 1, -1 do
        if string.len(stack[i]) > string.len(stack[i+1]) then
          break
        end
        stack[i] = stack[i] .. table.remove(stack)
      end
    end
