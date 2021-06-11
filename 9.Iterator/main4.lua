array = {'Google', 'Runoob'}

function elementIterator(collection)
    local index = 0
    local count = #collection
    return function()
        index = index + 1
        if (index <= count) then
            return collection[index]
        else
            return nil
        end
    end
end

for item in elementIterator(array) do
    print(item)
end
