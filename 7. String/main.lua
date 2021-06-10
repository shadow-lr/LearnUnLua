print(string.rep("123", 3))

for word in string.gmatch("Hello Lua user", "%a+") do
    print(word)
end

-- ������������ת��Ϊ���ĺ������֣�
local function NumToCN(num)
    local size = #tostring(num)
    local CN = ""
    local StrCN = {"һ","��","��","��","��","��","��","��","��"}
    for i = 1 , size do
        CN = CN .. StrCN[tonumber(string.sub(tostring(num), i , i))]
    end
    return CN
end
print(NumToCN(56665))

-- ȥ���ַ�����β�Ŀո�
function trim(s)
    return (string.gsub(s, '^%s*(.-)%s*$', '%1'))
end
string1 = '   RUNOOB        '
string2 = trim(string1)
print(string2)