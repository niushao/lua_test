function max(a)
    local mi =1
    local m = a[mi]
    for i,val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print("value\tindex")
print(max({8,3,5,67,3,5}))
