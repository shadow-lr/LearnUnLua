-- 除了 ^ 和 .. 外所有的二元运算符都是左连接的。
a = 2
b = 3
c = 2

print(a^b^c)

tab1 = {"1", "2"}
print("tab1的长度"..#tab1)

tab2 = {key1 = "2", asd = "123123", "3"}
print("tab2的长度"..#tab2)

-- 下标越过 1 位以上，长度还是为 2：
tab3 = {}
tab3[1] = "1"
tab3[2] = "3"
tab3[5] = "4"
print("tab3的长度"..#tab3)

tab4 = {}
tab4[1] = "1"
tab4[2] = "3"
tab4[4] = "4"
print("tab4的长度"..#tab4)

tab5  = {1, nil, 3}
print("tab5的长度"..#tab5)

