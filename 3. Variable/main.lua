a = 5               -- 全局变量
local b = 5         -- 局部变量


function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c, d)         --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量(从声明地方判断变量是局部还是全局)重新赋值
    print(a, b);    -- 6 6
end

print(a, b)         --> 5 6

tbl = {a = "aa"}
print(tbl['a'])
print(tbl.a)

local tbl2 = {"a", "b", "c", "d"}
for key, val in pairs(tbl2) do
    print("key", key)
end