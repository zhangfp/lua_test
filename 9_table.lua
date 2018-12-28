#!/bin/env lua

fruits = {"banana", "orange", "apple"}

--table.concat
print(table.concat(fruits))
print(table.concat(fruits, ","))
print(table.concat(fruits, ",", 2, 3))

--table.insert and table.remove
table.insert(fruits, "mango")
print(fruits[4])

table.insert(fruits, 2, "grapes")
print(fruits[2])

print(table.remove(fruits))
print(table.remove(fruits, 3))

--table.sort
fruits = {"banana", "orange", "apple", "grapes"}
for k, v in pairs(fruits)
do
	print(k, v)
end

table.sort(fruits)

for k, v in pairs(fruits)
do
	print(k, v)
end

print(#fruits)

--table.maxn
tb1 = {[1] = 1, [2] = 24, [6] = 16}
print(table.maxn(tb1))
