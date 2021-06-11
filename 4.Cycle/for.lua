--[[
for var=exp1,exp2,exp3 do  
    <执行体>  
end  
var 从 exp1 变化到 exp2，每次变化以 exp3 为步长递增 var，并执行一次 "执行体"。exp3 是可选的，如果不指定，默认为1。    
--]]

--[[
for 首先会先对 in 后面的表达式求值，这些表达式应返回 3 个值供 for 保存
迭代器函数
恒定状态
控制变量的初值
如果变量列表中的第一个元素（即控制变量）的返回值为 nil，则循环终止
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