function max(num1, num2)
    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

print("两值比较最大值为 ", max(10, 4))
print("两值比较最大值为 ", max(5, 6))

myprint = function(param)
    print("这是打印函数 -  ##", param, "##")
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end

myprint(10)
add(2, 5, myprint)

s, e = string.find("www.runoob.com", "runoob")
print(s, e)

-- 多返回值
function maximum (a)
    local mi = 1    --  最大值索引
    local m = a[mi] --  最大值
    for i, val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

print(maximum({8, 10, 23, 12, 5}))

-- 可变参数
function add(...)
    local sum = 0
    for val in ipairs(...) do
        sum = sum + val
    end
    print("总共传入" .. #... .. "个数")
    -- return sum/#...
    return sum/select("#", ...)
end

print("平均值为 : " .. add({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}))

function test(...)
    print(select(2, ...))
end
print(test(1,3,4,5,6,7,8,9))

-- 需要固定参数加上可变参数
function fwrite(fmt, ...)
    return io.write(string.format(fmt, ...));
end

fwrite("runoob\n")
-- c语言的printf的形式就如此处样例一样
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

-- 多返回值需要注意的情况
--[[ 多返回值的函数在赋值时的情况
，仅仅只有放在所有逗号之后的那个函数会把返回值展开
--]]
function add()
    return 1, 0
end

local b, c, d, e = add(), add()

print(b)
print(c)
print(d)
print(e)