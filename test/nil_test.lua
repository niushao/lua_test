#!/usr/local/bin/lua
--[[
test nil delete table no value
--]]

tab1 = { key1 = "a", key2 = "b", "c" }
for k, v in pairs(tab1) do
    print(k .. "_" .. v)
end

tab1.key1 = nil 
for k, v in pairs(tab1) do
    print(k .. "_" .. v)
end
