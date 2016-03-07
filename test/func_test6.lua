function avg(...)
    result = 0
    local arg={...}
    for i,v in ipairs(arg) do
        result = result + v
    end
    print("total " .. #arg .. "s")
    return result/#arg
end

print("avg:",avg(10,5,6,7,8))
