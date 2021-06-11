for i = 1, 3 do
    if i <= 2 then
        print(i, "yes continue")
        goto continue
    end
    print(i, "no continue")
    ::continue::
    print([[i'm end]])
end

for i = 10, 1, -1 do
    repeat
        if i == 5 then
            print("continue code here")
            break
        end
        print(i, "loop code here")
    until true
end