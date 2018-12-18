#!/bin/env lua

--[[
--control process
--]]

--if else 
if (0)
then
	print("0 is true")
end

a = 9
b = 7
if (a > 10)
then
	print("a > 10")
	if (b < 10)
	then
		print("b < 10")
	end
else
	print("a <= 10")
end

--while
i = 0
while (i < 3) do
	i = i + 3
end

--for
--数值for循环
for i = 1, 3 do 
	print("i = " .. i)
end

for i = 1, 4, 2 do 
	print("i = " .. i)
end

for i = 4, 1, -2 do 
	print("i = " .. i)
end
--泛型for循环
a = {"one", "two", "three"}
for k, v in pairs(a) do
	print(k .. " : " .. v)
end

for k, v in ipairs(a) do
	print(k .. " : " .. v)
end

--repeat ... until
c = 1
repeat
	print("c = "..c)
	c = c + 1
until(c > 3)
