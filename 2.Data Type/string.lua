html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">����̳�?</a>
</body>
</html>
]]
print(html)

-- �ڶ�һ�������ַ����Ͻ�����������ʱ��Lua �᳢�Խ���������ַ���ת��һ������?:
print("2" + 6)
print("2.3e-2" + 6)
print("2" + "6")
print("2 + 6")
print("-2e2" * "6")
-- print("error" + 1)
--[[
D:\Lua\lua.exe: d:\repos\LearnUnLua\2. Data Type\string.lua:17: attempt to add a 'string' with a 'number'
stack traceback:
        [C]: in metamethod 'add'
        d:\repos\LearnUnLua\2. Data Type\string.lua:17: in main chunk
        [C]: in ?
--]]

print("a" .. "b")
print(type(157 .. 428))
len = "www.baidu.com"
print(#len)

-- ���ַ����к��������ַ�ʱ��ÿ�������ַ�ռ�������ֽڣ�
print(#"你好世界")