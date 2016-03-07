--自定义计算表中最大值函数 table_maxn
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

--两表相加操作
mytable = setmetatable({3,5,4},{
    __add = function(mytable, newtable)
    for i = 1, table_maxn(newtable) do
        table.insert(mytable, table_maxn(mytable)+1,newtable[i])
    end
    return mytable
end
})
secondtable = {1,2,6}

mytable = mytable + secondtable
for k, v in ipairs(mytable) do
    print(k,v)
end
