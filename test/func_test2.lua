function fac2(tab, fun)
    for k, v in pairs(tab) do
        print(fun(k,v))
    end
end

tab = { key1 = "var1", key2 = "var2" }
fac2(tab, function(key, val)
    return key .. "= " .. val
end )
