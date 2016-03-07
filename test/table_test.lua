#!/usr/local/bin/lua
-- test table
a = {}
a["key"] = "value"
key = 10
a[key] = 11
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. ":" .. v)
end
