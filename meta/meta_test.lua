--test table meta
Set = {}
local metatable = {} --元表
--根据参数列表中的值创建一个新的集合
function Set.new(l)
    local set = {}
    --将所有有该方法创建的集合的元表偶读指定到metatable
    setmetatable(set,metatale)
    for _, v in ipairs(l) do
        set[v] = true
    end
    return set
end

--取两个集合并集的函数
function Set.union(a,b)
    local res = Set.new()
    for k in pairs(a) do
        res[k] = true
    end
    for k in pairs(b) do
        res[k] = true
    end
    return res
end

--取两个集合交集的函数
function Set.intersection(a,b)
    local res = Set.new{}
    for k in pairs(a) do
        res[k] = b[k]
    end
    return res
end

function Set.tostring(set)
    local l = {}
    for e in pairs(set) do
        l[#l + 1] = e
    end
    return "{" .. table.concat(1,", ") .. "}";
end

function Set.print(s)
    print(Set.tostring(s))
end
--最后将元方法加入到元表中，这样当两个由Set.new方法创建出来的集合进行
--加运算时，将被重定向到Set.union方法，乘法运算将被重定向到Set.intersection
metatable.__add = Set.union
metatable.__mul = Set.intersection

--测试代码
s1 = Set.new{10,20,30,50}
s2 = Set.new{30,1}
s3 = s1 + s2
Set.print(s3)
Set.print(s3 * s1)
