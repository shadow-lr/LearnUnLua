tab4 = {}
tab4[1] = "1"
tab4[2] = nil
tab4[3] = "2"
tab4[4] = nil
print("tab4�ĳ���", #tab4)

--tab4�ĳ���    1

tab5 = {}
tab5[1] = "1"
tab5[2] = nil
tab5[3] = "2"
tab5[4] = "4"
print("tab5�ĳ���", #tab5)

--tab5�ĳ���    4

tab6 = {1, nil, 3}
print("tab6�ĳ���", #tab6)

--tab6�ĳ���    3

tab6 = {1, nil, 3, nil}
print("tab6�ĳ���", #tab6)

--tab6�ĳ���    1
-- lua table �ĳ��Ƚ��� https://www.runoob.com/w3cnote/lua-table-length-analysis.html
-- local t = {1, 2, 3, 4, 5, nil, nil}
local t = {1, 2, nil, nil, 5}
print("t�ĳ��� : ".. #t)

t[6] = 1
print("t�ĳ��� : ".. #t)

t[7] = 1
print("t�ĳ��� : ".. #t)

t[8] = 1
print("t�ĳ��� : ".. #t)

t[9] = 1
print("t�ĳ��� : ".. #t)

-- ��Ԫ���ʽ
local isAppel = true
print(isAppel and "ƻ��" or "��")

-- table ��������� node hash �������
-- t->node �� table �� hash
