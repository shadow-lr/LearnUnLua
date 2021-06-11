--[[
   表(table)其实是一个"关联数组"(associative arrays)
   数组的索引可以是数字、字符串或表类型
   如下示例 ["key1", "val1"], ["key2", "val2"], [1, "asd"], [2, "val3"]
   直接获取table的数据进行遍历发现数据不像list那样是直接索引取出排序好的
--]]
tab1 = {key3 = "va3l1", "asd", key2 = "val2", "val3"}

for k, v in pairs(tab1) do
    print(type(k).. "-" .. type(v))
    print(k .. "-" .. v)
end


-- tab1.key1 = nil

-- for k, v in pairs(tab1) do
--     print(k .. "-" .. v)
-- end

-- if (type(type(x)) == string) then
--     print("you are right")
-- end