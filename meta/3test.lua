mytable = setmetatable({10,20,30}, {
    __tostring = function(mytable)
        sum = 0
        for k, v in pairs(mytable) do
            sum = sum + v
        end
        return "sum: ".. sum
    end
})
print(mytable)
