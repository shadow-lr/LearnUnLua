-- �Զ�������������ֵ���� table_maxn����������Ԫ�ظ���
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn < k then
            mn = k
        end
    end
    return mn
end

-- ����Ԫ����__call
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
            return '������Ԫ�صĺ�Ϊ ' .. sum
        end
    }
)
print(mytable)
