function max(num1, num2)
    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

print("��ֵ�Ƚ����ֵΪ ", max(10, 4))
print("��ֵ�Ƚ����ֵΪ ", max(5, 6))

myprint = function(param)
    print("���Ǵ�ӡ���� -  ##", param, "##")
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end

myprint(10)
add(2, 5, myprint)

s, e = string.find("www.runoob.com", "runoob")
print(s, e)

-- �෵��ֵ
function maximum (a)
    local mi = 1    --  ���ֵ����
    local m = a[mi] --  ���ֵ
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({8, 10, 23, 12, 5}))

-- �ɱ����
function add(...)
    local sum = 0
    for val in ipairs(...) do
        sum = sum + val
    end
    print("�ܹ�����" .. #... .. "����")
    -- return sum/#...
    return sum/select("#", ...)
end

print("ƽ��ֵΪ : " .. add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}))

function test(...)
    print(select(2, ...))
end
print(test(1,3,4,5,6,7,8,9))

-- ��Ҫ�̶��������Ͽɱ����
function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...));
end

fwrite("runoob\n")
-- c���Ե�printf����ʽ����˴�����һ��
fwrite("%d%d\n", 1, 2)
do
    function foo(...)
        for i = 1, select("#", ...) do
            local arg = select(i, ...);
            print("arg", arg)
        end
    end

    foo(1,2,3,4)
end

-- �෵��ֵ��Ҫע������
--[[ �෵��ֵ�ĺ����ڸ�ֵʱ�����
������ֻ�з������ж���֮����Ǹ�������ѷ���ֵչ��
--]]
function add()
    return 1, 0
end

local b, c, d, e = add(), add()

print(b)
print(c)
print(d)
print(e)