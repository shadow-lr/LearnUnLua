-- 赋值是改变一个变量的值和改变表域的最基本的方法
-- a = "hello" .. "world"

--[[ Lua可以对多个变量同时赋值，变量列表和值列表的各个元素用逗号分开，
赋值语句右边的值会依次赋给左边的变量

--]]
x = 5
a, b = 10, 2 * x
print(a, b)

x, y = y, x                 -- swap 'x' for 'y'
-- a[i], a[j] = a[j], a[i]     -- swap 'a[i]' for 'a[j]'

--[[
    当变量个数和值的个数不一致时，以变量个数为基础采取以下策略
    a. 变量个数 > 值的个数      按变量个数不足nil    
    b. 变量个数 < 值得个数      多余的值会被忽略
--]]

a, b, c = 0, 1
print(a, b, c)

a, b = a + 1 , b + 1 , b + 2
print(a, b)

a, b = b + 1 , a + 1 , b + 2
print(a, b)

a, b, c = 0
print(a, b, c)

function f()
    return 5, 123
end

-- 多值赋值经常用来交换变量，或将函数调用返回给变量：
a, b = f()
print(a, b)
-- f()返回两个值

-- 1. 避免命名冲突。
-- 2. 访问局部变量的速度比全局变量更快

a, b = 0, 1
a, b = a + 1, a + 1
print(a, b)             --> 1   1

a, b = 0, 1
a, b = b + 1, b + 1
print(a, b)             --> 2   2

a, b = 0, 1
a = a + 1
b = a + 1
print(a, b)             --> 1   2