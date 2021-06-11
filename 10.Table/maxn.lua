function table_maxn(t)
    local mn = 1
    local maxn = t[mn]

    for i, v in ipairs(t) do
        if v > maxn then
            maxn = v
            mn = i
        end
    end
    return mn, maxn
end

nums = {1, 6, 32, 6, 4, 1, 2, 6}
mn, maxn = table_maxn(nums)
print(mn, maxn)