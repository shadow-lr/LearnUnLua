local tab1 = {}

local tab2 = {"apple", "pear", "orange", "grape"}
local tab3 = {"apple", "pear", "orange", "grape"}
print(type(tab2))
print(tab2)
print(tab3)

-- for i, k in pairs(tabs) do
--     print(k)
-- end

a = {}
a["key"] = "value"
key  = 10
a[key] = 20
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

local tab4 = {"apple", "pear", "orange", "grap"}
for key, val in pairs(tab4) do
    print(key, val)
end

-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])

--[[
如上代码输出结果存在一定规律，"Hello"、"World"、"Good"、"Bye"是表中的值，
在存储时是按照顺序存储的，并且不同于其他脚本语言，Lua是从1开始排序的，
因此，使用pairs遍历打印输出时，会先按照顺序输出表的值，然后再按照键值对的--[键的哈希值]--打印。
--]]
tab = {"Hello", "World", a = 1, b = 2, z = 3, x = 10, y = 20, "Good", "Bye"}
for k, v in pairs(tab) do
    print(k.. " " .. v)
end
