print(string.rep("123", 3))

for word in string.gmatch("Hello Lua user", "%a+") do
    print(word)
end

-- 将阿拉伯数字转换为语文汉字数字：
local function NumToCN(num)
    local size = #tostring(num)
    local CN = ""
    local StrCN = {"一","二","三","四","五","六","七","八","九"}
    for i = 1 , size do
        CN = CN .. StrCN[tonumber(string.sub(tostring(num), i , i))]
    end
    return CN
end
print(NumToCN(56665))

-- 去除字符串首尾的空格
function trim(s)
    return (string.gsub(s, '^%s*(.-)%s*$', '%1'))
end
string1 = '   RUNOOB        '
string2 = trim(string1)
print(string2)