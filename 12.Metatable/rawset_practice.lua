local father = {
    sayhello = function()
        print('hello')
    end
}

local temp = {
    __index = father,
    __newindex = function()
        print(key .. '字段是不存在的，不允许给它赋值！')
    end
}

son = {
    little_prince = 1
}

-- rawget函数可以忽略元表的__index作用， 只从table 中查找
-- 把temp设置为son的元表 如果temp中有 __metatable 键值，setmetatable会失败

setmetatable(son, temp)
print(rawget(son, "The Emperor's New Clothes"))
print(rawget(son, 'little_prince'))

rawset(son, "The Emperor's New Clothes", 10)
rawset(
    son,
    'sayHello',
    function()
        print('-------------------------')
    end
)

print(son["The Emperor's New Clothes"])
son.sayHello()
