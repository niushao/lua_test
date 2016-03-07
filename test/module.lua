--module.lua
module = {}
module.constant = "this is static"

function module.func1()
    io.write("this is function\n")
end

local function func2()
    print("this is a local function")
end

function module.func3()
    func2()
end

return module
