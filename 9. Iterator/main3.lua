function allwords()
    local line = io.read()
    local pos = 1
    return function()
        while line do
            local start, e = string.find(line, "%w+", pos)
            if start then
                pos = e + 1
                return line.sub(line, start, e)
            else
                pos = 1
                line = io.read()
            end
        end
        return nil
    end
end

-- 创建迭代器
for word in allwords() do
    print(word)
end

-- 上述的迭代器需要为每一个新的循环创建一个新的 closure，开销很大

-- 翻转链表
-- local function getnext(list, node)
--     if not node then
--         return list
--     else
--         return node.next
--     end
-- end

-- function traverse(list)
--     return getnext, list, nil
-- end

-- list = nil
-- for line in io.lines() do
--     list = {next = list, value = line}
-- end

-- for node in traverse(list) do
--     print(node.value)
-- end