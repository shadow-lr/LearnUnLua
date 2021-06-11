j = 2
for i = 2, 10 do
    for j = 2, (i / j), 2 do
        if (j > (i / j))    then
            print("iµÄÖµÎª: ", i)
        end
    end
end