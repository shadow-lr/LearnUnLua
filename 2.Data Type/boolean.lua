--Lua true���棩 �� false���٣���Lua �� false �� nil ������ false��
-- �����Ķ�Ϊ true������ 0 Ҳ�� true:

print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("false or nil is right")
else
    print("false �� nil ��Ϊ false")
end


if 0 then
    print("false �� nil ��Ϊ false")
else
    print("���� 0 Ϊ false")
end

print(type(2))
print(type(2.2))
print(type(0.2))
print(type(2e+1))
print(type(0.2e-1))
print(type(7.8263692594256e-06))

print(x == nil)
print(x == "nil")