function values(t)
    local i = 0
    -- 在 lua 中通常将迭代器表示为函数
    return function()
        i = i + 1
        return t[i]
    end
end

t = {123, 444, 555, 7123}
iter = values(t) -- 创建迭代器
while true do
    local element = iter()-- 调用迭代器
    if element == nil then    
        break
    end
    print(element)
end

function values(t)
    local idx = 0;
    return function()
        idx = idx + 1;
        return t[idx];
    end
end

val = {5, 6, 7, 8, 10, 123}
-- 泛型for
--[[
泛型 for 记录了每一次迭代循环
它在内部保存了迭代器函数，因此不需要 iter 变量
它在每次新迭代时调用迭代器，并在迭代器返回 nil 时循环结束
--]]
for element in values(val) do
    print(element)
end