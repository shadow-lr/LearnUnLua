--[[
for var=exp1,exp2,exp3 do  
    <执行体>  
end  
var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。    
--]]

for i = 10, 1, -2 do
    print(i)
end

function f(x)
    return x * 2
end


for i = 1, f(5) do
    print(i)
end

--[[
泛型for循环
--]]

a = {"one", "two", "three"}
--[[
    ipairs和pairs的区别
    pairs可以遍历到表中所有的key，对于key的类型没有要求，遇到nil时可以跳过，不会影响后面的遍历
    ipairs遍历时只能取key为整数值，遇到nil时终止遍历
--]]
for i, v in ipairs(a) do
    print(i, v)
end

testTable = 
{
    "js",
    "lua",
    "python",
    this = "c#",
    [1] = "c",
    "c++"
}

print("--------------------")
for i, v in pairs(testTable) do
    print(i, v)
end

print("--------------------")

for i, v in ipairs(testTable) do
    print(i, v)
end

days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

for i, v in ipairs(days) do
    print(v)
end