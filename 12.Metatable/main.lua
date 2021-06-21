mytable = {}
mymetatable = {}

setmetatable(mytable, mymetatable)
-- mytable = setmetatable({}, {})

-- ��������û��ֵ��
-- ��ôLua�ͻ�Ѱ�Ҹ�table��metatable���ٶ���metatable���е�__index ��
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
��������Ԫ���� __newindex���ڶ���������(newkey)��ֵʱ(mytable.newkey = "��ֵ2"),
�����Ԫ�������������и�ֵ����������Ѵ��ڵ�������(key1),
�����и�ֵ����������Ԫ���� __newindex.
--]]
mymetatable2 = {}
mytable2 = setmetatable({key1 = "value1"}, {__newindex = mymetatable2})

mytable2.newkey = "��ֵ2"
-- nil ��ֵ2
print(mytable2.newkey, mymetatable2.newkey)

-- ��ֵ1 nil
mytable2.key1 = "��ֵ1"
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

-- ʹ�� rawset ����������
-- rawget�������Ժ���Ԫ���__index���ã� ֻ��table �в���
mytable3.key1 = 'new value'
mytable3.key2 = 4

print(mytable3.key1, mytable3.key2)


