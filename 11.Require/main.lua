package.path = package.path .. ';D:\\repos\\LearnUnLua\\11.Require\\?.lua';
print("package.path : ", package.path)

-- 如果找过目标文件，则会调用 package.loadfile 来加载模块。否则，就会去找 C 程序库
require("module")

print(module["constant"])

module.func3()