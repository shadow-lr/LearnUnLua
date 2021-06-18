local father = {
    sayhello = function()
        print("hello")
    end
}

local temp = {
    __index = father,
    __newindex = function()
        print(key .. "字段是不存在的，不允许给它赋值！")
    end
}

son = {
    car = 1
}

-- 把temp设置为son的元表 如果temp中有 __metatable 键值，setmetatable会失败
setmetatable(son, temp)
print(rawset(son, "The Emperor's New Clothes", "book"))
print(rawset(son, "little prince", "book"))

rawset(son, "house", 10)
rawset(son, "sayHello", function()
    print("-------------------------")
end)

print(son.house)
son.sayHello()
