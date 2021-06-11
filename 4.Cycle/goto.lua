local a = 1

-- ::label:: print("---goto label---")
::label::
print('--- goto label ---')
a = a + 1
if a < 3 then
    goto label -- a 小于3的时候跳转到标签Label
end

-- 先走一次这个被标记的语句中
::s2::
do
    print(212312)
end

i = 4
::s1::
do
    print(i)
    i = i + 1
    print(i)
end

if i > 3 then
    os.exit()
end
goto s1