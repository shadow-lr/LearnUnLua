mytable = {}
mymetatable = {}

setmetatable(mytable, mymetatable)
-- mytable = setmetatable({}, {})

-- 如果这个键没有值，
-- 那么Lua就会寻找该table的metatable（假定有metatable）中的__index 键
other = { foo = 3 }
t = setmetatable({}, {__index = other})

print(t.foo)

mytable = setmetatable({key1 = "value1"},{
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2, mytable.key3)

mytable = setmetatable({key1 = "value1"}, { __index = { key2 = "metatablevalue" } })
print(mytable.key1,mytable.key2)

--[[
表设置了元方法 __newindex，在对新索引键(newkey)赋值时(mytable.newkey = "新值2"),
会调用元方法，而不进行赋值。而如果对已存在的索引键(key1),
则会进行赋值，而不调用元方法 __newindex.
--]]
mymetatable2 = {}
mytable2 = setmetatable({key1 = "value1"}, {__newindex = mymetatable2})

mytable2.newkey = "新值2"
-- nil 新值2
print(mytable2.newkey, mymetatable2.newkey)

-- 新值1 nil
mytable2.key1 = "新值1"
print(mytable2.key1, mymetatable2.key1)

mytable3 =
    setmetatable(
    {key1 = 'value1'},
    {
        __newindex = function(mytable3, key, value)
            rawset(mytable3, key, '\\' .. value .. '\\')
        end
    }
)

-- 使用 rawset 函数来更新
-- rawget函数可以忽略元表的__index作用， 只从table 中查找
mytable3.key1 = 'new value'
mytable3.key2 = 4

print(mytable3.key1, mytable3.key2)


