mytable = {}
print('mytable �������� : ', type(mytable))

mytable[1] = 'Lua'
mytable['wow'] = '�޸�ǰ'
print('mytable ����Ϊ 1 ��Ԫ���� ', mytable[1])
print('mytable ����Ϊ wow ��Ԫ���� ', mytable['wow'])

alternatetable = mytable

print('alternatetable ����Ϊ1 ��Ԫ���� ', alternatetable[1])
print('alternatetable ����Ϊ wow ��Ԫ���� ', alternatetable['wow'])

alternatetable['wow'] = '�޸ĺ�'
print('mytable ����Ϊ wow ��Ԫ���� ', mytable['wow'])
print('alternatetable ����Ϊ wow ��Ԫ���� ', alternatetable['wow'])

-- �ͷű���
alternatetable = nil
print('alternatetable �� ', alternatetable)

-- mytable ��Ȼ���Է���
print('mytable ��Ȼ���Է���')
print('mytable ����Ϊ wow ��Ԫ����', mytable['wow'])

mytable = nil
print('mytable �� ', mytable)

fruits = {'banana', 'orange', 'apple'}
print('���Ӻ���ַ��� ', table.concat(fruits))

-- ��", "���ӱ��е�Ԫ��
print('���Ӻ���ַ��� ', table.concat(fruits, ", "))

print('���Ӻ���ַ��� ', table.concat(fruits, ", ", 2, 3))

