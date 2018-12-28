#!/bin/env lua

--global variable, local variable, table variable
a = 5
local b = 6

function joke()
	c = 5
	local d = 6
end

joke()

print(c,d)

do
	local a = 6
	b = 7
	print(a, b)
end

print(a, b)

--assignment statement--
m, n = 10, 12
print(m, n)

m, n = n ,m
print(m, n)

--index--
t = {}
t["first"] = 1
t["second"] = 2
print(t["first"]) --index by []
print(t.second) --index by .
