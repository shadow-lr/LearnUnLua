html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">ï¿½ï¿½ï¿½ï¿½Ì³ï¿?</a>
</body>
</html>
]]
print(html)

-- ï¿½Ú¶ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö·ï¿½ï¿½ï¿½ï¿½Ï½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ï¿½Lua ï¿½á³¢ï¿½Ô½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ö·ï¿½ï¿½ï¿½×ªï¿½ï¿½Ò»ï¿½ï¿½ï¿½ï¿½ï¿½ï¿?:
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

-- µ±×Ö·û´®ÖÐº¬ÓÐÖÐÎÄ×Ö·ûÊ±£¬Ã¿¸öÖÐÎÄ×Ö·ûÕ¼¾ÝÁ½¸ö×Ö½Ú£º
print(#"ä½ å¥½ä¸–ç•Œ")