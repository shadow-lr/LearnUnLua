package.path = package.path .. ';D:\\repos\\LearnUnLua\\11.Require\\?.lua';
print("package.path : ", package.path)
local m = require("module")

print(m.constant)

m.func3()