mytable = {}
print('mytable 的类型是 : ', type(mytable))

mytable[1] = 'Lua'
mytable['wow'] = '修改前'
print('mytable 索引为 1 的元素是 ', mytable[1])
print('mytable 索引为 wow 的元素是 ', mytable['wow'])

alternatetable = mytable

print('alternatetable 索引为1 的元素是 ', alternatetable[1])
print('alternatetable 索引为 wow 的元素是 ', alternatetable['wow'])

alternatetable['wow'] = '修改后'
print('mytable 索引为 wow 的元素是 ', mytable['wow'])
print('alternatetable 索引为 wow 的元素是 ', alternatetable['wow'])

-- 释放变量
alternatetable = nil
print('alternatetable 是 ', alternatetable)

-- mytable 仍然可以访问
print('mytable 仍然可以访问')
print('mytable 索引为 wow 的元素是', mytable['wow'])

mytable = nil
print('mytable 是 ', mytable)

fruits = {'banana', 'orange', 'apple'}
print('连接后的字符串 ', table.concat(fruits))

-- 用", "链接表中的元素
print('连接后的字符串 ', table.concat(fruits, ", "))

print('连接后的字符串 ', table.concat(fruits, ", ", 2, 3))

