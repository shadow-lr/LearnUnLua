-- 定义一个名为module的模块
--[[
创建一个模块很简单，就是创建一个 table，
然后把需要导出的常量、函数放入其中，最后返回这个 table 就行    
--]]
module = {}

module.constant = "这是一个常量"

function module.func1()
    io.write("这是一个公有函数!\n");
end

local function func2()
    print("这是一个私有函数!")
end

function module.func3()
    func2()
end

return module