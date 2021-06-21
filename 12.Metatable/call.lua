-- 自定义计算表中最大键值函数 table_maxn，即计算表的元素个数
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- 定义元方法__call
mytable =
    setmetatable(
    {10, 100, 200},
    {
        __call = function(mytable, newtable)
            sum = 0
            for i = 1, table_maxn(mytable) do
                sum = sum + mytable[i]
            end
            for i = 1, table_maxn(newtable) do
                sum = sum + newtable[i]
            end
            return sum
        end
    }
)
newtable = {10, 20, 30}
print(mytable(newtable))

mytable =
    setmetatable(
    {10, 20, 30},
    {
        __tostring = function(mytable)
            sum = 0
            for k, v in pairs(mytable) do
                sum = sum + v
            end
            return '表所有元素的和为 ' .. sum
        end
    }
)
print(mytable)
