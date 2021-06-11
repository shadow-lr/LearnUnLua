-- -- table 去重
-- table = {1, 2, 3, 10, 9, 9, 8, 8, 7, 4, 5, 3, 3, 5, 6}
-- function table_unique(t)
--     local rnt = {}
--     local check = {}
--     for i, v in pairs(t) do
--         if not check[v] then
--             rnt[i] = v
--             check[v] = 1
--         end
--     end
--     return rnt
-- end

-- for val in pairs(table_unique(table)) do
--     print(val)
-- end

t =
{
    [1] = {A = 5, B = 2},
    [2] = {A = 1, B = 3},
    [3] = {A = 3, B = 6},
    [4] = {A = 7, B = 1},
    [5] = {A = 2, B = 9},
}
table.sort(t, function(a, b) return a.A > b.A; end)

for i, v in pairs(t) do
    print(i, v["A"], v["B"])
end