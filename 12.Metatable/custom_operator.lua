-- 直接用#会有点问题 返回table的长度
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if (mn < k) then
            mn = k
        end
    end
    return mn
end

secondtable = {4, 5, 6}

mytable =
    setmetatable(
    {1, 2, 3},
    {
        -- 两个下划线
        __add = function(mytable, newtable)
            for i = 1, table_maxn(newtable) do
                table.insert(mytable, table_maxn(mytable) + 1, newtable[i])
            end
            return mytable
        end
    }
)

mytable = mytable + secondtable
for k, v in ipairs(mytable) do
    print(k, v)
end

