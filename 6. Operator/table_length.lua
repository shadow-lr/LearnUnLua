tab4 = {}
tab4[1] = "1"
tab4[2] = nil
tab4[3] = "2"
tab4[4] = nil
print("tab4的长度", #tab4)

--tab4的长度    1

tab5 = {}
tab5[1] = "1"
tab5[2] = nil
tab5[3] = "2"
tab5[4] = "4"
print("tab5的长度", #tab5)

--tab5的长度    4

tab6 = {1, nil, 3}
print("tab6的长度", #tab6)

--tab6的长度    3

tab6 = {1, nil, 3, nil}
print("tab6的长度", #tab6)

--tab6的长度    1
-- lua table 的长度解析 https://www.runoob.com/w3cnote/lua-table-length-analysis.html
-- local t = {1, 2, 3, 4, 5, nil, nil}
local t = {1, 2, nil, nil, 5}
print("t的长度 : ".. #t)

t[6] = 1
print("t的长度 : ".. #t)

t[7] = 1
print("t的长度 : ".. #t)

t[8] = 1
print("t的长度 : ".. #t)

t[9] = 1
print("t的长度 : ".. #t)

-- 三元表达式
local isAppel = true
print(isAppel and "苹果" or "梨")

-- table 是由数组和 node hash 部分组成
-- t->node 是 table 的 hash
