function square(iteratorMaxCount, currentNumber)
    print("iteratorMaxCount : "..iteratorMaxCount, "currentNumber : "..currentNumber)
    if currentNumber < iteratorMaxCount then
        -- 会影响调用处的这个值
        currentNumber = currentNumber + 1
        return currentNumber, currentNumber * currentNumber
    end
end

--  一个 迭代器 函数， 一个 状态， 一个 迭代器的初始值。
for i, n in square, 3, 0 do
    print(i, n)
end

function iter (a, i)
    i = i + 1
    local v = a[i]
    if v then
       return i, v
    end
end
 
function ipairs (a)
    return iter, a, 0
end